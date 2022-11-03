/**
* With `name` = "john"  => return "Hello, John!"
* With `name` = "aliCE" => return "Hello, Alice!"
* With `name` not given 
  or `name` = ""     => return "Hello, World!"
 */

String hello([String? name]) {
  return (name != null && name.isNotEmpty)
      ? "Hello, ${name[0].toUpperCase()}${name.substring(1).toLowerCase()}!"
      : "Hello, World!";
}

void main(List<String> args) {
  print(hello("john"));
  print(hello("aliCE"));
  print(hello());
}
