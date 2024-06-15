#include <winsock2.h>
#include <Windows.h>
#include <stdio.h>

int main()
{
	WSADATA wsadata;
	WSAStartup(MAKEWORD(2, 2), &wsadata);
	SOCKET s = socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in addr;
	addr.sin_family = AF_INET;
	addr.sin_addr.s_addr = 0;
	addr.sin_port = htons(8080);
	bind(s, &addr, sizeof(addr));

	listen(s, 10);

	SOCKET client = accept(s, 0, 0);

	char request[256] = {0};
	recv(client, request, 256, 0);

	// GET /[file] ...
	if (memcmp(request, "GET / ", 6) == 0) {
		FILE* f = fopen("index.html", "r");
		char buffer[256] = {0};
		fread(buffer, 1, 256, f);
		send(client, buffer, 256, 0);
	}
}
