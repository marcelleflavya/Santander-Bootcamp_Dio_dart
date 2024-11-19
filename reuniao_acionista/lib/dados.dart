import 'dart:io';
import 'dart:convert';

class Dados {
  void iniciar() {
    print('Digite a data inicial no formato dd/mm/yyyy:');
    String dataInicial = stdin.readLineSync(encoding: utf8)!;
    print('Digite a data final no formato dd/mm/yyyy:');
    String dataFinal = stdin.readLineSync(encoding: utf8)!;
    obterAnalisesDesepenho(dataInicial, dataFinal);
  }

  List<Map<String, String>> analisesDesempenhoFinanceiro = [
    {
      '01/01/2023': 'analise de desempenho financeiro',
      '15/02/2023': 'analise de riscos e exposiçoes',
      '31/03/2023': 'analise corporativas',
      '01/04/2023': 'analise de politicas e regulamentações',
      '15/05/2023': 'analise de ativos',
      '30/06/2023': 'analise de inovação e tecnologia',
    }
  ];

  void obterAnalisesDesepenho(String dataInicial, String dataFinal) {
    /*Os dois mapas verifica e verifica1 são criados para guardar o resultado da busca
    na lista analisesDesempenhoFinanceiro que se relaciona com as chaves dataInicial 
    e dataFinal.
    o firstWhere vai procurar em analisesDesempenhoFinanceiro mapas e esse mapa deve conter a key dataInicial ou dataFinal*/
    Map<String, String>? verifica = analisesDesempenhoFinanceiro.firstWhere(
      (mapa) => mapa.containsKey(dataInicial),
      orElse: () => {},
    );
    Map<String, String>? verifica1 = analisesDesempenhoFinanceiro.firstWhere(
      (mapa) => mapa.containsKey(dataFinal),
      orElse: () => {},
    );

    if (verifica.isEmpty && verifica1.isEmpty) {
      print('As datas informadas não correspondem a nenhuma análise.');
    } else {
      print('${verifica[dataInicial]}');
      print('${verifica1[dataFinal]}');
    }
  }
}
