import 'package:flutter/material.dart';
import 'evento_item.dart';
import 'evento_model.dart';
import 'add_evento_screen.dart';
import 'evento_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Evento> eventos = [];

  @override
  void initState() {
    super.initState();
    // Eventos mockados para demonstração
    eventos = [
      Evento(
        id: '1',
        nome: 'Festa Junina',
        data: DateTime.now().add(Duration(days: 7)),
        cidade: 'São Paulo',
        estado: 'SP',
        endereco: 'Rua Exemplo, 123',
        descricao: 'Festa tradicional com comidas típicas e quadrilha',
        publico: 'Todas as idades',
      ),
      Evento(
        id: '2',
        nome: 'Feira de Artesanato',
        data: DateTime.now().add(Duration(days: 14)),
        cidade: 'Rio de Janeiro',
        estado: 'RJ',
        endereco: 'Avenida Principal, 456',
        descricao: 'Feira com produtos artesanais da região',
        publico: 'Adulto',
      ),
    ];
  }

  void _adicionarEvento(Evento novoEvento) {
    setState(() {
      eventos.add(novoEvento);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos Comunitários'),
        centerTitle: true,
      ),
      body: eventos.isEmpty
          ? Center(
              child: Text(
                'Nenhum evento cadastrado',
                style: TextStyle(fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8),
              itemCount: eventos.length,
              itemBuilder: (context, index) {
                return EventoItem(
                  evento: eventos[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EventoDetailScreen(evento: eventos[index]),
                      ),
                    );
                  },
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final novoEvento = await Navigator.push<Evento>(
            context,
            MaterialPageRoute(builder: (context) => AddEventoScreen()),
          );
          
          if (novoEvento != null) {
            _adicionarEvento(novoEvento);
          }
        },
        child: Icon(Icons.add),
        tooltip: 'Adicionar Evento',
      ),
    );
  }
}