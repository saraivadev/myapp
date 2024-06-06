import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informações Pessoais',
      style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.yellow, // Mudança na cor do título
            ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final String nome = 'Washington Saraiva Santana';
  final int idade = 32;
  final String profissao = 'Empregado Público';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Informações Pessoais',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text(
                'Nome:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(10, 57, 95, 0.863),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                nome,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text(
                'Idade:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(10, 57, 95, 0.863),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                '$idade anos',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const Text(
                'Profissão:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(10, 57, 95, 0.863),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Text(
                profissao,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
