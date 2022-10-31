import 'dart:io';

import 'scanner/scanner.dart';

void main() {
  Scanner _scanner = ScannerImpl();
  print('Insira a entrada do Scanner');
  String _input = stdin.readLineSync();
  print('Scanner de $_input');
  List<String> _result = _scanner.call(_input);
  final _resultCopy = _result.toList();
  int _validationWhile = 1;
  while (_validationWhile > 0 && _validationWhile < 2) {
    print(
        '-----------------------------------------------------------------------------');
    print('Deseja pegar o proximo token? [1]Sim - [0]Não');
    print(
        '-----------------------------------------------------------------------------');
    _validationWhile = int.parse(stdin.readLineSync());
    if (_result.isNotEmpty) {
      print('\nTOKEN: ' + _scanner.nextToken(_result) + '\n');
      if (_validationWhile > 0 && _validationWhile < 2) {
        _result = _scanner.removeFirstItemToken(_result);
      }
    } else {
      print('Scanner finalizado -- Lista com tokens $_resultCopy');
      _validationWhile = 0;
    }
  }
}
