import 'package:equatable/equatable.dart';

abstract class MensajeEvento extends Equatable {
  const MensajeEvento();

  @override
  List<Object> get props => [];
}

class EnviarMensaje extends MensajeEvento {}