import 'dart:math';
import 'package:cubit_app/presentation/views/modelo/cubit/mensaje_state.dart';
import 'package:cubit_app/presentation/views/modelo/modelo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class MensajeCubit extends Cubit<MensajeEstado> {
  MensajeCubit() : super(MensajeEstado.inicial());

  
  Future<ModeloApi> _simularApi() async {
    await Future.delayed(const Duration(milliseconds: 500)); 
    final numeroAleatorio = Random().nextInt(100);
    final mensajes = [
      'Hola',
      'mensaje aleatorio',
      ':D',
      'hola de nuevo',
      'Hello World',

    ];
    final mensajeAleatorio = mensajes[Random().nextInt(mensajes.length)];
    return ModeloApi(numero: numeroAleatorio, mensaje: mensajeAleatorio);
  }

  
  Future<void> actualizarMensaje() async {
    final datos = await _simularApi();
    emit(MensajeEstado(mensaje: datos.mensaje));
  }
}
