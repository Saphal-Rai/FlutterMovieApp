/*
* @Author:Jiten Basnet on 07/03/2023
* @Company: EB Pearls
*/
void main() {
  Map<String, String> catMap = {'name': 'Mintu', 'color': 'chinese'};
  Cat cat = Cat.fromJson(json: catMap);

  print('${cat.name} - ${cat.color}');

  print('42'.parseInt());

}

class Cat {
  Cat(this.name, this.color);

  String? name;
  String? color;

  // factory constructor that returns a new instance
  factory Cat.fromJson({required Map<String, String> json}) {
    return Cat(json['name'], json['color']);
  }
}

class Logger {
  Logger._internal(this.name);

  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }

  factory Logger.fromJson(Map<String, Object> json) {
    return Logger(json['name'].toString());
  }

  void log(String msg) {
    print(msg);
  }
}


/// extension methods


extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  bool get isBlank => trim().isEmpty;
}



