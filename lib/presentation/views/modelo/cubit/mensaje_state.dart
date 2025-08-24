
import 'package:equatable/equatable.dart';

class MensajeEstado extends Equatable {
  final String mensaje;

  const MensajeEstado({required this.mensaje});

  factory MensajeEstado.inicial() {
    return const MensajeEstado(mensaje: 'actualizame');
  }

  @override
  List<Object> get props => [mensaje];
}
