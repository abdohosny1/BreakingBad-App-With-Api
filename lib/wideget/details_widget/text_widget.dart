import 'package:flutter/material.dart';

class TextDesignWidget extends StatelessWidget {
   TextDesignWidget({Key? key,required this.txet}) : super(key: key);
  String txet;

  @override
  Widget build(BuildContext context) {
    return   Container(
        padding: EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width-100,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.grey.shade200
        ),
        child: Center(child: Text(txet,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)));
  }
}
