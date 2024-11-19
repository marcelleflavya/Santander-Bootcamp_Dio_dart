/*O objetivo é obter as informações de uma forma mais amigável para para o  cliente e não oferecer informações brutas.
Considere que cada transação é representada por apenas uma string contendo as seguintes informações: data, hora, descrição, valor.
A saída deve ser descrição, data, hora, valor.Separado por linha.
Crie uma classe representando as transações e nela será recebido os atributos necessários pra guardar as informações,
e ao fim, retorne o registro contendo a data, hora e valor da transação.*/

import 'dart:convert';
import 'dart:io';
import 'package:ultima_transacao/transacao.dart';

void main() {
  print('Digite em sequência a data em formato (00/00/00):');
  String data = stdin.readLineSync(encoding: utf8)!;
  print('Digite hora que foi feita a transaçao:');
  String hora = stdin.readLineSync(encoding: utf8)!;
  print('Digite a descrição da transição:');
  String descricao = stdin.readLineSync(encoding: utf8)!;
  print('Digite o valor da transação:');
  double valor = double.parse(stdin.readLineSync(encoding: utf8)!);

  Transacao transacao =
      Transacao(data: data, hora: hora, descricao: descricao, valor: valor);

  print(transacao.exibirInformacoes());
}
