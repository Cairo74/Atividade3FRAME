📱 Atividade Avaliativa - Catálogo de Produtos em Flutter 📋 Descrição Este projeto é um aplicativo Flutter desenvolvido como parte de uma atividade avaliativa para a o COTEMIG. O objetivo principal foi aplicar conceitos de Programação Orientada a Objetos (POO) no desenvolvimento de widgets personalizados e reutilizáveis, além de praticar a navegação entre telas. O app simula um Catálogo de Produtos de Informática, apresentando diferentes categorias (Headset, Teclado e Mouse), cada uma com propriedades e widgets específicos.

✅ Funcionalidades 📄 Listagem de Produtos: Exibe uma lista de produtos de informática disponíveis no catálogo.

🧱 Widgets Customizados por Categoria: Cada tipo de produto possui seu próprio widget que herda de uma classe base comum.

🔎 Tela de Detalhes: Ao clicar em um produto, o usuário é direcionado para uma tela com informações detalhadas sobre aquele item.

🎨 Uso de Imagens: Cada produto apresenta uma imagem ilustrativa, além de nome, preço e descrição.

🛠️ Tecnologias e Conceitos Aplicados Linguagem: Dart

Framework: Flutter

📚 Conceitos de Programação Orientada a Objetos (POO): Herança: Cada tipo de produto (Headset, Teclado, Mouse) herda da classe base ProdutoWidget.

Classes Abstratas: A classe ProdutoWidget é abstrata e define as propriedades comuns (nome, preço, descrição e imagemUrl).

Polimorfismo na UI: Cada categoria de produto implementa suas próprias propriedades e widgets de apresentação, permitindo criar interfaces específicas a partir de uma estrutura comum.

🚀 Como Executar o Projeto Siga os passos abaixo para rodar o aplicativo localmente:

Clone o repositório: git clone https://github.com/Cairo74/Atividade3FRAME

Navegue até o diretório do projeto: cd seu-repositorio

Baixe as dependências: flutter pub get

Execute o projeto: flutter run

Observação: Certifique-se de ter o Flutter SDK instalado e um dispositivo/emulador configurado antes de executar o projeto.
