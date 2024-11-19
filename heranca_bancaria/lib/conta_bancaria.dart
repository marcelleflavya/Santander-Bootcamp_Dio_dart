/*Implemente a herança e o polimorfismo no sistema, criando uma classe "ContaPoupanca" que herde da classe "ContaBancaria". 
A classe "ContaPoupanca" deve adicionar um novo atributo, taxa de juros, além dos atributos herdados.
Dica: Utilize a herança para criar a classe "ContaPoupanca" que herde da classe "ContaBancaria" e adicione o atributo "taxajuros".
Implemente o método "exibirinformacoes()" na classe "ContaPoupanca" para exibir as informações adicionais.
O programa deve solicitar ao usuário as informações necessárias para abrir uma conta poupança. 
A entrada deve incluir numero da conta(int), o nome do titular(string), o saldo inicial(decimal)
e a taxa de juros da conta poupança(decimal)*/

class ContaBancaria {
  int conta;
  String titular;
  double saldo;


  ContaBancaria({
    required this.conta,
    required this.titular,
    required this.saldo,
  });

  exibirInformacoes() {
    return '''
conta: $conta, 
titular: $titular, 
saldo: R\$${saldo.toStringAsFixed(2)},
''';
  }
}
