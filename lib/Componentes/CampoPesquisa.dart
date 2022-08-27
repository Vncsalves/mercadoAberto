import 'package:flutter/material.dart';

class CampoPesquisa extends StatelessWidget {
  const CampoPesquisa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - (2 * 32) - (8 * 5),
        padding: const EdgeInsets.only(top: 7,),
        child: TextField(
          decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              filled:
                  true, //vai falar que a barra vai ter uma cor para preencher
              fillColor: Colors.white, //a cor
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(50.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(50.0),
              ),
              hintText: 'Buscar no Mercado Aberto'),
        ));
  }
}