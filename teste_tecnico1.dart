import 'dart:io';

void main() {
  int num, soma = 0;

  try {
    print('Insira um número inteiro positivo: ');
    num = int.parse(stdin.readLineSync().toString());
  } catch (error) {
    print('Não é um número válido ${error}');
    return;
  }

  if (num <= 0) {
    print('O número precisa ser inteiro positivo');
    return;
  }

  print("O número que você escolheu é: ${num}");

  soma = _obterResultado(num);
  print('O valor é ${soma}');
}

int _obterResultado(num) {
  int soma = 0;
  for (int i = 0; i < num; i++) {
    if ((i % 3 == 0) || (i % 5 == 0)) {
      soma += i;
    }
  }
  return soma;
}
