// Introduction to the Dart event loop

// Dart is a single-threaded language. It means that Dart uses a single thread to execute the code.
// Dart’s single thread runs in what is known as an isolate.

// The following program displays three numbers from 1 to 3 to the console:
// main() {
//   print(1);
//   print(2);
//   print(3);
// }

// The output of the program is:
// 1
// 2
// 3
 
// In this program, the main() function runs line by line from top to bottom until it completes.
// And this program runs synchronously because it never displays the number 2 before 1 for example.

// In practice, there’re many tasks that can run asynchronously. The order does not matter. For example, 
// reading from a file, downloading an image from a remote server, and connecting to a database.

// If you run these tasks synchronously, the program needs to wait for them to complete, which causes the program to freeze for a while. 
// Therefore, if you have any task that takes time to complete and may block the main execution of the program, you should run it asynchronously.

// Dart uses an event loop 
// The event loop has two queues:
  // A microtasks queue.
  // An event queue.

// Dart mostly uses the microtasks queue internally. Also, Dart uses an event queue for asynchronous tasks.

// In this model, Dart always runs synchronous tasks in the main isolate immediately. It is not possible to interrupt them.

// If Dart finds long-running tasks that can be postponed, it puts them in the event queue.

// The event loop is always running. It continuously checks the synchronous tasks, microtask queue, and event queue:

  // If all the tasks in the main isolate are completed, the event loop moves the tasks (if available) from the microtask queue to the main isolate 
  // for execution until the microtask queue is empty.
  // If both synchronous tasks and the microtask queue are empty, the event loop moves the tasks from the event queue to the main thread for execution.
  // The event loop continues until all the queues are empty.

// Dart is single-threaded but it doesn’t mean that Dart can’t have tasks running on another thread.

// For example, when you read a file, the work doesn’t happen on the main isolate. The operating system (OS) is reading the file inside its own process. 
// Once the OS completes reading the file, it passes the data back to Dart. And Dart schedules a task to handle the data in the event queue. A lot of I/O 
// tasks from the dart:io library work in this way.