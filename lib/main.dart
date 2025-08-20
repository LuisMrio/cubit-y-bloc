import 'package:cubit_app/presentation/views/Success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/views/bloc/mensaje_bloc.dart';
import 'presentation/views/cubit/modo_cubit.dart';
import 'presentation/views/cubit/modo_state.dart';


void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TemaCubit()),
        BlocProvider(create: (_) => MensajeBloc()),
      ],
      child: BlocBuilder<TemaCubit, TemaEstado>(
        builder: (context, estado) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Ejemplo Bloc + Cubit',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: estado.modo,
            home: const Success(),
          );
        },
      ),
    );
  }
}






