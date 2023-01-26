import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransactionList extends StatelessWidget {
  final Function addTx;
  NewTransactionList(this.addTx);
  TextEditingController amountInput=TextEditingController();
  TextEditingController titleInput=TextEditingController();
void submitData(){
  final enteredTitle=titleInput.text;
  final enteredAmount=double.parse( amountInput.text);
  addTx(enteredTitle, enteredAmount);
}

  @override
  Widget build(BuildContext context) {

    return           Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              onSubmitted: (_)=>submitData(),// I get an argument but i don t need it

              controller: titleInput,
              // onChanged: (value){
              //   titleInput=value;
              // },
              decoration: InputDecoration(
                  labelText:'Title'
              ),
            ),
            TextField(
              controller: amountInput,
              // onChanged: (value)=>
              // amountInput=value,
              onSubmitted: (_)=>submitData(),// I get an argument but i don t need it
              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                  labelText:'Amount'
              ),
            ),
            TextButton(

                onPressed: ()=>submitData(),
                child: Text("Add Transaction",style: TextStyle(color: Colors.purpleAccent),))

          ],
        ),
      ),
    );

  }
}
