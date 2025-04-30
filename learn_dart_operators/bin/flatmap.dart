// Flat map - this idea comes from swift and rust
// It is a function that allows you to drill down wihtin an optional and grab its value and map it to another datatype or another value of the same datatype and should that optional not be null, if it is null flat map will return null,
// flatmap is unwrapping and mapping an optional value

void main(List<String> args) {
  // 1 => 'One';
  String? fistname = 'John';
  String? lastname = 'Doe';

  final result = fistname.flatmap((f) => lastname.flatmap((l) => '$f $l'));
}

// T == String, Strin? - thats what we were saying, that what this extension is
extension Flatmap<T> on T? {
  R? flatmap<R>(
    // we say return any value optionally and we call our function flatmap as long as it works with that datatype
    R? Function(T) callback,
    // we say internally we actually want the function that resolves this for us
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}
