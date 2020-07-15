import 'dart:io';

import 'pessoa.dart';

main() {
  var opcao;
  do {
    print("MENU: ");
    print("1 - Cadastrar Cliente");
    print("2 - Cadastrar Cliente Masculino");
    print("3 - Cadastrar Cliente Feminino");
    print("4 - Listar Clientes");
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
        print("Digite o sobrenome do cliente: ");
        var sobrenome = stdin.readLineSync();
        cliente.adicionarSobrenomeLambda(sobrenome);
        print(cliente.nome);
        print(cliente.fazerAniversarioLambda());
        break;
      case 2:
        print("Digite o nome do cliente: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do cliente: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do cliente: ");
        var email = stdin.readLineSync();
        var cliente = new Pessoa.construtorMasculino(nome, idade, email);
        print(cliente.sexo);
        break;
      case 3:
        print("Digite o nome do cliente: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do cliente: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do cliente: ");
        var email = stdin.readLineSync();
        var cliente = new Pessoa.construtorFeminino(nome, idade, email);
        print(cliente.sexo);
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
