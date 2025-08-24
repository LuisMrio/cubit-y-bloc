import 'package:cubit_app/presentation/views/modelo/bloc/contador_bloc.dart';
import 'package:cubit_app/presentation/views/modelo/bloc/contador_event.dart';
import 'package:cubit_app/presentation/views/modelo/bloc/contador_state.dart';
import 'package:cubit_app/presentation/views/modelo/cubit/mensaje_cubit.dart';
import 'package:cubit_app/presentation/views/modelo/cubit/mensaje_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ContadorBloc()),
        BlocProvider(create: (_) => MensajeCubit()),
      ],
      child: const MaterialApp(
        home: PaginaPrincipal(),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  void _actualizarTodo(BuildContext context) {
    
    context.read<ContadorBloc>().add(ObtenerNuevoNumero());

    context.read<MensajeCubit>().actualizarMensaje();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc y Cubit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),), centerTitle: true, ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<ContadorBloc, ContadorEstado>(
                  builder: (context, estado) {
                    return Text(
                      'Contador con Bloc: ${estado.numero}',
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
                SizedBox(height: 20),
                BlocBuilder<MensajeCubit, MensajeEstado>(
                  builder: (context, estado) {
                    return Text(
                      'Mensaje con Cubit: ${estado.mensaje}',
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => _actualizarTodo(context),
                  child: Text('Actualizar Bloc y Cubit'),
                ),
              ]
            )
          ],
        ),
      ),
    );
  }
}





