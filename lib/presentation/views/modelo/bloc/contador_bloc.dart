import 'dart:math';
import 'package:cubit_app/presentation/views/modelo/bloc/contador_event.dart';
import 'package:cubit_app/presentation/views/modelo/bloc/contador_state.dart';
import 'package:cubit_app/presentation/views/modelo/modelo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ContadorBloc extends Bloc<ContadorEvento, ContadorEstado> {
  ContadorBloc() : super(ContadorEstado.inicial()) {
    on<ObtenerNuevoNumero>(_alObtenerNuevoNumero);
  }

  
  Future<ModeloApi> _simularApi() async {
    await Future.delayed(const Duration(milliseconds: 500)); 
    final numeroAleatorio = Random().nextInt(100);
    final mensaje = 'Este mensaje no se usa aquí';
    return ModeloApi(numero: numeroAleatorio, mensaje: mensaje);
  }

  
  Future<void> _alObtenerNuevoNumero(
    ObtenerNuevoNumero event,
    Emitter<ContadorEstado> emit,
  ) async {
    final datos = await _simularApi();
    emit(ContadorEstado(numero: datos.numero));
  }
}

