import 'package:breaking_bad/network/charchterControler.dart';
import 'package:breaking_bad/screen/show_detils_screen.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {

  String img;
  String name;
  int id;
  CharcterContrler contrler=CharcterContrler();

  ItemList({required this.name,required this.img,required this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: ()async{

          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowDetailsScreen(id:id)));
        },
        child: Column(

          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                      image: NetworkImage(img),
                      fit: BoxFit.fill
                  )
              ),
            ),
            // SizedBox(height: 30,),
            Container(
              // height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.black,
                ),
                width: double.infinity,

                child: Text(name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),

          ],
        ),
      ),
    );
  }
}
