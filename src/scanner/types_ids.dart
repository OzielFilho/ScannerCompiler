List<String> _typeVariable = [
  'int',
  'String',
  'double',
  'var',
  'bool',
  'final',
  'return',
  'if',
  'else',
  'true',
  'false'
];
List<String> _typeSeparatorsAndVerifications = [
  '(',
  ')',
  '{',
  '<',
  '>',
  '}',
  ';',
  '=',
  '!',
  '?',
  '+',
  '-',
  '/',
  '*',
  '&'
];
List<String> _typeOperator = [
  '==',
  '&&',
  '!=',
  '<=',
  '>=',
  '!!',
  '??',
  '++',
  '--',
  '+=',
  '-=',
  '/=',
  '*=',
];

List<String> _typeComments = ["/"];

List<String> _typeCondicionals = ['if', 'for', 'while', 'else'];

bool isComment(String value) => _typeComments.contains(value);

bool isTypeVariable(String value) => _typeVariable.contains(value);

bool isTypeCondicional(String value) => _typeCondicionals.contains(value);

bool isTypeSeparatorsAndVerifications(String value) =>
    _typeSeparatorsAndVerifications.contains(value);

bool isTypeOperator(String value) => _typeOperator.contains(value);
