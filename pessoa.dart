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

  String get nome {
    return this._nome;
  }

  int get idade {
    return this._idade;
  }

  String get email {
    return this._email;
  }

  String get sexo {
    return this._sexo;
  }
}
