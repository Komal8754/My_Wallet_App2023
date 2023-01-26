
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  const TransactionList({Key? key,required this.transaction}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return           Container(
      height: 300,
      child: ListView.builder(itemBuilder: (ctx,index ){

        return ListTile(
          title: Text(transaction[index].title,style: Theme.of(context).textTheme.titleSmall,),
          leading: Text( "\$ ${transaction[index].amount.toStringAsFixed(2)}"),
          trailing: Text(DateFormat("yyyy/MM/DD").format(transaction[index].date
          )
          ),  subtitle: Text(DateFormat("hh:mm:ss").format(transaction[index].date
        )
        ),
        );
      },
        itemCount: transaction.length,),
    );

  }
}
