"""Windows tray utility for toggling the foreground window as always-on-top."""

import ctypes
from ctypes import wintypes
import sys


if sys.platform != "win32":
    raise SystemExit("This script only works on Windows.")

user32 = ctypes.WinDLL("user32", use_last_error=True)
shell32 = ctypes.WinDLL("shell32", use_last_error=True)
kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)

# Keep window and icon handles as pointers on 64-bit Windows.
user32.GetForegroundWindow.restype = wintypes.HWND
user32.DefWindowProcW.restype = ctypes.c_ssize_t
user32.DefWindowProcW.argtypes = [
    wintypes.HWND, wintypes.UINT, wintypes.WPARAM, wintypes.LPARAM,
]
user32.CreateWindowExW.restype = wintypes.HWND
user32.CreateWindowExW.argtypes = [
    wintypes.DWORD, wintypes.LPCWSTR, wintypes.LPCWSTR, wintypes.DWORD,
    ctypes.c_int, ctypes.c_int, ctypes.c_int, ctypes.c_int,
    wintypes.HWND, wintypes.HMENU, wintypes.HINSTANCE, wintypes.LPVOID,
]
user32.LoadIconW.restype = wintypes.HICON
kernel32.GetModuleHandleW.restype = wintypes.HINSTANCE

# Window and message constants.
WM_DESTROY = 0x0002
WM_COMMAND = 0x0111
WM_HOTKEY = 0x0312
WM_CONTEXTMENU = 0x007B
WM_LBUTTONUP = 0x0202
WM_RBUTTONUP = 0x0205
WM_TRAYICON = WM_USER = 0x0400 + 1

# Hotkey and menu constants.
MOD_ALT = 0x0001
MOD_CONTROL = 0x0002
HOTKEY_TOGGLE = 1
HOTKEY_HOME = 2
HOTKEY_QUIT = 3
MENU_TOGGLE = 100
MENU_SETTINGS_TOGGLE = 401
MENU_SETTINGS_HOME = 402
MENU_SETTINGS_QUIT = 403
MENU_QUIT = 300
TPM_RETURNCMD = 0x0100
TPM_RIGHTBUTTON = 0x0002
MF_STRING = 0x0000
MF_SEPARATOR = 0x0800
MF_CHECKED = 0x0008
MF_POPUP = 0x0010

WS_OVERLAPPED = 0x00000000
WS_CAPTION = 0x00C00000
WS_SYSMENU = 0x00080000
WS_VISIBLE = 0x10000000
BS_DEFPUSHBUTTON = 0x00000001
WM_CLOSE = 0x0010
WM_KEYDOWN = 0x0100
WM_SYSKEYDOWN = 0x0104
VK_CONTROL = 0x11
VK_SHIFT = 0x10
VK_MENU = 0x12
VK_ESCAPE = 0x1B
ID_SAVE = 1
ID_CANCEL = 2

VK_F8 = 0x77
VK_F9 = 0x78
VK_F10 = 0x79

HWND_TOPMOST = wintypes.HWND(-1)
HWND_NOTOPMOST = wintypes.HWND(-2)
SWP_NOSIZE = 0x0001
SWP_NOMOVE = 0x0002
SWP_NOACTIVATE = 0x0010
SW_HIDE = 0
SW_SHOW = 5
NIF_MESSAGE = 0x0001
NIF_ICON = 0x0002
NIF_TIP = 0x0004
NIM_ADD = 0x00000000
NIM_DELETE = 0x00000002
IDI_APPLICATION = 32512


class POINT(ctypes.Structure):
    _fields_ = [("x", wintypes.LONG), ("y", wintypes.LONG)]


class NOTIFYICONDATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("hWnd", wintypes.HWND),
        ("uID", wintypes.UINT),
        ("uFlags", wintypes.UINT),
        ("uCallbackMessage", wintypes.UINT),
        ("hIcon", wintypes.HICON),
        ("szTip", wintypes.WCHAR * 128),
        ("dwState", wintypes.DWORD),
        ("dwStateMask", wintypes.DWORD),
        ("szInfo", wintypes.WCHAR * 256),
        ("uTimeoutOrVersion", wintypes.UINT),
        ("szInfoTitle", wintypes.WCHAR * 64),
        ("dwInfoFlags", wintypes.DWORD),
    ]


WNDPROC = ctypes.WINFUNCTYPE(ctypes.c_long, wintypes.HWND,
                              wintypes.UINT, wintypes.WPARAM,
                              wintypes.LPARAM)


