import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class botaoicon extends StatefulWidget {
  const botaoicon({Key? key, required this.icone}) : super(key: key);
  final IconData icone;


  @override
  State<botaoicon> createState() => _botaoiconState();
}

class _botaoiconState extends State<botaoicon> {
  bool selecionado = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() =>{
          selecionado = !selecionado
        })
      },
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 206, 208, 209),
              spreadRadius: 0,
              blurRadius: 5,
           
            )
          ]
        ),
        child: Icon(
          widget.icone,
          color: selecionado ? Colors.blue : Color.fromARGB(255, 54, 53, 53),
        ),
      )
    );
  }
}