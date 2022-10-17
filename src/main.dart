import 'scanner/scanner.dart';

void main() {
  String input = 'int main(){if(i==2){final i = 200;}}';
  //final input = "double x = 10.5f;";
  // final input = "int x = 10 / 32;";
  //final input = "x += 32;";
  // final input = " x -= 32;";
  // final input = " x /= 32;";
  // final input = " x *= 32;";
  //final input = "String a = \"Hello World!\";";

  final result = Scanner(input).call();
  print(result);
}
