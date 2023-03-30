#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <sys/types.h>

int main(int argc, char *argv[])
{
	//create a server socket similar to what was done in the client program
	int	servSockD = socket(AF_INET, SOCK_STREAM, 0);

	//string to store data to send to client
	char	servMsg[225] = "Message from the server to the client \'Hello client!\'";

	//define server address
	struct sockaddr_in servAddr;

	servAddr.sin_family = AF_INET;
	servAddr.sin_port = htons(3000);
	servAddr.sin_addr.s_addr = INADDR_ANY;

	//bind socket to specified IP and port
	bind(servSockD, (struct sockaddr*)&servAddr, sizeof(servAddr));

	//listen for connections
	listen(servSockD, 1);

	//integer to hold client socket.
	int	clientSocket = accept(servSockD, NULL, NULL);

	//sends message to client socket.
	send(clientSocket, servMsg, sizeof(servMsg), 0);

	return 0;
}
