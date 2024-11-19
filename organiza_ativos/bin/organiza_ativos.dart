/*Crie uma solução que organize em ordem alfabética uma lista de ativos que será informada pelos usuários. 
Os ativos são representados por Strings que representam seus tipos. 
Como por exemplo: reservas de liquidez, ativos intangíveis e outros.
A primeira entrada é um numero inteiro que representa a quantidade de ativos.
Em seguida o usuário deve informar em linhas separadas os tipos(strings) dos respectivos ativos.
Exiba os ativos organizados em ordem alfabética e em linhas separadas.*/

import 'dart:convert';
import 'dart:io';

void main() {
  List<String> ativos = [];

  print('Digite o número de ativos que você possui:');
  int quantidade = int.parse(stdin.readLineSync(encoding: utf8)!);

  for (int i = 1; i <= quantidade; i++) {
    print('Digite quais são os seus ativos:');
    String imput = stdin.readLineSync(encoding: utf8)!;

    ativos.add(imput);
  }
  ativos.sort();
  print('Seus ativos são: \n');
  print(ativos.join('\n'));
}
