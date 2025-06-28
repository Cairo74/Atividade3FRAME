import 'package:atividade_3/widgets/produto_widget.dart';
import 'package:flutter/material.dart';

/// ## HeadsetWidget (Classe Derivada)
///
/// Representa um produto do tipo "Headset".
///
/// ### Herança
/// Esta classe `herda de` `ProdutoWidget`, o que significa que ela automaticamente
/// possui todas as propriedades base (nome, preço, etc.) e deve fornecer
/// uma implementação para o método `build`.
///
/// Além das propriedades herdadas, ela adiciona `temMicrofone` e `tipoConexao`
/// como características específicas de um headset.
class HeadsetWidget extends ProdutoWidget {
  /// Indica se o headset possui um microfone.
  final bool temMicrofone;

  /// O tipo de conexão do headset (ex: "Sem Fio", "USB-C", "P2").
  final String tipoConexao;

  /// Construtor para `HeadsetWidget`.
  ///
  /// Ele recebe tanto as propriedades específicas do headset quanto as
  /// propriedades da classe base. O comando `super` é usado para passar
  /// as propriedades comuns para o construtor da classe pai (`ProdutoWidget`).
  const HeadsetWidget({
    super.key,
    required super.nome,
    required super.preco,
    required super.descricao,
    required super.imagemUrl,
    required super.onTap,
    required this.temMicrofone,
    required this.tipoConexao,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        // Propriedade `margin` para dar espaçamento externo ao card.
        margin: const EdgeInsets.all(10.0),
        // Propriedade `elevation` para controlar a sombra do card.
        elevation: 5,
        // Propriedade `shape` para customizar as bordas do card.
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          // Propriedade `padding` para dar espaçamento interno aos elementos.
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // `ClipRRect` é usado para cortar o widget filho (a imagem) com cantos arredondados.
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
              // `Container` com `decoration` para estilizar o preço.
              Container(
                // Propriedade `padding` dentro do container.
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                // Propriedade `decoration` para adicionar cor de fundo e bordas arredondadas.
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
              // `Divider` é um widget que desenha uma linha horizontal.
              const Divider(),
              const SizedBox(height: 8),
              Text(
                'Conexão: $tipoConexao',
                style: const TextStyle(fontSize: 14),
              ),
              Text(
                'Microfone: ${temMicrofone ? "Sim" : "Não"}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 