class Validations {
  static bool isAlfa(String value) => RegExp(r'[a-zA-Z0-9_.]$').hasMatch(value);
}
