import 'package:atividade_3/widgets/produto_widget.dart';
import 'package:flutter/material.dart';

/// ## TecladoWidget (Classe Derivada)
///
/// Representa um produto do tipo "Teclado".
///
/// ### Herança
/// Esta classe `herda de` `ProdutoWidget`, reutilizando a estrutura e
/// propriedades base.
///
/// Adiciona as propriedades `layout` e `eMecanico` que são específicas
/// para teclados.
class TecladoWidget extends ProdutoWidget {
  /// O layout do teclado (ex: "ABNT2", "ANSI", "ISO").
  final String layout;

  /// Indica se o teclado é mecânico.
  final bool eMecanico;

  /// Construtor para `TecladoWidget`.
  ///
  /// Recebe propriedades do teclado e da classe base, passando as
  /// comuns para o construtor `super` de `ProdutoWidget`.
  const TecladoWidget({
    super.key,
    required super.nome,
    required super.preco,
    required super.descricao,
    required super.imagemUrl,
    required super.onTap,
    required this.layout,
    required this.eMecanico,
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
                'Layout: $layout',
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                'Mecânico: ${eMecanico ? "Sim" : "Não"}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 