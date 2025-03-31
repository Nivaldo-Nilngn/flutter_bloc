import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_tutorial/blocs/client_events.dart';
import 'package:flutter_bloc_tutorial/blocs/client_state.dart';
import 'package:flutter_bloc_tutorial/repositories/clients_repository.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final _clientRepo = ClientsRepository();

  ClientBloc() : super(ClientInitialState()) {
    on<LoadClientEvent>((event, emit) {
      try {
        final clients = _clientRepo.loadClients();
        emit(ClientSuccessState(clients: clients));
      } catch (e) {
        emit(ClientErrorState(message: "Erro ao carregar clientes: $e"));
      }
    });

    on<AddClientEvent>((event, emit) {
      try {
        final clients = _clientRepo.addClient(event.client);
        emit(ClientSuccessState(clients: clients));
      } catch (e) {
        emit(ClientErrorState(message: "Erro ao adicionar cliente: $e"));
      }
    });

    on<RemoveClientEvent>((event, emit) {
      try {
        final clients = _clientRepo.removeClient(event.client);
        emit(ClientSuccessState(clients: clients));
      } catch (e) {
        emit(ClientErrorState(message: "Erro ao remover cliente: $e"));
      }
    });
  }
}
