class Transacao {
  String data;
  String hora;
  String descricao;
  double valor;
  Transacao({
    required this.data,
    required this.hora,
    required this.descricao,
    required this.valor,
  });

  exibirInformacoes() {
    return 'Transaçao: Descriçao: $descricao\ndata: $data\nhora: $hora\nvalor: R\$${valor.toStringAsFixed(2)}';
  }
}
