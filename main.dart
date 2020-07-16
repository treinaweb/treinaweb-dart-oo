import 'dart:io';

import 'cliente.dart';
import 'funcionario.dart';
import 'pessoa.dart';

main() {
  var opcao;
  var listaClientes = List<Cliente>();
  var listaFuncionarios = List<Funcionario>();
  do {
    print("MENU: ");
    print("1 - Cadastrar Cliente");
    print("2 - Cadastrar Cliente Masculino");
    print("3 - Cadastrar Cliente Feminino");
    print("4 - Listar Clientes");
    print("5 - Cadastrar Funcionário");
    print("6 - Cadastrar Funcionário Masculino");
    print("7 - Cadastrar Funcionário Feminino");
    print("8 - Listar Funcionários");
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
        var cliente = new Cliente(nome, idade, email, sexo, true);
        listaClientes.add(cliente);

        break;
      case 2:
        print("Digite o nome do cliente: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do cliente: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do cliente: ");
        var email = stdin.readLineSync();
        var cliente = new Cliente.masculino(nome, idade, email, true);
        listaClientes.add(cliente);
        // print(cliente.sexo);
        break;
      case 3:
        print("Digite o nome do cliente: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do cliente: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do cliente: ");
        var email = stdin.readLineSync();
        var cliente = new Cliente.feminino(nome, idade, email, true);
        listaClientes.add(cliente);

        // print(cliente.sexo);
        break;
      case 4:
        for (var cliente in listaClientes) {
          print(cliente);
        }
        break;
      case 5:
        print("Digite o nome do funcionario: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do funcionario: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do funcionario: ");
        var email = stdin.readLineSync();
        print("Digite o sexo do funcionario: ");
        var sexo = stdin.readLineSync();
        print("Digite o cargo do funcionario: ");
        var cargo = stdin.readLineSync();
        var funcionario = new Funcionario(nome, idade, email, sexo, cargo);
        listaFuncionarios.add(funcionario);
        break;
      case 6:
        print("Digite o nome do funcionario: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do funcionario: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do funcionario: ");
        var email = stdin.readLineSync();
        print("Digite o cargo do funcionario: ");
        var cargo = stdin.readLineSync();
        var funcionario = new Funcionario.masculino(nome, idade, email, cargo);
        listaFuncionarios.add(funcionario);
        // print(cliente.sexo);
        break;
      case 7:
        print("Digite o nome do funcionario: ");
        var nome = stdin.readLineSync();
        print("Digite a idade do funcionario: ");
        var idade = int.parse(stdin.readLineSync());
        print("Digite o email do funcionario: ");
        var email = stdin.readLineSync();
        print("Digite o cargo do funcionario: ");
        var cargo = stdin.readLineSync();
        var funcionario = new Funcionario.feminino(nome, idade, email, cargo);
        listaFuncionarios.add(funcionario);

        // print(cliente.sexo);
        break;
      case 8:
        for (var funcionario in listaFuncionarios) {
          print(funcionario);
        }
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

  // print(cliente.nome);
  // // print("Digite o sobrenome do cliente: ");
  // // var sobrenome = stdin.readLineSync();
  // // cliente.adicionarSobrenomeLambda(sobrenome);
  // // print(cliente.nome);
  // // print(cliente.fazerAniversarioLambda());
  // print(cliente.toString());
}
