/*Crie uma interface em dart que permitirá aos acionistas de uma empresa
acessarem informações relevantes sobre as análises da organização bancária.
Sua tarefa é implementar uma classe que representa essa interface
e que fornece um método para consultar as análises de desempenho 
e outros tipos dentro de um determinado período.
A classe deve ter método chamado obterAnalisesDesepenho que recebe como parâmetros uma data inicial e uma data final.
por exemplo 
entre os dias 01/01/2023 - analise de desempenho financeiro
entre os dias 15/02/2023 - analise de riscos e exposiçoes
entre os dias 31/03/2023 - analise corporativas
entre os dias 01/04/2023 - analise de politicas e regulamentações
entre os dias 15/05/2023 - analise de ativos
entre os dias 30/06/2023 - analise de inovação e tecnologia

A saída deve ser uma lista contendo as análises de desempenho financeiro realizadas dentro do perído especificado

um exemplo de saida é:
entrada: 01/04/2023
         20/05/2023

saida: analise de politicas e regulamentações
       analise de ativos
*/

import 'package:reuniao_acionista/dados.dart';

void main() {
  Dados().iniciar();
}
