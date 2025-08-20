import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cubit y Bloc", style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 35, ),),centerTitle: true,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(strokeWidth: 8, color: Colors.black ,),
              )
    
            ],
          )
          
        ],
      ),
    );
  }
}