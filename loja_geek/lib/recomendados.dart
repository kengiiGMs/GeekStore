import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recomendados extends StatefulWidget {
  const Recomendados({ Key? key }) : super(key: key);

  @override
  State<Recomendados> createState() => _RecomendadosState();
}

class _RecomendadosState extends State<Recomendados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width:double.infinity ,
            padding: EdgeInsets.all(20),
            child:Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Container(
                  child: Text("Recomendações",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text("Ver mais"),
                    onPressed:() {
                    },
                  ),
                ),
              ],
            )
    );
  }
}