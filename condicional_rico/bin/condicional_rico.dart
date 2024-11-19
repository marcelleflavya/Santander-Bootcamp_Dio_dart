/*Crie uma solução que permita que os clientes realizem saques em caixas eletrônico. 
No entanto, existem algumas regras a serem seguidas:
-cada cliente digitará o valor do saldo total de sua conta bancaria e o valor saque;
-um saque so poderá ser realizado se o saldo disponível na conta foi igual ou superior ao valor solicitado;
-se o saldo for suficiente, o valor solicitado deve ser subtraído do saldo disponível, 
indicando que o saque foi realizado;
-se o saldo for insuficiente, o saque não deve ser realizado e uma mensagem adequada deve ser exibida.*/

import 'dart:convert';
import 'dart:io';

void main() {
  double saldoAtual;

  print('Digite o saldo da sua conta:');
  double saldoTotal = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o valor que você deseja sacar:');
  double saque = double.parse(stdin.readLineSync(encoding: utf8)!);

  if (saldoTotal >= saque) {
    saldoAtual = (saldoTotal - saque);
    print(
        'seu saldo atualizado após saque  é de R\$${saldoAtual.toStringAsFixed(2)}');
  } else {
    print('Seu saldo total é insuficiente para fazer o saque');
  }
}
