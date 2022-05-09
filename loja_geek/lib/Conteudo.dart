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
    child: Image.asset("promo.jpg"),
  );
  }
}