class WNDCLASSEX(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.UINT),
        ("style", wintypes.UINT),
        ("lpfnWndProc", WNDPROC),
        ("cbClsExtra", ctypes.c_int),
        ("cbWndExtra", ctypes.c_int),
        ("hInstance", wintypes.HINSTANCE),
        ("hIcon", wintypes.HICON),
        ("hCursor", wintypes.HCURSOR),
        ("hbrBackground", wintypes.HBRUSH),
        ("lpszMenuName", wintypes.LPCWSTR),
        ("lpszClassName", wintypes.LPCWSTR),
        ("hIconSm", wintypes.HICON),
    ]


def set_always_on_top(hwnd, enabled):
    insert_after = HWND_TOPMOST if enabled else HWND_NOTOPMOST
    user32.SetWindowPos(hwnd, insert_after, 0, 0, 0, 0,
                        SWP_NOMOVE | SWP_NOSIZE | SWP_NOACTIVATE)


def add_tray_icon(hwnd):
    icon = user32.LoadIconW(None, IDI_APPLICATION)
    data = NOTIFYICONDATA()
    data.cbSize = ctypes.sizeof(data)
    data.hWnd = hwnd
    data.uID = 1
    data.uFlags = NIF_MESSAGE | NIF_ICON | NIF_TIP
    data.uCallbackMessage = WM_TRAYICON
    data.hIcon = icon
    data.szTip = "Always on Top"
    shell32.Shell_NotifyIconW(NIM_ADD, ctypes.byref(data))


def remove_tray_icon(hwnd):
    data = NOTIFYICONDATA()
    data.cbSize = ctypes.sizeof(data)
    data.hWnd = hwnd
    data.uID = 1
    shell32.Shell_NotifyIconW(NIM_DELETE, ctypes.byref(data))


