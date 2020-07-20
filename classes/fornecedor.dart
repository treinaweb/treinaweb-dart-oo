import '../mixins/abastecer_mixin.dart';
import 'pessoa.dart';

class Fornecedor extends Pessoa with Abastecer {
  String _empresa;

  Fornecedor(String nome, int idade, String sexo, String email, String empresa)
      : this._empresa = empresa,
        super(nome, idade, sexo, email);

  Fornecedor.masculino(String nome, int idade, String email, String empresa)
      : this._empresa = empresa,
        super.construtorMasculino(nome, idade, email);

  Fornecedor.feminino(String nome, int idade, String email, String empresa)
      : this._empresa = empresa,
        super.construtorFeminino(nome, idade, email);

  @override
  String toString() {
    return "O funcionário de nome ${this.nome} possui ${this.idade} " +
        "anos com sexo ${this.sexo} email ${this.email} e empresa ${this._empresa}";
  }

  @override
  void desativar() {
    this._empresa = "sem contrato";
    print("O funcionário foi desativado");
  }
}
