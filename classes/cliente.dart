import 'pessoa.dart';

class Cliente extends Pessoa {
  bool _ativo;

  Cliente(String nome, int idade, String sexo, String email, bool ativo)
      : this._ativo = ativo,
        super(nome, idade, sexo, email);

  Cliente.masculino(String nome, int idade, String email, bool ativo)
      : this._ativo = ativo,
        super.construtorMasculino(nome, idade, email);

  Cliente.feminino(String nome, int idade, String email, bool ativo)
      : this._ativo = ativo,
        super.construtorFeminino(nome, idade, email);

  @override
  String toString() {
    // return super.toString() + " e status ${this._ativo}";
    return "O cliente de nome ${this.nome} possui ${this.idade} " +
        "anos com sexo ${this.sexo} email ${this.email} e status ${this._ativo}";
  }

  @override
  void desativar() {
    this._ativo = false;
    print("Cliente desativado");
  }
}
