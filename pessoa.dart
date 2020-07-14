class Pessoa {
  String _nome;
  int _idade;
  String _sexo;
  String _email;

  Pessoa(String nome, int idade, String sexo, String email) {
    this._nome = nome;
    this._idade = idade;
    this._sexo = sexo;
    this._email = email;
  }

  Pessoa.construtorMasculino(String nome, int idade, String email) {
    this._nome = nome;
    this._idade = idade;
    this._email = email;
    this._sexo = "Masculino";
  }

  Pessoa.construtorFeminino(String nome, int idade, String email) {
    this._nome = nome;
    this._idade = idade;
    this._email = email;
    this._sexo = "Feminino";
  }
}
