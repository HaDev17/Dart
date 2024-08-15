// Fetching data from a web site :

// In this exercise, you will learn how to fetch data from a web site using Dart.
// We will use the http package to make HTTP requests to a web site and fetch data from it.
// The http package is a popular package in Dart that provides functions for making HTTP requests.
// You can use it to send GET, POST, PUT, DELETE, etc. requests to a web site and get the response.
// Let's see how to fetch data from a web site using Dart :

// Before to fetch data from internet.

// Let's see a simulare example

// suppose we want to fetching posts from a web site, we need to create a Post class that represents a post.
class Post {
  int userId;
  String title;

  Post({this.userId = 0, this.title = ''});

  @override
  String toString() {
    return '(userId: $userId, title: $title)';
  }
}

// Now, we will create a function that simulates fetching data from a web site.
// we will use the Future.delayed() function to simulate a delay in fetching the data.
Future<Post> fetchingData() {
  // suppose that the data is fetched after 2 seconds.
  const delay = Duration(seconds: 2);
  // and then we return a Post object with userId = 1 and title = 'Hello, World!'.
  return Future.delayed(delay, () => Post(userId: 1, title: 'Hello, World!'));
}

void main() async {
  // Now, we will call the fetchingData() function and print the fetched post.
  final post = await fetchingData();
  print(post);
}


// Now, let's fetch data from a real web site.
// see you in fetchData2.dart file.