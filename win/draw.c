#include <windows.h>

int main()
{
	HDC screen = GetDC(NULL);
	HBRUSH redBrush = CreateSolidBrush(RGB(255, 0, 0));
	SelectObject(screen, redBrush);
	for (int counter = 0;;counter += 10) {
		Rectangle(screen, 50, 50, 500 + counter, 500);
		Sleep(20);
	}
}
