import 'pessoa.dart';

class Funcionario extends Pessoa {
  String _cargo;

  Funcionario(String nome, int idade, String sexo, String email, String cargo)
      : this._cargo = cargo,
        super(nome, idade, sexo, email);

  Funcionario.masculino(String nome, int idade, String email, String cargo)
      : this._cargo = cargo,
        super.construtorMasculino(nome, idade, email);

  Funcionario.feminino(String nome, int idade, String email, String cargo)
      : this._cargo = cargo,
        super.construtorFeminino(nome, idade, email);
}
