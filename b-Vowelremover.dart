/*
* remove vowels
"hello"     -->  "hll"
"codewars"  -->  "cdwrs"
"goodbye"   -->  "gdby"
"HELLO"     -->  "HELLO"
 */

String removeVowels(String word) {
  return word.split("").where((element) {
    return !(['a', 'e', 'i', 'o', 'u'].contains(element));
  }).join();
}

String removeVowelsMap(String word) {
  return word.split("").map((char) {
    if (!(['a', 'e', 'i', 'o', 'u'].contains(char))) return char;
    return '';
  }).join();
}

String removeVowelsRegEx(String word) {
  return word.replaceAll(RegExp('[aeiou]'), '');
}

void main(List<String> args) {
  print(removeVowelsRegEx("hello"));
  print(removeVowelsRegEx("codewars"));
  print(removeVowelsRegEx("goodbye"));
  print(removeVowelsRegEx("HELLO"));
}
