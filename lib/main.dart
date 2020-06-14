
import 'package:MyExpense/widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './models/transaction.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Expense',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
   
  ];
  // String titleInput;
  // String amountInput;
  final titleController =TextEditingController();
  final amountController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Expenses'),
      ),
      body: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
          width: double.infinity,
          child: Card(
            color: Colors.green,
            child: Text('CHArt'),
          ),
                ),
               UserTransaction(),
              ],
            ),
      ),
    );
  }
}
