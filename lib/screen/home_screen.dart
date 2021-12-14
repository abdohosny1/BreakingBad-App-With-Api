import 'package:breaking_bad/model/charcter_model.dart';
import 'package:breaking_bad/network/charchterControler.dart';
import 'package:breaking_bad/wideget/home_screen_widget/itemlist_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CharcterContrler contrler=CharcterContrler();
  List<Chaters> charcter=[];
  bool loading=false;

  @override
  void initState() {
    getInit();
    // TODO: implement initState
    super.initState();
  }
  getInit()async
  {

   charcter= await contrler.getCharcter();
   loading=true;
   setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breaking Bad'),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      body:loading ?  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.3/1.68
        ),
        physics: BouncingScrollPhysics(),
        itemCount: charcter.length,
          itemBuilder: (context,index){
            return ItemList(
              img: charcter[index].img!,
              name: charcter[index].name!,
              id: charcter[index].char_id!,
            );
          })
          :Center(child: CircularProgressIndicator(
        color: Colors.black,
      )),
    );
  }
}
