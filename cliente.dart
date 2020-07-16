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
}
