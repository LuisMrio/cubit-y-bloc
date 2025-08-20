import 'package:equatable/equatable.dart';

abstract class MensajeEstado extends Equatable {
  const MensajeEstado();

  @override
  List<Object> get props => [];
}

class MensajeLoading extends MensajeEstado {}

class MensajeSuccess extends MensajeEstado {}
