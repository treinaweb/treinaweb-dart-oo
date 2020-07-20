import 'repositorio.dart';
import 'cliente.dart';

class RepositorioCliente implements Repositorio {
  var listaClientes = List<Cliente>();

  @override
  void cadastrar(cliente) {
    listaClientes.add(cliente);
  }

  @override
  void listar() {
    for (var cliente in listaClientes) {
      print(cliente);
    }
  }
}
