import 'package:equatable/equatable.dart';

class ContadorEstado extends Equatable {
  final int numero;

  const ContadorEstado({required this.numero});

 
  factory ContadorEstado.inicial() {
    return const ContadorEstado(numero: 0);
  }

  @override
  List<Object> get props => [numero];
}
