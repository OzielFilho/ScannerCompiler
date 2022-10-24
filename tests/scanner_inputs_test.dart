import '../src/scanner/scanner.dart';
import 'package:test/test.dart';

void main() {
  final Scanner _scanner = ScannerImpl();

  test('Teste com variável int a = 2;', () {
    final result = _scanner.call('int a = 2;');
    expect(result.isNotEmpty, true);
    expect(result, ['<int>', '<a,id>', '<=>', '<2,num>', '<;>', '<eof>']);
  });

  test('Teste com ponto flutuante double x = 10.5f;', () {
    final result = _scanner.call('double x = 10.5f;');
    expect(result.isNotEmpty, true);
    expect(result, ['<double>', '<x,id>', '<=>', '<10.5f,id>', '<;>', '<eof>']);
  });

  test('Teste com função int main(){if(i==2){final i = 200;}}', () {
    final result = _scanner.call('int main(){if(i==2){final i = 200;}}');
    expect(result.isNotEmpty, true);
    expect(result, [
      '<int>',
      '<main,id>',
      '<(>',
      '<)>',
      '<{>',
      '<if>',
      '<(>',
      '<i,id>',
      '<==>',
      '<2,num>',
      '<)>',
      '<{>',
      '<final>',
      '<i,id>',
      '<=>',
      '<200,num>',
      '<;>',
      '<}>',
      '<}>',
      '<eof>'
    ]);
  });

  test('Teste com variável com _ bool _isValid = false;}', () {
    final result = _scanner.call('bool _isValid = false;');
    expect(result.isNotEmpty, true);
    expect(
        result, ['<bool>', '<_isValid,id>', '<=>', '<false>', '<;>', '<eof>']);
  });

  test('Teste com funcao com _ bool _isValid(){return false;}', () {
    final result = _scanner.call('bool _isValid(){return false;}');
    expect(result.isNotEmpty, true);
    expect(result, [
      '<bool>',
      '<_isValid,id>',
      '<(>',
      '<)>',
      '<{>',
      '<return>',
      '<false>',
      '<;>',
      '<}>',
      '<eof>'
    ]);
  });

  test('Teste com incremento x++;}', () {
    final result = _scanner.call('x++;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '<++>', '<;>', '<eof>']);
  });

  test('Teste com decremento x--;}', () {
    final result = _scanner.call('x--;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '<-->', '<;>', '<eof>']);
  });

  test('Teste com operação -= (x -= 32;)}', () {
    final result = _scanner.call('x -= 32;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '<-=>', '<32,num>', '<;>', '<eof>']);
  });

  test('Teste com operação += (x += 20;)}', () {
    final result = _scanner.call('x += 20;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '<+=>', '<20,num>', '<;>', '<eof>']);
  });

  test('Teste com operação *= (x *= 10;)}', () {
    final result = _scanner.call('x *= 10;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '<*=>', '<10,num>', '<;>', '<eof>']);
  });

  test('Teste com operação /= (x /= 20;)}', () {
    final result = _scanner.call('x /= 20;');
    expect(result.isNotEmpty, true);
    expect(result, ['<x,id>', '</=>', '<20,num>', '<;>', '<eof>']);
  });

  test('Teste com comentário String a = 2; //Hello World!', () {
    final result = _scanner.call('String a = 2;//Hello World!');
    expect(result.isNotEmpty, true);
    expect(result, ['<String>', '<a,id>', '<=>', '<2,num>', '<;>', '<eof>']);
  });
}
