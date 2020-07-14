class Pessoa {
  String nome;
  int idade;
  String sexo;
  String email;

  Pessoa(String nome, int idade, String sexo, String email) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.email = email;
  }

  Pessoa.construtorMasculino(String nome, int idade, String email) {
    this.nome = nome;
    this.idade = idade;
    this.email = email;
    this.sexo = "Masculino";
  }

  Pessoa.construtorFeminino(String nome, int idade, String email) {
    this.nome = nome;
    this.idade = idade;
    this.email = email;
    this.sexo = "Feminino";
  }
}
