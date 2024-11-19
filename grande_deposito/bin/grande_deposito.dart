/* O programa deve solicitar ao cliente o valor do depósito e verificar se o saldo é válido. 
Se o valor for maior que zero, o programa deve adicionar o valor ao saldo da conta.
Caso contrário, o programa deve exibir uma mensagem de erro.
O programa deve solicitar apenas uma vez o valor do depósito.
O valor pode ser decimal.
 E na saída deve exibir uma mensagem de sucesso quando um valor de deposito valido for informado
e o saldo da conta for atualizado. 
Se o valor for zero, deverá encerrar o programa. Caso o valor inválido seja digitado,
o programa deve exibir uma mensagem de erro solicitando um novo valor*/

import 'dart:convert';
import 'dart:io';

void main() {
  double? saldoAtual;

  print('Digite seu saldo:');
  double saldoAntigo = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o valor do depósito:');
  double deposito = double.parse(stdin.readLineSync(encoding: utf8)!);

  if (deposito > 0) {
    saldoAtual = (deposito + saldoAntigo);
    print(
        'o valor R\$$deposito foi adicionado a sua conta. O novo Saldo é ${saldoAtual.toStringAsFixed(2)}');
  } else if (deposito < 0) {
    print('Valor inválido, tente novamente');
  } else {
    print('Encerra o programa');
  }
}
