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
      title: 'Flutter Demo',
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
        leading: Icon(Icons.menu, color: Colors.black,),
        title: Text(widget.title, style: TextStyle(color: Colors.black),),
        
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.shopping_cart_outlined), 
            alignment: Alignment(-3.0, 0.0),
            color: Colors.black,
            tooltip: "Compras" // texto que aparece ao passar mouse por cima
          )
        ],
        backgroundColor: Color(0xfff5d415),
        //backgroundColor: Colors.red , é outra forma de colocar cores de fundo
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[],
        ),
      ),
    );
  }
}
