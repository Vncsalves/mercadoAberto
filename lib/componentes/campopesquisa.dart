import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class campopesquisa extends StatefulWidget {
  const campopesquisa({Key? key}) : super(key: key);

  @override
  State<campopesquisa> createState() => _campopesquisaState();
}

class _campopesquisaState extends State<campopesquisa> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: MediaQuery.of(context).size.width - 110,
            padding: const EdgeInsets.only(top: 10),
            child: TextField(
              onSubmitted: (test) => {},
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(top: 5),
                filled: true,
                fillColor: Colors.white,
                hintText: "Buscar no Mercado Aberto",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffffdb15),
                    width: 0,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.0),
                  ),
                ),
              ),
            ),
          );
    
  }
}