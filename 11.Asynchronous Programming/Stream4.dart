// Stream in Dart :

// A future represents a single value that will be returned by an asynchronous operation.
// A stream is like a list of futures, representing multiple values that will be returned in the future.

// Dart uses the Stream<T> class to create streams. Since the Stream<T> is a generic class,
// you can have a stream of any objects.

// Typically, you’ll use streams to :
//   Read data from a large file in chunks.
//   Download a resource from a remote server.
//   Listen for requests coming into a server.

// In practice, you’ll often consume streams from libraries rather than creating new streams from scratch. 
// But to understand it deeply, we’ll show you how to create a simple stream.

// Creating a stream :
// To create a stream, you use the StreamController<T> class. 
// The StreamController<T> class creates a stream that others can listen to and push events (or data) to it.

// Note: to use stream we have to import dart async library.

// Here are the steps for creating a stream :
// Let's jump to the "number.dart" file ... 







// 