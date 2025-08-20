import 'package:flutter_bloc/flutter_bloc.dart';

import 'mensaje_event.dart';
import 'mensaje_state.dart';


class MensajeBloc extends Bloc<MensajeEvento, MensajeEstado> {
  MensajeBloc() : super(MensajeSuccess()) {
    on<EnviarMensaje>(_onEnviarMensaje);
  }

  Future<void> _onEnviarMensaje(
      EnviarMensaje event, Emitter<MensajeEstado> emit) async {
    emit(MensajeLoading());

    await Future.delayed(const Duration(seconds: 2)); 

    emit(MensajeSuccess());
  }
}
