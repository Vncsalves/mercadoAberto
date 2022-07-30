import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class cardas extends StatefulWidget {
  const cardas({Key? key}) : super(key: key);

  @override
  State<cardas> createState() => _cardasState();
}

class _cardasState extends State<cardas> {
  @override
  Widget build(BuildContext context) {
    return  Container(
              padding: const EdgeInsets.all(8),
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
                  )
                ],
              ),
            );
    
  }
}