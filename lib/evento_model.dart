class Evento {
  final String id;
  final String nome;
  final DateTime data;
  final String cidade;
  final String estado;
  final String endereco;
  final String descricao;
  final String publico;

  Evento({
    required this.id,
    required this.nome,
    required this.data,
    required this.cidade,
    required this.estado,
    required this.endereco,
    required this.descricao,
    required this.publico,
  });

  // Método para criar um Evento a partir de um Map
  factory Evento.fromMap(Map<String, dynamic> map, String id) {
    return Evento(
      id: id,
      nome: map['nome'] ?? '',
      data: DateTime.parse(map['data']),
      cidade: map['cidade'] ?? '',
      estado: map['estado'] ?? '',
      endereco: map['endereco'] ?? '',
      descricao: map['descricao'] ?? '',
      publico: map['publico'] ?? 'Todas as idades',
    );
  }

  // Método para converter um Evento em Map
  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'data': data.toIso8601String(),
      'cidade': cidade,
      'estado': estado,
      'endereco': endereco,
      'descricao': descricao,
      'publico': publico,
    };
  }
}