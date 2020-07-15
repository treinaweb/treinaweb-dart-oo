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

  void set nome(String nome) {
    this._nome = nome;
  }

  void set idade(int nome) {
    this._idade = idade;
  }

  void set email(String email) {
    this._email = email;
  }

  void set sexo(String sexo) {
    this._sexo = sexo;
  }

  int fazerAniversario() {
    this._idade++;
    return this._idade;
  }

  void adicionarSobrenome(String sobrenome) {
    this._nome = this._nome + " " + sobrenome;
  }
}
