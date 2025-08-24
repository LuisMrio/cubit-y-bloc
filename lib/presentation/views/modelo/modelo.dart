import 'package:equatable/equatable.dart';

class ModeloApi extends Equatable {
  final int numero;
  final String mensaje;

  const ModeloApi({
    required this.numero,
    required this.mensaje,
  });

  factory ModeloApi.desdeJson(Map<String, dynamic> json) {
    return ModeloApi(
      numero: json['numero'],
      mensaje: json['mensaje'],
    );
  }

  Map<String, dynamic> aJson() {
    return {
      'numero': numero,
      'mensaje': mensaje,
    };
  }

  @override
  List<Object> get props => [numero, mensaje];
}
