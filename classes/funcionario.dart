import '../mixins/abastecer_mixin.dart';
import 'pessoa.dart';

class Funcionario extends Pessoa with Abastecer {
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

  @override
  String toString() {
    return "O funcionário de nome ${this.nome} possui ${this.idade} " +
        "anos com sexo ${this.sexo} email ${this.email} e cargo ${this._cargo}";
  }

  @override
  void desativar() {
    this._cargo = "demitido";
    print("O funcionário foi desativado");
  }
}
