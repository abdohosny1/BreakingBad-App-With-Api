import 'package:breaking_bad/model/charcter_model.dart';
import 'package:dio/dio.dart';

class CharcterContrler{

  var dio=Dio();
  String BaseUrl='https://breakingbadapi.com';
  String urlAllChaercter='https://breakingbadapi.com/api/characters';

//List<dynamic> charcter=[];
  checkDio(){
    dio.options.validateStatus=(v) =>v! <500;
  }

  Future<List<Chaters>> getCharcter()async{
    checkDio();
    List<Chaters> charcters=[];
   try{
     final response=await dio.get(urlAllChaercter);
     print(response);
     final data=response.data as List;
     data.forEach((element) {
       charcters.add(Chaters.fromJson(element));
     });

     print('cgarrrrrr =======$charcters');

   }on DioError catch(e) {
     print(e.message);
    } catch(e){
     print(e.toString());
   }
   return charcters;
  }
  Future<List<Chaters>> getOneCharcter(int id)async{
    checkDio();
    List<Chaters> charcters=[];
    String URLBYID='https://breakingbadapi.com/api/characters/$id';

  try{
    final response=await dio.get(URLBYID);
    print(response);
    final data=response.data as List;
    data.forEach((element) {
      charcters.add(Chaters.fromJson(element));
    });
    print('char =======$charcters');
  }on DioError catch(e) {
    print(e.message);
  }catch(e){
    print(e.toString());
  }
  return charcters;
  }
  }

