
# 📌 Flutter BLoC

Este projeto é um exemplo de uso do **BLoC (Business Logic Component)** no Flutter para gerenciar estados relacionados a clientes. Ele demonstra como estruturar eventos, estados e lógica de negócios separadamente.

## 📋 Funcionalidades
- 🔄 Carregar uma lista de clientes
- ➕ Adicionar um novo cliente
- ❌ Remover um cliente
- ⚠️ Tratar erros ao carregar, adicionar ou remover clientes

## 🛠️ Tecnologias Utilizadas
- **Flutter** - Framework para desenvolvimento mobile
- **Dart** - Linguagem de programação
- **BLoC** - Gerenciamento de estado

## 📂 Estrutura do Projeto

```
/lib
├── blocs/
│   ├── client_bloc.dart         # Lógica do BLoC
│   ├── client_events.dart       # Definição dos eventos
│   └── client_state.dart        # Definição dos estados
│
├── models/
│   └── client.dart              # Modelo de dados do cliente
│
├── repositories/
│   └── clients_repository.dart  # Simulação do repositório de clientes
│
└── main.dart                    # Entrada principal do aplicativo
```

### Descrição das Pastas e Arquivos:

- **`blocs/`**: Contém a lógica do BLoC, definindo os eventos e estados.
  - **`client_bloc.dart`**: Gerencia a lógica do estado de clientes.
  - **`client_events.dart`**: Define os eventos relacionados a clientes, como adicionar ou remover um cliente.
  - **`client_state.dart`**: Define os estados possíveis para a lista de clientes, como sucesso ou erro.

- **`models/`**: Contém os modelos de dados do aplicativo.
  - **`client.dart`**: Modelo de dados para os clientes.

- **`repositories/`**: Contém a simulação dos repositórios de dados.
  - **`clients_repository.dart`**: Responsável pela simulação das operações de dados dos clientes, como adicionar, buscar ou remover.

- **`main.dart`**: O arquivo principal onde o aplicativo é inicializado.

## 🚀 Como Executar
1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/flutter_bloc_tutorial.git
   ```

2. Acesse o diretório do projeto:
   ```sh
   cd flutter_bloc_tutorial
   ```

3. Instale as dependências:
   ```sh
   flutter pub get
   ```

4. Execute o projeto:
   ```sh
   flutter run
   ```

## 🎯 Como Funciona o BLoC

- **`ClientBloc`**: Gerencia os eventos e emite os estados.
- **`ClientEvent`**: Define os tipos de eventos (`LoadClientEvent`, `AddClientEvent`, `RemoveClientEvent`).
- **`ClientState`**: Define os estados (`ClientInitialState`, `ClientSuccessState`, `ClientErrorState`).

## 📌 Exemplo de Uso

Para adicionar um cliente, dispare um evento assim:

```dart
context.read<ClientBloc>().add(AddClientEvent(client: novoCliente));
```

## 🌐 Teste o Projeto

Você pode testar a aplicação Flutter Web online no Netlify: [Testar Flutter BLoC](https://clientflutterbloc.netlify.app/)

## 📖 Licença

Este projeto está sob a licença MIT. Sinta-se livre para usá-lo e modificá-lo! 😊
