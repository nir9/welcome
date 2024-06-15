#include <Windows.h>
#include <stdio.h>

int main() {
	HANDLE handle = CreateFileMappingW(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, 0, 256, L"ChatSyncFileMap");

	LPVOID address = MapViewOfFile(handle, FILE_MAP_ALL_ACCESS, 0, 0, 0);
	
	HANDLE event = CreateEventW(NULL, FALSE, FALSE, L"ChatSyncEvent");
	for (;;) {
		scanf_s("%255s", (char*)address, 256);
		SetEvent(event);
	}
}
