class ComponenModel {
  ComponenModel({
    List<Components>? components,
  }) {
    _components = components;
  }

  ComponenModel.fromJson(dynamic json) {
    if (json['components'] != null) {
      _components = [];
      json['components'].forEach((v) {
        _components?.add(Components.fromJson(v));
      });
    }
  }

  List<Components>? _components;

  ComponenModel copyWith({
    List<Components>? components,
  }) =>
      ComponenModel(
        components: components ?? _components,
      );

  List<Components>? get components => _components;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_components != null) {
      map['components'] = _components?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Components {
  Components({
    String? name,
    String? image,
    String? text,
    String? route,
  }) {
    _name = name;
    _image = image;
    _text = text;
    _route = route;
  }

  Components.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _text = json['text'];
    _route = json['route'];
  }

  String? _name;
  String? _image;
  String? _text;
  String? _route;

  Components copyWith({
    String? name,
    String? image,
    String? text,
    String? route,
  }) =>
      Components(
        name: name ?? _name,
        image: image ?? _image,
        text: text ?? _text,
        route: route ?? _route,
      );

  String? get name => _name;

  String? get image => _image;

  String? get text => _text;

  String? get route => _route;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['text'] = _text;
    map['route'] = _route;
    return map;
  }
}
