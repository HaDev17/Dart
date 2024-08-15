// Let's creat a simple web server using Dart.

import 'dart:io';

// first run the app, and then open the url that the program will give you in the terminal.
void main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    4040,
  );

  print('Listening on localhost:http://127.0.0.1:${server.port}');

  await for (HttpRequest request in server) {
    request.response
      ..write('Hello, World!')
      ..close();

    print('Request received!');
  }
}

// Let's explain the code :

// 1. We import the dart:io library to use the HttpServer class.
// HttpServer is a class that represents an HTTP server, which can listen for incoming HTTP requests and send back responses.
// and HTTP is a protocol that allows clients to communicate with servers over the internet.

// 2. We define the main() function as an asynchronous function using the async keyword.

// 3. We create a server variable and use the await keyword to wait for the HttpServer.bind() method to complete.
// HTTPServer.bind(a, b) method is used to create an HTTP server that listens for incoming connections on the specified address and port.
// a is the address to listen on, and b is the port to listen on.
// InternetAddress.loopbackIPv4 is a constant that represents the loopback address, which is the address of the local machine.
// 4040 is the port number that the server will listen on.
 
// 4. We print a message to the console that the server is listening on a specific URL.
// In our case, http://127.0.0.1:${server.port} is the url, where server.port returns the port number that the server is listening on.
// and http://127.0.0.1 or http://localhost is the loopback address of the local machine.

// 5. We use the await for loop to listen for incoming HTTP requests on the server.
// HTTPRequest is a class that represents an incoming HTTP request, so we use it to handle the request.
// The await for loop is used to iterate over the stream of incoming requests asynchronously.
// The request variable will contain the current request object.
// request.response is a HttpResponse object that represents the response to send back to the client.
// ..write('Hello, world!') is used to write the response body, which is the text 'Hello, World!'.
// ..close() is used to close the response and send it back to the client.
// and finally we print a message to the console that a request has been received.