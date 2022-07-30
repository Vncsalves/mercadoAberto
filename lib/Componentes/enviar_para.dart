import 'package:flutter/material.dart';
import 'dart:ui';

class EnviarPara extends StatefulWidget {
  const EnviarPara({Key? key}) : super(key: key);

  @override
  State<EnviarPara> createState() => _EnviarParaState();
}

class _EnviarParaState extends State<EnviarPara> {
  bool texto = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {
          texto = !texto
        })
      },
      child: Row(
        children: [
          Padding(
        padding: EdgeInsets.only(left: 18),
        child: Icon(
          Icons.pin_drop_outlined,
          color: Colors.black,
          size: 19.0,
        ),
      ),
      
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: Text(
        texto ? "Enviar para" : "Enviar para João Pedro - Avenida Mauá, 294",
          style: TextStyle(fontSize: 13.0),
          textAlign: TextAlign.left,
        ),
      ),
        ],
      ),

    );
  }
}