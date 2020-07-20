import 'repositorio.dart';
import 'funcionario.dart';

class RepositorioFuncionario implements Repositorio {
  var listaFuncionarios = List<Funcionario>();

  @override
  void cadastrar(funcionario) {
    listaFuncionarios.add(funcionario);
  }

  @override
  void listar() {
    for (var funcionario in listaFuncionarios) {
      print(funcionario);
    }
  }
}
