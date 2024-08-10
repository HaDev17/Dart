// Null-aware Operators in Dart

// To deal with null values, Dart uses flow analysis and type promotion.
// In addition, it provides you with various null-aware operators:

// ----------------------------------------------------------------------------------------------------
// | Operator | Meaning
// ----------------------------------------------------------------------------------------------------
// | ??       | If-null operator
// ----------------------------------------------------------------------------------------------------
// | ??=      | Null-aware assignment operator
// ----------------------------------------------------------------------------------------------------
// | ?.       | Null-aware access & method invocation operator
// ----------------------------------------------------------------------------------------------------
// | !        | Null assertion operator
// ----------------------------------------------------------------------------------------------------
// | ?..      | Null-aware cascade operator
// ----------------------------------------------------------------------------------------------------
// | ?[]      | Null-aware index operator
// ----------------------------------------------------------------------------------------------------
// | ...?     | Null-aware spread operator
// ----------------------------------------------------------------------------------------------------

// Let see an example of every operator :

void main() {
  // If null operator "??" :
  String? input;
  String message = input ?? 'Error';
  print(message); // Error

  // Null-aware assignment operator "??="
  int? x;
  x ??= 0; // this means if x is null, x will be 0.
  print(x);

  // Null-aware access & method invocation operator "?."
  String? text;
  print(text?.length);
  print(text?.toLowerCase());
}
