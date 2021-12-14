import 'package:breaking_bad/model/charcter_model.dart';
import 'package:breaking_bad/network/charchterControler.dart';
import 'package:breaking_bad/wideget/details_widget/text_widget.dart';
import 'package:flutter/material.dart';
class ShowDetailsScreen extends StatefulWidget {
  int?  id;
  ShowDetailsScreen({required this.id});

  @override
  _ShowDetailsScreenState createState() => _ShowDetailsScreenState();
}

class _ShowDetailsScreenState extends State<ShowDetailsScreen> {
  CharcterContrler contrler=CharcterContrler();
  List<Chaters> item=[];
  Chaters? char;
  bool loading=false;

  @override
  void initState() {
   getItem();
    super.initState();
  }

  getItem()async{
   item= await contrler.getOneCharcter(widget.id!) ;
   loading=true;
   setState(() {

   });
   print('item =====$item');
  // char= await contrler.getOneCharcter(widget.id!) as Chaters ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        elevation: 10,
        title: Text('${''}'),
      ),
      backgroundColor: Colors.white,
      body: loading?
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            Container(

              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                image: DecorationImage(
                  image: NetworkImage(item[0].img!),
                  fit: BoxFit.fill
                )
              ),
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                TextDesignWidget(txet: 'NickName : ${item[0].nickname!}'),
                SizedBox(height: 10,),
                TextDesignWidget(txet: 'Birthday : ${item[0].birthday!}'),
                SizedBox(height: 10,),
                TextDesignWidget(txet: 'Portrayed : ${item[0].portrayed!}'),
                SizedBox(height: 10,),
                TextDesignWidget(txet: 'Status : ${item[0].status!}'),
                SizedBox(height: 10,),
                TextDesignWidget(txet: 'Appearance : ${item[0].category!}'),
              ],
            )
          ],
        ),
      )
      :Center(child: CircularProgressIndicator()),
    );
  }
}
