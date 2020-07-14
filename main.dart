import 'dart:io';

import 'pessoa.dart';

main() {
  var opcao;
  do {
    print("MENU: ");
    print("1 - Cadastrar Cliente");
    print("2 - Listar Clientes");
    print("0 - Sair");
    opcao = int.parse(stdin.readLineSync());
    switch (opcao) {
      case 1:
        print("Digite o nome do cliente: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do cliente: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do cliente: ");
        var email = stdin.readLineSync();
        print("Digite o sexo do cliente: ");
        var sexo = stdin.readLineSync();
        var cliente = new Pessoa(nome, idade, email, sexo);

        print(cliente.nome);
        break;
      case 2:
        break;
      default:
    }
  } while (opcao != 0);

  // Operador CASCADE
  // cliente
  //   ..nome = "João"
  //   ..idade = 20
  //   ..sexo = "masculino"
  //   ..email = "joao@mail.com";
}
