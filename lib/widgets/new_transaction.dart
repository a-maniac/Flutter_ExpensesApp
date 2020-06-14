import 'package:flutter/material.dart';
import './user_transaction.dart';


class Newtransaction extends StatelessWidget {

  final Function addTx;

  final titleController=TextEditingController();
  final amountController=TextEditingController();

  Newtransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return  Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                    // onChanged: (val){
                    // //  titleInput=val;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    controller: amountController,
                   // onChanged: (val)=>amountInput=val,
                  ),
                  FlatButton(
                    
                    child: Text('Add Transaction',
                    style: TextStyle(
                      color:Colors.white,
                    ),
                    ),
                    onPressed: (){
                      print(titleController.text);
                      print(amountController.text);
                      addTx(titleController.text,double.parse(amountController.text),);
                    },
                    color: Colors.purple,
                  )
                ],
              ),
            ),
          );
  }
}