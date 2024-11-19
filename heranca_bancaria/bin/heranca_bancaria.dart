/*Implemente a herança e o polimorfismo no sistema, criando uma classe "ContaPoupanca" que herde da classe "ContaBancaria". 
A classe "ContaPoupanca" deve adicionar um novo atributo, taxa de juros, além dos atributos herdados.
Dica: Utilize a herança para criar a classe "ContaPoupanca" que herde da classe "ContaBancaria" e adicione o atributo "taxajuros".
Implemente o método "exibirinformacoes()" na classe "ContaPoupanca" para exibir as informações adicionais.
O programa deve solicitar ao usuário as informações necessárias para abrir uma conta poupança. 
A entrada deve incluir numero da conta(int), o nome do titular(string), o saldo inicial(decimal)
e a taxa de juros da conta poupança(decimal)*/

import 'dart:convert';
import 'dart:io';
import 'package:heranca_bancaria/conta_poupanca.dart';

void main() {
  print('Digite o número da sua conta:');
  int numeroConta = int.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o nome do titular da conta:');
  String titular = stdin.readLineSync(encoding: utf8)!;

  print('Digite o saldo inicial da sua conta:');
  double saldo = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite a taxa de juros em %:');
  double taxa = double.parse(stdin.readLineSync(encoding: utf8)!);

  ContaPoupanca conta = ContaPoupanca(
    conta: numeroConta,
    titular: titular,
    saldo: saldo,
    taxa: taxa,
  );

  print(conta.exibirInformacoes());
}
