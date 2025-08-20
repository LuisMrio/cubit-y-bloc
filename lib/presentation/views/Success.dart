import 'package:cubit_app/presentation/views/bloc/mensaje_bloc.dart';
import 'package:cubit_app/presentation/views/bloc/mensaje_event.dart';
import 'package:cubit_app/presentation/views/cubit/modo_cubit.dart';
import 'package:cubit_app/presentation/views/cubit/modo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Success extends StatelessWidget {
  const Success({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cubit y Bloc", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 35, ),),centerTitle: true,),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16)),
          TextField(
            decoration: InputDecoration(labelText: "escribe aqui", border: OutlineInputBorder(), labelStyle:TextStyle(fontSize: 20),),
            
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<MensajeBloc>().add(EnviarMensaje());
            },
            child: Text("Enviar"),
          ),
    
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              final modo = context.read<TemaCubit>();
              modo.alternarTema();
            },
            child: Text("Cambiar modo"),
          )
    
        ],
      ),
    );
  }
}
