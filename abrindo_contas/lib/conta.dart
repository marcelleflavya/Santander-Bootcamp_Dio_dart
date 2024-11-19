class ContaBancaria {
  int conta;
  String titular;
  double saldo;

  ContaBancaria({
    required this.conta,
    required this.titular,
    required this.saldo,
  });

  returnContaBancaria() {
    return '''
   Informações:
   conta: $conta
   Titular: $titular
   Saldo: R\$$saldo
''';
  }
}