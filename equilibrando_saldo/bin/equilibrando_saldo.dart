/*Crie um programa que deve solicitar uma entrada que representa o saldo atual do funcionario,
 e após , seja informado o valor das duas transações, sendo elas: um depósito e um saque. 
O programa deve atualizar o saldo com base nas transações e exibir o saldo final.
As informações de deposito e retirada devem ser tratadas como valores positivos e negativos,
 respectivamente , para garantir que o cálculo do saldo final seja realizado corretamente.
 considere apenas uma casa decimal para esse desafio*/

import 'dart:convert';
import 'dart:io';

void main() {
  print('Digite o saldo atual:');
  double saldoAtual = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o valor do depósito:');
  double deposito = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o valor do saque:');
  double saque = double.parse(stdin.readLineSync(encoding: utf8)!);

  double saldoFinal = (saldoAtual + deposito) - saque;
  print('O saldo final é ${saldoFinal.toStringAsFixed(2)}');
}
