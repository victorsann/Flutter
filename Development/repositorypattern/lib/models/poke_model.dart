class PokeModel {
  var name;

  PokeModel({this.name});

  PokeModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }
}
