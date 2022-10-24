import 'types_ids.dart';
import 'utils/validations.dart';

abstract class Scanner {
  List<String> call(String input);
}

class ScannerImpl implements Scanner {
  List<String> call(String input) {
    List<String> result = [];
    for (int i = 0; i <= input.length - 1; i++) {
      if (Validations.isAlfa(input[i])) {
        String auxAlfa = '';
        while (Validations.isAlfa(input[i])) {
          auxAlfa += input[i];
          i++;
        }
        if (isTypeVariable(auxAlfa) || isTypeCondicional(auxAlfa)) {
          result.add('<$auxAlfa>');
        } else {
          result.add('<$auxAlfa,${Validations.typeWord(auxAlfa)}>');
        }
        auxAlfa = '';
      }

      if (isTypeSeparatorsAndVerifications(input[i])) {
        if (i + 1 < input.length) {
          if (isTypeSeparatorsAndVerifications(input[i + 1]) &&
              isTypeOperator(input[i] + input[i + 1])) {
            result.add('<${input[i]}${input[i + 1]}>');
            i++;
          } else {
            result.add('<${input[i]}>');
          }
        } else {
          result.add('<${input[i]}>');
        }
      }

      if (isComment(input[i])) {
        if (i + 1 < input.length) {
          if (isComment(input[i + 1])) {
            result.removeLast();
            result.add('<eof>');
            return result;
          }
        }
      }
    }
    result.add('<eof>');
    return result;
  }
}
