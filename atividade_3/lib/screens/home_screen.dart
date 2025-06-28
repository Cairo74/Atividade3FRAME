import 'package:atividade_3/screens/product_detail_screen.dart';
import 'package:atividade_3/widgets/headset_widget.dart';
import 'package:atividade_3/widgets/mouse_widget.dart';
import 'package:atividade_3/widgets/teclado_widget.dart';
import 'package:flutter/material.dart';

/// Tela principal que exibe o catálogo de produtos.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de produtos centralizada para evitar repetição de código (princípio DRY).
    // Cada mapa representa um produto com todas as suas propriedades.
    final List<Map<String, dynamic>> produtos = [
      {
        'tipo': 'headset',
        'nome': "Headset Gamer Pro",
        'preco': 350.00,
        'descricao':
            "Experimente a imersão sonora total com o Headset Gamer Pro. Conforto e clareza de áudio para longas sessões de jogo.",
        'imagemUrl': "assets/images/headset.jpg",
        'temMicrofone': true,
        'tipoConexao': "Sem Fio",
      },
      {
        'tipo': 'teclado',
        'nome': "Teclado Mecânico RGB",
        'preco': 499.90,
        'descricao':
            "Teclado mecânico com switches de alta precisão e iluminação RGB customizável. Ideal para gamers e programadores.",
        'imagemUrl': "assets/images/keyboard.jfif",
        'layout': "ABNT2",
        'eMecanico': true,
      },
      {
        'tipo': 'mouse',
        'nome': "Mouse Gamer Precision",
        'preco': 250.00,
        'descricao':
            "Mouse com sensor óptico de alta precisão, design ergonômico e botões programáveis para máximo desempenho.",
        'imagemUrl': "assets/images/mouse.jfif",
        'dpi': 16000,
        'quantidadeBotoes': 8,
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Produtos'),
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
      ),
      // Usando `ListView.builder` para construir a lista de forma mais eficiente,
      // especialmente útil para listas longas.
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          final produto = produtos[index];

          // Função para lidar com a navegação, reutilizando os dados do mapa `produto`.
          void navigateToDetails(Map<String, String> detalhesExtras) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(
                  nome: produto['nome'],
                  preco: produto['preco'],
                  descricao: produto['descricao'],
                  imagemUrl: produto['imagemUrl'],
                  detalhesExtras: detalhesExtras,
                ),
              ),
            );
          }

          // Usa um `switch` para determinar qual widget de produto construir
          // com base no campo 'tipo'.
          switch (produto['tipo']) {
            case 'headset':
              return HeadsetWidget(
                nome: produto['nome'],
                preco: produto['preco'],
                descricao: produto['descricao'],
                imagemUrl: produto['imagemUrl'],
                temMicrofone: produto['temMicrofone'],
                tipoConexao: produto['tipoConexao'],
                onTap: () => navigateToDetails({
                  'Conexão': produto['tipoConexao'],
                  'Microfone': produto['temMicrofone'] ? "Sim" : "Não",
                }),
              );
            case 'teclado':
              return TecladoWidget(
                nome: produto['nome'],
                preco: produto['preco'],
                descricao: produto['descricao'],
                imagemUrl: produto['imagemUrl'],
                layout: produto['layout'],
                eMecanico: produto['eMecanico'],
                onTap: () => navigateToDetails({
                  'Layout': produto['layout'],
                  'Mecânico': produto['eMecanico'] ? "Sim" : "Não",
                }),
              );
            case 'mouse':
              return MouseWidget(
                nome: produto['nome'],
                preco: produto['preco'],
                descricao: produto['descricao'],
                imagemUrl: produto['imagemUrl'],
                dpi: produto['dpi'],
                quantidadeBotoes: produto['quantidadeBotoes'],
                onTap: () => navigateToDetails({
                  'DPI': produto['dpi'].toString(),
                  'Quantidade de Botões':
                      produto['quantidadeBotoes'].toString(),
                }),
              );
            default:
              // Retorna um container vazio caso o tipo seja desconhecido.
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
} 