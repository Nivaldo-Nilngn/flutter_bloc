import 'package:flutter_bloc_tutorial/models/client.dart';

abstract class ClientState {
  final List<Client> clients;

  ClientState({required this.clients});
}

class ClientInitialState extends ClientState {
  ClientInitialState() : super(clients: []);
}

class ClientSuccessState extends ClientState {
  ClientSuccessState({required List<Client> clients}) : super(clients: clients);
}

class ClientErrorState extends ClientState {
  final String message;

  ClientErrorState({required this.message}) : super(clients: []);
}
