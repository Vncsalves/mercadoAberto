import 'dart:ui';
import 'package:flutter/material.dart';

class BotaoCategoria extends StatefulWidget {
  const BotaoCategoria({Key? key, required this.icone, this.texto}) : super(key: key);
  final IconData icone;
  final String? texto;

  @override
  State<BotaoCategoria> createState() => _BotaoCategoriaState();
}

class _BotaoCategoriaState extends State<BotaoCategoria> {
  bool selecionado = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          selecionado = !selecionado
        })
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color:Colors.grey.shade600,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(3, 3),
                  )
                ],
              ), 
              child: Icon(
                color: selecionado ? Colors.blue : Colors.grey,
                widget.icone,
                size: 30,
              ),        
            ),
          
            Padding(padding: EdgeInsets.only(top:10,)),
            Text(widget.texto ?? "", style: TextStyle(color: selecionado ? Colors.blue : Colors.grey,),),
          ],
        ),
      ),
    );
  }
}