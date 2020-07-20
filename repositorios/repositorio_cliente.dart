import 'repositorio.dart';
import '../classes/cliente.dart';

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
