import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Conteudo extends StatefulWidget {
  const Conteudo({ Key? key }) : super(key: key);

  @override
  State<Conteudo> createState() => _ConteudoState();
}

class _ConteudoState extends State<Conteudo> {
  @override
  Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
    
    child: Column(
      mainAxisAlignment : MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ClipRRect(borderRadius: BorderRadius.circular(20.0),
          child: Center(child: Image.asset("promo.jpg",width: 450)),
          ),
          ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:  Column(children: [ClipRRect(borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("batman1.jpg",width: 220,)
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:  Column(children: [ClipRRect(borderRadius: BorderRadius.circular(20.0),
                child: Image.asset("batman1.jpg",width: 220)
                    ),
                  ],
                ),
              ),
            ],     
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Container(
                  child: Text("Recomendações",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple),),
                ),
                Container(
                  child: ElevatedButton(
                    child: Text("Ver mais"),
                    onPressed:() {
                    },
                  ),
                ),
              ],
          ),
        )
      ]
    ),
  );
  }
}