def main():
    topmost_windows = set()
    hidden_window = [None]
    hotkey_values = {
        HOTKEY_TOGGLE: (MOD_CONTROL | MOD_ALT, VK_F8),
        HOTKEY_HOME: (0, 0x24),
        HOTKEY_QUIT: (MOD_CONTROL | MOD_ALT, VK_F10),  # Ctrl+Alt+F10
    }
    class_name = "AlwaysOnTopTrayWindow"

    def hotkey_name(modifiers, vk):
        parts = []
        if modifiers & MOD_CONTROL:
            parts.append("Ctrl")
        if modifiers & MOD_ALT:
            parts.append("Alt")
        if modifiers & 0x0004:
            parts.append("Shift")
        names = {
            VK_CONTROL: "Ctrl",
            VK_SHIFT: "Shift",
            VK_MENU: "Alt",
            0x24: "Home",
            0x08: "Backspace",
            0x09: "Tab",
            0x0D: "Enter",
            0x20: "Space",
            0x1B: "Escape",
            0x25: "Left",
            0x26: "Up",
            0x27: "Right",
            0x28: "Down",
            0x51: "Q",
            VK_F8: "F8",
            VK_F9: "F9",
            VK_F10: "F10",
        }
        if 0x70 <= vk <= 0x87:
            names[vk] = "F{}".format(vk - 0x6F)
        elif 0x30 <= vk <= 0x39 or 0x41 <= vk <= 0x5A:
            names[vk] = chr(vk)
        parts.append(names.get(vk, "key 0x{:02X}".format(vk)))
        return "+".join(parts)

    def change_hotkey(hotkey_id):
        captured = [None]
        dialog = [None]
        status = [None]
        action_names = {
            HOTKEY_TOGGLE: "Toggle focused window always-on-top",
            HOTKEY_HOME: "Hide/show focused window",
            HOTKEY_QUIT: "Quit the program",
        }

        @ctypes.WINFUNCTYPE(ctypes.c_long, wintypes.HWND, wintypes.UINT,
                             wintypes.WPARAM, wintypes.LPARAM)
        def dialog_proc(hwnd, message, wparam, lparam):
            if message in (WM_KEYDOWN, WM_SYSKEYDOWN):
                if wparam == VK_ESCAPE:
                    user32.DestroyWindow(hwnd)
                    return 0
                modifiers = 0
                if user32.GetKeyState(VK_CONTROL) & 0x8000:
                    modifiers |= MOD_CONTROL
                if user32.GetKeyState(VK_MENU) & 0x8000:
                    modifiers |= MOD_ALT
                if user32.GetKeyState(VK_SHIFT) & 0x8000:
                    modifiers |= 0x0004
                captured[0] = (modifiers, wparam)
                user32.SetWindowTextW(status[0], "Selected: " +
                                       hotkey_name(modifiers, wparam))
                return 0
            if message == WM_COMMAND:
                command = wparam & 0xffff
                if command == ID_SAVE and captured[0] is not None:
                    dialog[0] = captured[0]
                    user32.DestroyWindow(hwnd)
                elif command == ID_CANCEL:
                    user32.DestroyWindow(hwnd)
                return 0
            if message == WM_CLOSE:
                user32.DestroyWindow(hwnd)
                return 0
            return user32.DefWindowProcW(hwnd, message, wparam, lparam)

        dialog_class = "AlwaysOnTopHotkeyDialog"
        dialog_wndclass = WNDCLASSEX()
        dialog_wndclass.cbSize = ctypes.sizeof(WNDCLASSEX)
        dialog_wndclass.lpfnWndProc = dialog_proc
        dialog_wndclass.hInstance = kernel32.GetModuleHandleW(None)
        dialog_wndclass.lpszClassName = dialog_class
        user32.RegisterClassExW(ctypes.byref(dialog_wndclass))
        hwnd = user32.CreateWindowExW(
            0, dialog_class, "Change hotkey",
            WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU,
            300, 300, 430, 190, None, None,
            dialog_wndclass.hInstance, None)
        dialog[0] = None
        current_modifiers, current_vk = hotkey_values[hotkey_id]
        user32.CreateWindowExW(
            0, "STATIC", action_names[hotkey_id], WS_VISIBLE,
            20, 15, 380, 24, hwnd, None, dialog_wndclass.hInstance, None)
        user32.CreateWindowExW(
            0, "STATIC", "Current hotkey: " +
            hotkey_name(current_modifiers, current_vk), WS_VISIBLE,
            20, 42, 380, 24, hwnd, None, dialog_wndclass.hInstance, None)
        user32.CreateWindowExW(0, "STATIC", "Press the new key combination:",
                               WS_VISIBLE, 20, 70, 380, 24, hwnd, None,
                               dialog_wndclass.hInstance, None)
        status[0] = user32.CreateWindowExW(0, "STATIC", "Selected: none",
                                            WS_VISIBLE, 20, 98, 380, 24,
                                            hwnd, None, dialog_wndclass.hInstance,
                                            None)
        user32.CreateWindowExW(0, "BUTTON", "Save", WS_VISIBLE | BS_DEFPUSHBUTTON,
                               230, 135, 80, 28, hwnd, ID_SAVE,
                               dialog_wndclass.hInstance, None)
        user32.CreateWindowExW(0, "BUTTON", "Cancel", WS_VISIBLE,
                               320, 135, 80, 28, hwnd, ID_CANCEL,
                               dialog_wndclass.hInstance, None)
        user32.ShowWindow(hwnd, SW_SHOW)
        user32.SetFocus(hwnd)
        message = wintypes.MSG()
        while user32.IsWindow(hwnd) and user32.GetMessageW(
                ctypes.byref(message), None, 0, 0) > 0:
            user32.TranslateMessage(ctypes.byref(message))
            user32.DispatchMessageW(ctypes.byref(message))

        if dialog[0] is not None:
            modifiers, vk = dialog[0]
            old_modifiers, old_vk = hotkey_values[hotkey_id]
            user32.UnregisterHotKey(main_hwnd[0], hotkey_id)
            if user32.RegisterHotKey(main_hwnd[0], hotkey_id, modifiers, vk):
                hotkey_values[hotkey_id] = (modifiers, vk)
            else:
                user32.RegisterHotKey(main_hwnd[0], hotkey_id,
                                      old_modifiers, old_vk)

    main_hwnd = [None]

    @ctypes.WINFUNCTYPE(ctypes.c_long, wintypes.HWND, wintypes.UINT,
                         wintypes.WPARAM, wintypes.LPARAM)
    def window_proc(hwnd, message, wparam, lparam):
        if message == WM_HOTKEY:
            if wparam == HOTKEY_TOGGLE:
                target = user32.GetForegroundWindow()
                if target:
                    enabled = target not in topmost_windows
                    set_always_on_top(target, enabled)
                    if enabled:
                        topmost_windows.add(target)
                    else:
                        topmost_windows.discard(target)
            elif wparam == HOTKEY_HOME:
                if hidden_window[0] and user32.IsWindow(hidden_window[0]):
                    user32.ShowWindow(hidden_window[0], SW_SHOW)
                    hidden_window[0] = None
                else:
                    target = user32.GetForegroundWindow()
                    if target and target != hwnd:
                        hidden_window[0] = target
                        user32.ShowWindow(target, SW_HIDE)
            elif wparam == HOTKEY_QUIT:
                user32.DestroyWindow(hwnd)
            return 0

        if message == WM_TRAYICON and lparam in (WM_LBUTTONUP, WM_RBUTTONUP,
                                                  WM_CONTEXTMENU):
            show_menu(hwnd)
            return 0

        if message == WM_COMMAND:
            command = wparam & 0xffff
            if command == MENU_SETTINGS_TOGGLE:
                change_hotkey(HOTKEY_TOGGLE)
            elif command == MENU_SETTINGS_HOME:
                change_hotkey(HOTKEY_HOME)
            elif command == MENU_SETTINGS_QUIT:
                change_hotkey(HOTKEY_QUIT)
            elif command == MENU_TOGGLE:
                target = user32.GetForegroundWindow()
                if target:
                    enabled = target not in topmost_windows
                    set_always_on_top(target, enabled)
                    (topmost_windows.add if enabled else topmost_windows.discard)(target)
            elif command == MENU_QUIT:
                user32.DestroyWindow(hwnd)
            return 0

        if message == WM_DESTROY:
            user32.UnregisterHotKey(hwnd, HOTKEY_TOGGLE)
            user32.UnregisterHotKey(hwnd, HOTKEY_HOME)
            user32.UnregisterHotKey(hwnd, HOTKEY_QUIT)
            remove_tray_icon(hwnd)
            user32.PostQuitMessage(0)
            return 0
        return user32.DefWindowProcW(hwnd, message, wparam, lparam)

    def show_menu(hwnd):
        menu = user32.CreatePopupMenu()
        user32.AppendMenuW(menu, MF_STRING, MENU_TOGGLE,
                           "Toggle focused window")
        user32.AppendMenuW(menu, MF_SEPARATOR, 0, None)
        settings = user32.CreatePopupMenu()
        toggle_modifiers, toggle_vk = hotkey_values[HOTKEY_TOGGLE]
        home_modifiers, home_vk = hotkey_values[HOTKEY_HOME]
        quit_modifiers, quit_vk = hotkey_values[HOTKEY_QUIT]
        user32.AppendMenuW(settings, MF_STRING, MENU_SETTINGS_TOGGLE,
                           "Toggle always-on-top: " +
                           hotkey_name(toggle_modifiers, toggle_vk))
        user32.AppendMenuW(settings, MF_STRING, MENU_SETTINGS_HOME,
                           "Hide/show window: " +
                           hotkey_name(home_modifiers, home_vk))
        user32.AppendMenuW(settings, MF_STRING, MENU_SETTINGS_QUIT,
                           "Quit program: " +
                           hotkey_name(quit_modifiers, quit_vk))
        user32.AppendMenuW(menu, MF_POPUP, settings, "Settings")
        user32.AppendMenuW(menu, MF_SEPARATOR, 0, None)
        user32.AppendMenuW(menu, MF_STRING, MENU_QUIT, "Exit")
        point = POINT()
        user32.GetCursorPos(ctypes.byref(point))
        user32.SetForegroundWindow(hwnd)
        choice = user32.TrackPopupMenu(menu, TPM_RETURNCMD | TPM_RIGHTBUTTON,
                                       point.x, point.y, 0, hwnd, None)
        if choice:
            user32.SendMessageW(hwnd, WM_COMMAND, choice, 0)
        user32.DestroyMenu(menu)

    procedure = WNDCLASSEX()
    procedure.cbSize = ctypes.sizeof(WNDCLASSEX)
    procedure.lpfnWndProc = window_proc
    procedure.hInstance = kernel32.GetModuleHandleW(None)
    procedure.lpszClassName = class_name
    user32.RegisterClassExW(ctypes.byref(procedure))
    hwnd = user32.CreateWindowExW(0, class_name, "Always on Top", 0, 0, 0, 0, 0,
                                  None, None, procedure.hInstance, None)
    if not hwnd:
        raise ctypes.WinError(ctypes.get_last_error())
    main_hwnd[0] = hwnd
    if not user32.RegisterHotKey(hwnd, HOTKEY_TOGGLE,
                                 hotkey_values[HOTKEY_TOGGLE][0],
                                 hotkey_values[HOTKEY_TOGGLE][1]):
        raise SystemExit("The toggle hotkey is already in use.")
    if not user32.RegisterHotKey(hwnd, HOTKEY_HOME,
                                 hotkey_values[HOTKEY_HOME][0],
                                 hotkey_values[HOTKEY_HOME][1]):
        user32.UnregisterHotKey(hwnd, HOTKEY_TOGGLE)
        raise SystemExit("The Home key is already in use.")
    if not user32.RegisterHotKey(hwnd, HOTKEY_QUIT,
                                 hotkey_values[HOTKEY_QUIT][0],
                                 hotkey_values[HOTKEY_QUIT][1]):
        user32.UnregisterHotKey(hwnd, HOTKEY_TOGGLE)
        user32.UnregisterHotKey(hwnd, HOTKEY_HOME)
        raise SystemExit("The quit hotkey is already in use.")
    add_tray_icon(hwnd)
    message = wintypes.MSG()
    try:
        while user32.GetMessageW(ctypes.byref(message), None, 0, 0) > 0:
            user32.TranslateMessage(ctypes.byref(message))
            user32.DispatchMessageW(ctypes.byref(message))
    finally:
        remove_tray_icon(hwnd)


if __name__ == "__main__":
    main()
