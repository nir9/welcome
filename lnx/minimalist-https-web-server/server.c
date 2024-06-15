#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <openssl/ssl.h>
#include <stdio.h>
#include <string.h>

void main() {
	int sockfd = socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in addr = {
		AF_INET,
		htons(8080),
		0
	};
	bind(sockfd, &addr, sizeof(addr));
	listen(sockfd, 10);
	int clientfd = accept(sockfd, NULL, NULL);
	SSL_CTX* ctx = SSL_CTX_new(TLS_server_method());
	SSL* ssl = SSL_new(ctx);
	SSL_set_fd(ssl, clientfd);
	SSL_use_certificate_chain_file(ssl, "fullChain");
	SSL_use_PrivateKey_file(ssl, "theKey", SSL_FILETYPE_PEM);
	SSL_accept(ssl);
	char buffer[1024] = {0};
	SSL_read(ssl, buffer, 1023);
	// GET /file ....

	char* file_request = buffer + 5;
	char response[1024] = {0};
	char* metadata = "HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n";

	memcpy(response, metadata, strlen(metadata));

	if (strncmp(file_request, "index.html ", 11) == 0) {
		FILE* f = fopen("index.html", "r");
		fread(response + strlen(metadata), 1024 - strlen(metadata) - 1, 1, f);
		fclose(f);
	} else {
		char* error = "No page found";
		memcpy(response + strlen(metadata), error, strlen(error));
	}

	SSL_write(ssl, response, 1024);
	SSL_shutdown(ssl);
}


