import 'package:flutter/material.dart';

class cardassinatura extends StatefulWidget {
  const cardassinatura({Key? key}) : super(key: key);

  @override
  State<cardassinatura> createState() => _cardassinaturaState();
}

class _cardassinaturaState extends State<cardassinatura> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top:15.0, left:20.0, right:20.0,
      ),
      child: Container(
        padding: EdgeInsets.all(10),
      decoration: BoxDecoration(                                                    
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xffaa0f91), Color(0xff171955)]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 1.5),
          )
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Assine o nível 6 por R\$ 9,90/mês!",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        ],
      ), 
      ),
    );   
}
}