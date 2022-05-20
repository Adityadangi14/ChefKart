class DetailPageModel {
  DetailPageModel({
    required this.name,
    required this.id,
    required this.timeToPrepare,
    required this.ingredients,
  });
  late final String name;
  late final int id;
  late final String timeToPrepare;
  late final Ingredients ingredients;
  
  DetailPageModel.fromJson(Map<String, dynamic> json){
    name = json['name'];
    id = json['id'];
    timeToPrepare = json['timeToPrepare'];
    ingredients = Ingredients.fromJson(json['ingredients']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['id'] = id;
    _data['timeToPrepare'] = timeToPrepare;
    _data['ingredients'] = ingredients.toJson();
    return _data;
  }
}

class Ingredients {
  Ingredients({
    required this.vegetables,
    required this.spices,
    required this.appliances,
  });
  late final List<Vegetables> vegetables;
  late final List<Spices> spices;
  late final List<Appliances> appliances;
  
  Ingredients.fromJson(Map<String, dynamic> json){
    vegetables = List.from(json['vegetables']).map((e)=>Vegetables.fromJson(e)).toList();
    spices = List.from(json['spices']).map((e)=>Spices.fromJson(e)).toList();
    appliances = List.from(json['appliances']).map((e)=>Appliances.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['vegetables'] = vegetables.map((e)=>e.toJson()).toList();
    _data['spices'] = spices.map((e)=>e.toJson()).toList();
    _data['appliances'] = appliances.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Vegetables {
  Vegetables({
    required this.name,
    required this.quantity,
  });
  late final String name;
  late final String quantity;
  
  Vegetables.fromJson(Map<String, dynamic> json){
    name = json['name'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['quantity'] = quantity;
    return _data;
  }
}

class Spices {
  Spices({
    required this.name,
    required this.quantity,
  });
  late final String name;
  late final String quantity;
  
  Spices.fromJson(Map<String, dynamic> json){
    name = json['name'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['quantity'] = quantity;
    return _data;
  }
}

class Appliances {
  Appliances({
    required this.name,
    required this.image,
  });
  late final String name;
  late final String image;
  
  Appliances.fromJson(Map<String, dynamic> json){
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['image'] = image;
    return _data;
  }
}