import 'dart:io';

// função main
void main() {
  somatorioNumerosDesafio();
  somatorioInserindoNumero();
}

int somatorio(int numero) {
  int somatorio = 0;

  // soma todos os valores inteiros divisíveis por 3 ou 5
  // que sejam inferiores ao número passado
  for (int i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somatorio += i;
    }
  }

  return somatorio;
}

// função solicitando número na tela
int somatorioInserindoNumero() {
  int? numero;

  // verifica  se o número inserido é inteiro e positivo
  while (numero == null || numero <= 0 || numero % 1 != 0) {
    stdout.write('Digite um número inteiro positivo: ');

    try {
      String input = stdin.readLineSync()!;
      numero = int.parse(input);

      if (numero <= 0 || numero % 1 != 0) {
        print('Por favor, insira um número inteiro positivo.');
      }
    } catch (e) {
      print('Entrada inválida. Por favor, insira um número inteiro positivo.');
    }
  }

  print('Somatório recebendo o valor $numero: ${somatorio(numero)}');
  return somatorio(numero);
}

// função com números do desafio
void somatorioNumerosDesafio() {
  print('Exemplos!');
  print(
      'Somatório recebendo o valor 10: ${somatorio(10)}'); // saída esperada 23
  print(
      'Somatório recebendo o valor 10: ${somatorio(11)}\n'); // saída esperada 33
}
