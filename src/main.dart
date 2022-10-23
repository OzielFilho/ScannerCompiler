import 'scanner/scanner.dart';

void main() {
  //String input = 'int main(){if(i==2){final i = 200;}}';
  //final input = "double x = 10.5f;";
  // final input = "int x = 10 / 32;";
  //final input = "x += 32;";
  // final input = " x -= 32;";
  // final input = " x /= 32;";
  // final input = " x *= 32;";
  //final input = "String a = \"Hello World!\";";
  // final input =
  //     "int main() {int a = 10;int c;for (int i = 0; i <= 10; i++) {if (i + a <= 15) {c = i;}}return 0;}";
  final input = "int x = 2;if(x/2==1){return true;}//int ";
  final result = Scanner(input).call();
  print(result);
}
