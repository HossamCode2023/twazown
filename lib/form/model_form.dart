class FormModel {
  String? text;
  bool? value;
  FormModel({this.text, this.value});
//you should wait until api is being ready to create this file
  FormModel.fromjson(Map<dynamic, dynamic> map) {
    text = map['text'];
    value = map['value'];
  }
  tojson() {
    return {'text': text, 'value': value};
  }
}