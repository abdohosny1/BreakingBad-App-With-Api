class Chaters{
int? char_id;
String? name;
String? birthday;
String? img;
String? status;
String? portrayed;
String? category;
String? nickname;

Chaters.fromJson(Map<String,dynamic>json){
  this.char_id=json['char_id'];
  this.name=json['name'];
  this.birthday=json['birthday'];
  this.img=json['img'];
  this.portrayed=json['portrayed'];
  this.category=json['category'];
  this.status=json['status'];
  this.nickname=json['nickname'];

}

Map<String,dynamic> toJson(){
  Map<String,dynamic>data={};

  data['name']=this.name;
  data['char_id']=this.char_id;
  data['birthday']=this.birthday;
  data['img']=this.img;
  data['portrayed']=this.portrayed;
  data['category']=this.category;
  data['status']=this.status;
  data['nickname']=this.nickname;

  return data;

}
}