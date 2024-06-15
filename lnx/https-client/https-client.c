#include <sys/socket.h>
#include <netinet/in.h>
#include <openssl/ssl.h>
#include <string.h>
#include <stdio.h>

void main() {
    int sockfd = socket(AF_INET, SOCK_STREAM, 0);

    struct sockaddr_in addr = {
        AF_INET,
        htons(443),
        htonl(0x08080808)
    };

    connect(sockfd, &addr, sizeof(addr));

    SSL_CTX* ctx = SSL_CTX_new(TLS_method());
    SSL* ssl = SSL_new(ctx);
    SSL_set_fd(ssl, sockfd);
    SSL_connect(ssl);
    char* request = "GET /\r\n\r\n";
    SSL_write(ssl, request, strlen(request));
    char buffer[1024] = {0};
    SSL_read(ssl, buffer, 1023);
    printf("Response:\n%s\n", buffer);
}
