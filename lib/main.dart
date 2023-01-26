import 'package:flutter/material.dart';

import 'Model/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   List<Transaction> transaction=[

    Transaction( title:'boot camp',date: DateTime.now(),amount: 12.2, id: '01'),
    Transaction( title:'course',date: DateTime.now(),amount: 13.2, id: '02'),
    Transaction( title:'Yoga Routine',date: DateTime.now(),amount: 13.2, id: '03'),
    Transaction( title:'Grocery',date: DateTime.now(),amount: 13.2, id: '04'),
    Transaction( title:'facials',date: DateTime.now(),amount: 13.2, id: '05'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc_outlined),
      ),
      body: Container(
        height: 300,
        child: ListView.builder(itemBuilder: (ctx,index ){

          return ListTile(
            title: Text(transaction[index].title,style: Theme.of(context).textTheme.titleSmall,),
            leading: Text(transaction[index].id),

          );
        },
          itemCount: transaction.length,),
      ),
    );
  }
}
