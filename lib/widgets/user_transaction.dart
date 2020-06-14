import 'package:flutter/material.dart';
import './new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      title: 'Shoes',
      amount: 1000,
      id: '1',
      date: DateTime.now(),
    ),
    Transaction(
      title: 'Shirt',
      amount: 1500,
      id: '2',
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txtitle, double txamount) {
    final newtx = Transaction(
      title: txtitle,
      amount: txamount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Newtransaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
