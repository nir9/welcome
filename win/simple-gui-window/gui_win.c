#include <Windows.h>

LRESULT WinProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
    switch (uMsg) {
        case WM_PAINT:
            PAINTSTRUCT paint;
            HDC hDc = BeginPaint(hWnd, &paint);
            RECT rect = {
                75,
                75,
                250,
                250
            };
            HBRUSH hBr = CreateSolidBrush(RGB(0,0,255));
            FillRect(hDc, &rect, hBr);
            DeleteObject(hBr);
            EndPaint(hWnd, &paint);
            return 0;

        case WM_DESTROY:
            PostQuitMessage(0);
            return 0;

        default:
            return DefWindowProcA(hWnd, uMsg, wParam, lParam);
    }

    return 0;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE a, PSTR b, int nCmdShow) {
    WNDCLASSA class = {
        0,
        WinProc,
        0,
        0,
        hInstance,
        NULL,
        NULL,
        NULL,
        NULL,
        "NirsClass"
    };

    RegisterClassA(&class);

    HWND windowHandle = CreateWindowA("NirsClass", "Hello", WS_CAPTION | WS_POPUP | WS_SYSMENU, 50, 50, 500, 500, NULL, NULL, hInstance, NULL);

    ShowWindow(windowHandle, nCmdShow);

    MSG msg;

    for (;;) {
        if (GetMessageA(&msg, NULL, 0, 0) == 0) {
            break;
        }

        DispatchMessageA(&msg);
    }

    return 0;
}
