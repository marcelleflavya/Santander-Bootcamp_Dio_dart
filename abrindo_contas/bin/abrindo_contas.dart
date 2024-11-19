/*O programa deve solicitar ao usuário as informações necessarias para abrir uma conta bancária. 
O numero da conta deve ser valor inteiro, o nome do titular uma sequencia de caracteres e o saldo inicial da conta, um valor decimal.
Implentar uma classe chamada ContaBancaria que represente uma conta bancária com as seguintes 
informações: numero da conta, nome do titular e saldo 
Tudo separado por linhas*/

import 'dart:convert';
import 'dart:io';
import 'package:abrindo_contas/conta.dart';

void main() {
  print('Digite o número da sua conta bancária:');
  int numeroConta = int.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite seu nome completo:');
  String titular = stdin.readLineSync(encoding: utf8)!;

  print('Digite o saldo inicial da sua conta:');
  double saldo = double.parse(stdin.readLineSync(encoding: utf8)!);

  ContaBancaria conta =
      ContaBancaria(conta: numeroConta, titular: titular, saldo: saldo);

  print(conta.returnContaBancaria());
}
