import 'package:equatable/equatable.dart';

abstract class ContadorEvento extends Equatable {
  const ContadorEvento();

  @override
  List<Object> get props => [];
}

class ObtenerNuevoNumero extends ContadorEvento {}
