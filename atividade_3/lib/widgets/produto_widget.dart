import 'package:flutter/material.dart';

/// ## ProdutoWidget (Classe Base Abstrata)
///
/// Esta é a classe base para todos os widgets de produto no aplicativo.
/// Ela herda de `StatelessWidget`, o que significa que seus próprios dados não mudam ao longo do tempo.
///
/// ### Conceito de Herança
/// `ProdutoWidget` foi projetada para ser estendida por outras classes. Qualquer widget de produto
/// (como `HeadsetWidget`, `TecladoWidget`, etc.) herdará as propriedades e a estrutura
/// definidas aqui, promovendo a reutilização de código e uma arquitetura organizada.
///
/// As classes filhas são obrigadas a implementar o método `build`, pois esta é abstrata,
/// mas elas podem (e devem) chamar o construtor da classe pai (`super`) para inicializar
/// as propriedades comuns.
abstract class ProdutoWidget extends StatelessWidget {
  /// Nome do produto a ser exibido.
  final String nome;

  /// Preço do produto.
  final double preco;

  /// Descrição detalhada do produto.
  final String descricao;

  /// URL ou caminho local para a imagem do produto.
  /// A pasta `assets/images/` deve ser usada para imagens locais.
  final String imagemUrl;

  /// Função a ser executada quando o widget do produto for tocado.
  /// Geralmente usada para navegar para uma tela de detalhes.
  final VoidCallback onTap;

  /// Construtor da classe base `ProdutoWidget`.
  ///
  /// Exige que todas as propriedades sejam fornecidas ao criar uma instância.
  /// As classes filhas devem chamar este construtor usando `super`.
  const ProdutoWidget({
    super.key,
    required this.nome,
    required this.preco,
    required this.descricao,
    required this.imagemUrl,
    required this.onTap,
  });
} 