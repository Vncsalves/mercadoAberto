import 'package:flutter/material.dart';
import 'package:mrecadoabertonovo/componentes/cardfrete.dart';
import 'componentes/campopesquisa.dart';
import 'componentes/cardas.dart';
import 'componentes/botaoicon.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mercado Aberto'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        elevation: 0,
        backgroundColor: Color(0xffffdb15),
        leading: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        actions: [
          campopesquisa(),
          
          Padding(padding: EdgeInsets.all(6)),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 32,
            ),
          ),
          Padding(padding: EdgeInsets.all(6)),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Color(0xffffdb15),
            height: 40.0,
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.all(5)),
                Icon(
                  Icons.pin_drop_outlined,
                  size: 22,
                ),
                Padding(padding: EdgeInsets.all(5)),
                Text("Enviar para"),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: FractionalOffset(0.5, 0.2),
            colors: [
              Color(0xffffdb15),
              Color(0xfff5f5f5),
            ],
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(3),
              height: 180,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP650326-MLA50239834698_062022-B.jpg',
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
           cardas(),
            const Padding(padding: EdgeInsets.all(5)),
            cardfrete(),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
                botaoicon(icone: Icons.phone_android_rounded),
                botaoicon(icone: Icons.local_offer_outlined),
                botaoicon(icone: Icons.shopping_basket_outlined),
                botaoicon(icone: Icons.directions_car_outlined),
                botaoicon(icone: Icons.add_box_outlined),
            ],
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("ofertas"),
              
            ],
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
