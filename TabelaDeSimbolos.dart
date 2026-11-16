typedef EscopoMap = Map<String, String>;

class TabelaDeSimbolos {
  final List<EscopoMap> _escopos = [{}]; //pilha de escopos
  final List<EscopoMap> _historico =
      []; //lista com {nome, tipo, escopo} usada em dump

  void entrarEscopo() {
    _escopos.add({});
  }

  void sairEscopo() {
    if (_escopos.length > 1) {
      _escopos.removeLast();
    }
  }

  bool existe(String nome) {
    //verifica se foi declarado
    for (int i = _escopos.length - 1; i >= 0; i--) {
      if (_escopos[i].containsKey(nome)) {
        return true;
      }
    }
    return false;
  }

  bool adicionar(String nome, String tipo) {
    final escopoAtual = _escopos.last; // escopo atual = ultimo escopo
    if (escopoAtual.containsKey(nome)) {
      //retorna falso se ja esta no escopo
      return false;
    }
    escopoAtual[nome] = tipo;
    _historico.add({
      'nome': nome,
      'tipo': tipo,
      'escopo':
          _escopos.length == 1 //variavel e global se o escopo so tiver um item
              ? 'Global'
              : 'Local (Nível ${_escopos.length - 1})',
    });
    return true;
  }

  String? getTipo(String nome) {
    //devolve o tipo de simbolo visivel
    for (int i = _escopos.length - 1; i >= 0; i--) {
      if (_escopos[i].containsKey(nome)) {
        return _escopos[i][nome];
      }
    }
    return null;
  }

  String dump() {
    if (_historico.isEmpty) {
      return "Tabela de Símbolos vazia.\n";
    }
    final buffer = StringBuffer();
    buffer.writeln("NOME\t|\tTIPO\t|\tESCOPO");
    buffer.writeln("------------------------------------------");
    for (final item in _historico) {
      buffer
          .writeln("${item['nome']}\t|\t${item['tipo']}\t|\t${item['escopo']}");
    }
    return buffer.toString();
  }
}
