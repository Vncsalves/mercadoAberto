
//  Atalho: stf

import 'package:flutter/material.dart';

class BotaoCategoria extends StatefulWidget {
  const BotaoCategoria({ Key? key, required this.icone, required this.sub}) : super(key: key);

  final IconData icone;
  final String sub;  // Criar uma variavel para alterar somente os icones do botao

  @override
  _BotaoCategoriaState createState() => _BotaoCategoriaState();
}

class _BotaoCategoriaState extends State<BotaoCategoria> {

  bool selecionado = false; // O false indica que o botao nao esta selecionado

  @override
  Widget build(BuildContext context) {

    return GestureDetector(  // Define uma acao para todos dentro dele (filhos)

      // OnTap e a interaçao do usuario com o componente 
      onTap: () => { 
        setState(() => {
             selecionado = !selecionado
        })
      },

 child: MouseRegion(  // Define uma acao para todos dentro dele (filhos)

      // OnTap e a interaçao do usuario com o componente 
      onEnter: (PointerEvent details) => { 
        setState(() => {
             selecionado = !selecionado
        })
      },

       onExit: (PointerEvent details) => { 
        setState(() => {
             selecionado = !selecionado
        })
      },
      
      child: 
      Padding(padding: EdgeInsets.all(10),
      
      child: Column(
        children: [
Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(

        color: Colors.white, // Mudar a cor do botao ao ser clicado

        borderRadius: BorderRadius.circular(100)
      ),
      child: Icon(

        // widget serve para chamar a variavel
        widget.icone,  // Variavel que muda o icone do botao

        size: 30,
        color: selecionado ? Colors.blue : Colors.grey,
      ),
      ),
      Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Text("${widget.sub}", style: TextStyle(color: selecionado ? Colors.blue : Colors.black),
 
        ),
      ),


        ],
       ),
      ),
 ),
    );
  }
}