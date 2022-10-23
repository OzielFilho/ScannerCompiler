List<String> _typeVariable = [
  'int',
  'String',
  'double',
  'var',
  'bool',
  'final',
  'return',
];
List<String> _typeOthers = [
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
List<String> _equalsType = [
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

List<String> _comments = ["/"];

List<String> _typeCondicionals = ['if', 'for', 'while', 'else'];

bool isComment(String value) => _comments.contains(value);

bool isTypeVariable(String value) => _typeVariable.contains(value);

bool isTypeCondicional(String value) => _typeCondicionals.contains(value);

bool isTypeOthers(String value) => _typeOthers.contains(value);

bool isTypeEquals(String value) => _equalsType.contains(value);
