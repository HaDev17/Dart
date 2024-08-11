// Mixin in Dart

// Mixin is a class that contains methods for use by other classes without having
// to be the parent class of those other classes.

// Mixin is a way to reuse a class's code in multiple class hierarchies.

// Let's see an example of Mixin in Dart.

// Define a class Model
abstract class Model {}

// Define a mixin Shareable

mixin Shareable {
  void share(String content) {
    print('Share the $content');
  }
}

// And here, Post, Comment, and Video classes are using the Shareable mixin.

class Post extends Model with Shareable {}

class Comment extends Model with Shareable {}

class Video with Shareable {}

void main() {
  // Create an object of Post class
  var post = Post();
  // Call the share method
  post.share('The first post.');

  var comment = Comment();
  comment.share('My first comment.');

  var video = Video();
  video.share('Share the video');
}

// Note : mixin doesn't have a constructor, so you can't create an object of mixin, 
// and you can't extend a mixin class.


// Summary :
// Use mixins to share behaviors between one or more classes.
// Use the mixin keyword to define a mixin. Unlike a class, a mixin cannot be instantiated and it cannot have a constructor.
// Use the with keyword to use a mixin in a class.