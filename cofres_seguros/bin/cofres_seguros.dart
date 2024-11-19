/* O objetivo é criar dois tipos de cofres: um cofre digital, que é aberto por senha, e um cofre físico, que é aberto por chave.
O programa irá solitar ao usuário que digite o tipo de cofre a ser criado: "digital" ou "fisico". 
Se for escolhido o tipo "digital", o programa irá solicitar a senha e a confirmação de senha do cofre do cofre digital(ambas com apenas numeros). 
Caso seja escolhido o tipo "fisico", não é necessaŕio nenhuma outra entrada.
O programa irá exibir as informações do cofre criado.
Para o cofre digital, será exibido o tipo e o método de abertura(senha). 
Para o cofre físico, será exibido apenas o tipo e o método de abertura(chave).
Tipo: Método de abertura: */

import 'dart:convert';
import 'dart:io';

void main() {
  print(''''Digite qual o cofre :
  1 - Cofre Digital
  2 - Cofre Físico ''');

  int imput = int.parse(stdin.readLineSync(encoding: utf8)!);

  imput == 1 ? 'Cofre Digital' : 'Cofre Físico';

  int? senha;
  int? compareSenha;

  if (imput == 1) {
    print('Digite a senha:');
    senha = int.parse(stdin.readLineSync(encoding: utf8)!);
    print('Digite a senha novamente:');
    compareSenha = int.parse(stdin.readLineSync(encoding: utf8)!);
    if (senha == compareSenha) {
      print(
          ' Tipo: Cofre Digital \n Método de abertura: Senha\n Cofre aberto!');
    }
    if (senha != compareSenha) {
      print(
          ' Tipo: Cofre Digital \n Método de abertura: Senha \n Senha incorreta!');
    }
  } else {
    print(' Tipo: Cofre Físico\n Método de abertura: Chave');
  }
}
