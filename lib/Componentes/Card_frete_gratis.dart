import 'package:flutter/material.dart';

class cardfretegratis extends StatefulWidget {
  const cardfretegratis({Key? key}) : super(key: key);

  @override
  State<cardfretegratis> createState() => _cardfretegratisState();
}

class _cardfretegratisState extends State<cardfretegratis> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top:15.0, left:20.0, right:20.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(                         
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [                           
            BoxShadow(                            
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(3, 5),
            ),
          ],
        ),                     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.local_shipping_outlined , size: 19, color: Colors.green,
                  ),
                ),

                TextSpan(
                  text: " Frete Grátis ",
                  style: TextStyle(color: Colors.green)
                ),

                TextSpan(
                  text: "em milhões de produtos a partir de R\$79",
                  style: TextStyle(color: Colors.black)
                ),
              ],
            ),
          ),
        ]
      ),
      ),
    );
  }
}