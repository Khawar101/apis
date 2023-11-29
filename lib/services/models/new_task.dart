class NewTask {
  NewTask({
    required this.info,
    required this.item,
    required this.auth,
    required this.event,
    required this.variable,
  });
  late final Info info;
  late final List<Item> item;
  late final Auth auth;
  late final List<Event> event;
  late final List<Variable> variable;
  
  NewTask.fromJson(Map<String, dynamic> json){
    info = Info.fromJson(json['info']);
    item = List.from(json['item']).map((e)=>Item.fromJson(e)).toList();
    auth = Auth.fromJson(json['auth']);
    event = List.from(json['event']).map((e)=>Event.fromJson(e)).toList();
    variable = List.from(json['variable']).map((e)=>Variable.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['info'] = info.toJson();
    _data['item'] = item.map((e)=>e.toJson()).toList();
    _data['auth'] = auth.toJson();
    _data['event'] = event.map((e)=>e.toJson()).toList();
    _data['variable'] = variable.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Info {
  Info({
    required this.postmanId,
    required this.name,
    required this.schema,
    required this.exporterId,
    required this.collectionLink,
  });
  late final String postmanId;
  late final String name;
  late final String schema;
  late final String exporterId;
  late final String collectionLink;
  
  Info.fromJson(Map<String, dynamic> json){
    postmanId = json['_postman_id'];
    name = json['name'];
    schema = json['schema'];
    exporterId = json['_exporter_id'];
    collectionLink = json['_collection_link'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_postman_id'] = postmanId;
    _data['name'] = name;
    _data['schema'] = schema;
    _data['_exporter_id'] = exporterId;
    _data['_collection_link'] = collectionLink;
    return _data;
  }
}

class Item {
  Item({
    required this.name,
    required this.item,
  });
  late final String name;
  late final List<Item> item;
  
  Item.fromJson(Map<String, dynamic> json){
    name = json['name'];
    item = List.from(json['item']).map((e)=>Item.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['item'] = item.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Auth {
  Auth({
    required this.type,
    required this.bearer,
  });
  late final String type;
  late final List<Bearer> bearer;
  
  Auth.fromJson(Map<String, dynamic> json){
    type = json['type'];
    bearer = List.from(json['bearer']).map((e)=>Bearer.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['bearer'] = bearer.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Bearer {
  Bearer({
    required this.key,
    required this.value,
    required this.type,
  });
  late final String key;
  late final String value;
  late final String type;
  
  Bearer.fromJson(Map<String, dynamic> json){
    key = json['key'];
    value = json['value'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    _data['value'] = value;
    _data['type'] = type;
    return _data;
  }
}

class Event {
  Event({
    required this.listen,
    required this.script,
  });
  late final String listen;
  late final Script script;
  
  Event.fromJson(Map<String, dynamic> json){
    listen = json['listen'];
    script = Script.fromJson(json['script']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['listen'] = listen;
    _data['script'] = script.toJson();
    return _data;
  }
}

class Script {
  Script({
    required this.type,
    required this.exec,
  });
  late final String type;
  late final List<String> exec;
  
  Script.fromJson(Map<String, dynamic> json){
    type = json['type'];
    exec = List.castFrom<dynamic, String>(json['exec']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['exec'] = exec;
    return _data;
  }
}

class Variable {
  Variable({
    required this.key,
    required this.value,
    required this.type,
  });
  late final String key;
  late final String value;
  late final String type;
  
  Variable.fromJson(Map<String, dynamic> json){
    key = json['key'];
    value = json['value'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    _data['value'] = value;
    _data['type'] = type;
    return _data;
  }
}