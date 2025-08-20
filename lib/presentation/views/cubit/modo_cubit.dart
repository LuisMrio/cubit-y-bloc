import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'modo_state.dart';

class TemaCubit extends Cubit<TemaEstado> {
  TemaCubit() : super(const TemaEstado(modo: ThemeMode.light));

  void alternarTema() {
    final nuevoModo = state.modo == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;

    emit(TemaEstado(modo: nuevoModo));
  }
}