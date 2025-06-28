import 'package:atividade_3/widgets/produto_widget.dart';
import 'package:flutter/material.dart';

/// ## MouseWidget (Classe Derivada)
///
/// Representa um produto do tipo "Mouse".
///
/// ### Herança
/// Esta classe `herda de` `ProdutoWidget`.
///
/// Adiciona as propriedades `dpi` e `quantidadeBotoes`, que são
/// específicas para mouses.
class MouseWidget extends ProdutoWidget {
  /// A sensibilidade do mouse, medida em DPI (Dots Per Inch).
  final int dpi;

  /// A quantidade de botões que o mouse possui.
  final int quantidadeBotoes;

  /// Construtor para `MouseWidget`.
  ///
  /// Recebe propriedades do mouse e da classe base, passando as
  /// comuns para o construtor `super` de `ProdutoWidget`.
  const MouseWidget({
    super.key,
    required super.nome,
    required super.preco,
    required super.descricao,
    required super.imagemUrl,
    required super.onTap,
    required this.dpi,
    required this.quantidadeBotoes,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imagemUrl,
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                nome,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'R\$ ${preco.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green[800],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              Text(
                'DPI: $dpi',
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                'Botões: $quantidadeBotoes',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 