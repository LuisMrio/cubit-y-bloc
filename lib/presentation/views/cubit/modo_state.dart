import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TemaEstado extends Equatable {
  final ThemeMode modo;

  const TemaEstado({required this.modo});

  @override
  List<Object> get props => [modo];
}
