import 'types_ids.dart';
import 'utils/validations.dart';

class Scanner {
  final String input;

  Scanner(this.input);

  List<String> call() {
    List<String> result = [];
    for (int i = 0; i <= input.length - 1; i++) {
      if (Validations.isAlfa(input[i]) && input[i] != ' ') {
        String auxInput = '';
        while (Validations.isAlfa(input[i])) {
          auxInput += input[i];
          i++;
        }
        if (isTypeVariable(auxInput) || isTypeCondicional(auxInput)) {
          result.add('<$auxInput>');
        } else {
          result.add('<$auxInput,id>');
        }
        auxInput = '';
      }

      if (isTypeOthers(input[i])) {
        if (i + 1 < input.length) {
          if (isTypeOthers(input[i + 1]) &&
              isTypeEquals(input[i] + input[i + 1])) {
            result.add('<${input[i]}${input[i + 1]}>');
            i++;
          } else {
            result.add('<${input[i]}>');
          }
        } else {
          result.add('<${input[i]}>');
        }
      }
    }
    return result;
  }
}
