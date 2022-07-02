import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado Livre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, //retira faixa de debug da tela
      home: const MyHomePage(title: 'Mercado Livre'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        // title: Text(widget.title, style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Container(
                width: 300,
                height: 250,
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Buscar no Mercado Aberto',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            borderSide: BorderSide(width: 5.0))),
                  ),
                )),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
              alignment: Alignment(-1.0, 0.0),
              color: Colors.black,
              tooltip: "Compras" // texto que aparece ao passar mouse por cima
              )
        ],

        bottom: PreferredSize(
            preferredSize: Size.fromHeight(10),
            child: Row(
              children: [
                Padding(
                  child: Icon(Icons.location_on_outlined),
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                ),
                Expanded(
                    child: Text(
                        "Enviar para Marcello Queiroz - Rua Jardim Paulista, 56",
                        textAlign: TextAlign.center)),
              ],
            )),

        backgroundColor: Color(0xfff5d415),
        //backgroundColor: Colors.red , é outra forma de colocar cores de fundo
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
              // end: Alignment(0, -0.4),
              colors: [Color(0xfff5d415), Color(0xfff5f5f5)]),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [],
      //   ),
      // ),
    );
  }
}
