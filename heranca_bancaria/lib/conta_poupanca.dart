/*Implemente a herança e o polimorfismo no sistema, criando uma classe "ContaPoupanca" que herde da classe "ContaBancaria". 
A classe "ContaPoupanca" deve adicionar um novo atributo, taxa de juros, além dos atributos herdados.
Dica: Utilize a herança para criar a classe "ContaPoupanca" que herde da classe "ContaBancaria" e adicione o atributo "taxajuros".
Implemente o método "exibirinformacoes()" na classe "ContaPoupanca" para exibir as informações adicionais.
O programa deve solicitar ao usuário as informações necessárias para abrir uma conta poupança. 
A entrada deve incluir numero da conta(int), o nome do titular(string), o saldo inicial(decimal)
e a taxa de juros da conta poupança(decimal)*/

import 'package:heranca_bancaria/conta_bancaria.dart';

class ContaPoupanca extends ContaBancaria {
  double taxa;

  ContaPoupanca({
    required super.conta,
    required super.titular,
    required super.saldo,
    required this.taxa,
  });

  @override
  exibirInformacoes() {
    return '''
${super.exibirInformacoes()}Taxa de Juros: ${taxa.toStringAsFixed(2)}%
''';
  }
}
