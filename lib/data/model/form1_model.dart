class form1Model {



 String? text;
  bool? value;
  String? image;
  form1Model({required this.text,required this.value ,required this.image});
//you should wait until api is being ready to create this file
  form1Model.fromjson(Map<dynamic, dynamic> map) {
    text = map['text'];
    value = map['value'];
    image = map['image'];
  }
  tojson() {
    return {'text': text, 'value': value  , 'image' : image};
  }
}