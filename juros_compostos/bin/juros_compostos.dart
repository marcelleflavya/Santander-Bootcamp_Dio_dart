/*Seu objetivo é criar uma função que receba três parâmetros: 
o valor inicial do investimento, a taxa de juros anual e o período de tempo em anos. 
A função deve calcular e retornar o valor final do investimento após o período determinado 
levando em consideração os juros compostos.O valor final deve estar em duas casas decimais.*/

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print('Digite o valor inicial do investimento:');
  double valorInicial = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite a taxa anual de juros em %:');
  double taxaAnual = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite o período de tempo em anos:');
  int tempo = int.parse(stdin.readLineSync(encoding: utf8)!);

  double valorFinal = valorInicial * pow((1 + (taxaAnual/100)), tempo);

  print('O valor final do investimento é R\$${valorFinal.toStringAsFixed(2)}');
}
