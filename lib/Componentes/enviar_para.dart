import 'package:flutter/material.dart';


class EnviarPara extends StatefulWidget {
  const EnviarPara({Key? key}) : super(key: key);

  @override
  State<EnviarPara> createState() => _EnviarParaState();
}

class _EnviarParaState extends State<EnviarPara> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Enviar para Maria Eduarda - Rua Jardim California, 294",
                      style: TextStyle(fontSize: 13.0),
                      textAlign: TextAlign.left,
                    ),
                  );
  }
}