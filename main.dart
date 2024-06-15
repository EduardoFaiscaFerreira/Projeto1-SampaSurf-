
import 'package:flutter/material.dart';

void main() {
  runApp(SampaSurfApp());
}

class SampaSurfApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SampaSurfHomePage(), // Define a página inicial do aplicativo
    );
  }
}

class SampaSurfHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Permite rolar a tela se o conteúdo for maior que a tela
        child: Column(
          children: [
            // Seção do logotipo e barra de busca
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/logo.png', // Caminho da imagem do logotipo
                        height: 50, // Altura do logotipo
                      ),
                      IconButton(
                        icon: Icon(Icons.search), // Ícone de busca
                        onPressed: () {}, // Ação ao pressionar o botão de busca
                      ),
                    ],
                  ),
                  Text(
                    'Em SP o mar é nosso playground', // Texto abaixo do logotipo
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic), // Estilo do texto
                  ),
                ],
              ),
            ),
            // Imagem de surf
            Image.asset(
              'assets/images/surf_image.jpg', // Caminho da imagem
              height: 200, // Altura da imagem
              width: double.infinity, // Largura da imagem para ocupar toda a tela
              fit: BoxFit.cover, // Ajusta a imagem para cobrir toda a área disponível
            ),
            // Botões
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButton(context, 'A ORIGEM', Icons.surfing), // Botão 1
                      _buildButton(context, 'O SURF EM SP', Icons.map), // Botão 2
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildButton(context, 'LOJAS', Icons.store), // Botão 3
                      _buildButton(context, 'PRAIAS', Icons.beach_access), // Botão 4
                    ],
                  ),
                ],
              ),
            ),
            // Botão de Mapas
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {}, // Ação ao pressionar o botão
                child: Text('MAPAS'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Cor de fundo do botão
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Padding do botão
                  textStyle: TextStyle(fontSize: 18), // Tamanho do texto
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para criar os botões com ícone e texto
  Widget _buildButton(BuildContext context, String title, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          size: 40, // Tamanho do ícone
          color: Colors.teal, // Cor do ícone
        ),
        SizedBox(height: 8), // Espaçamento entre o ícone e o texto
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.teal), // Estilo do texto
        ),
      ],
    );
  }
}
