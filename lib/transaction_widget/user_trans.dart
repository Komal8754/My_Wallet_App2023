import 'package:flutter/material.dart';
import 'package:my_wallet2023/transaction_widget/transaction_list.dart';

import '../Model/transaction.dart';
import 'new_transactionList.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransaction=[
    Transaction( title:'boot camp',date: DateTime.now(),amount: 12.2, id: '01'),
    Transaction( title:'course',date: DateTime.now(),amount: 13.2, id: '02'),
    Transaction( title:'Yoga Routine',date: DateTime.now(),amount: 13.2, id: '03'),
    Transaction( title:'Grocery',date: DateTime.now(),amount: 13.2, id: '04'),
    Transaction( title:'facials',date: DateTime.now(),amount: 13.2, id: '05'),
  ];

  void _addNewTransaction(String txtitle,double txamount){
    final newTx=Transaction(id: DateTime.now().toString(), title: txtitle, date: DateTime.now(), amount: txamount);
    setState(() {
      _userTransaction.add(newTx);
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransactionList(_addNewTransaction),
        TransactionList(transaction: _userTransaction,),
      ],
    );
  }
}
