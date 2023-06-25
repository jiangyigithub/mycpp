
`handle_for_sigpipe`
the handle_for_sigpipe function sets up a signal handler for SIGPIPE using the sigaction function. It sets the signal action to ignore the signal, effectively preventing the program from terminating when writing to a closed socket.

By calling handle_for_sigpipe at the start of your program, you can handle SIGPIPE and gracefully handle closed socket situations without the program being terminated.

`socket_bind_listen`
This function is a helper function that creates and sets up a listening socket for a specified port. Let's go through the steps in the function:

Port Validation: It checks if the specified port is within the valid range of 1024 to 65535. If not, it returns -1 to indicate an error.

Create Socket: It creates a socket using the socket function with the domain AF_INET (IPv4) and type SOCK_STREAM (TCP). The function returns a file descriptor for the created socket.

Address Reuse: It sets the SO_REUSEADDR socket option using setsockopt. This option allows reusing the local address and port, preventing the "Address already in use" error.

Set Server IP and Port: It initializes a struct sockaddr_in named server_addr and sets the server's IP address to INADDR_ANY (allow connections from any interface) and the port to the specified port.

Bind Socket: It binds the listening socket to the server address using the bind function.

Start Listening: It starts listening for incoming connections on the bound socket using the listen function. The maximum length of the pending connection queue is specified by the LISTENQ constant.

Return Result: If all the steps are successful, the function returns the listening socket file descriptor (listen_fd). If any step fails, it returns -1 to indicate an error.

`epoll_add`