

class Data {
  List<Category>? cat1;
  List<Category>? cat2;
  List<Category>? cat3;
  List<Category>? cat4;
  List<Category>? cat5;
  List<Category>? cat6;

  Data({this.cat1, this.cat2, this.cat3, this.cat4, this.cat5, this.cat6});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['cat1'] != null) {
      cat1 = <Category>[];
      json['cat1'].forEach((v) {
        cat1?.add(Category.fromJson(v));
      });
    }
    if (json['cat2'] != null) {
      cat2 = <Category>[];
      json['cat2'].forEach((v) {
        cat2?.add(Category.fromJson(v));
      });
    }
    if (json['cat3'] != null) {
      cat3 = <Category>[];
      json['cat3'].forEach((v) {
        cat3?.add(Category.fromJson(v));
      });
    }
    if (json['cat4'] != null) {
      cat4 = <Category>[];
      json['cat4'].forEach((v) {
        cat4?.add(Category.fromJson(v));
      });
    }
    if (json['cat5'] != null) {
      cat5 = <Category>[];
      json['cat5'].forEach((v) {
        cat5?.add(Category.fromJson(v));
      });
    }
    if (json['cat6'] != null) {
      cat6 = <Category>[];
      json['cat6'].forEach((v) {
        cat6?.add(Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (cat1 != null) {
      data['cat1'] = cat1?.map((v) => v.toJson()).toList();
    }
    if (cat2 != null) {
      data['cat2'] = cat2?.map((v) => v.toJson()).toList();
    }
    if (cat3 != null) {
      data['cat3'] = cat3?.map((v) => v.toJson()).toList();
    }
    if (cat4 != null) {
      data['cat4'] = cat4?.map((v) => v.toJson()).toList();
    }
    if (cat5 != null) {
      data['cat5'] = cat5?.map((v) => v.toJson()).toList();
    }
    if (cat6 != null) {
      data['cat6'] = cat6?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String? name;
  int? price;
  bool? instock;
  int? count;


  Category({this.name, this.price, this.instock,this.count});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    instock = json['instock'];
      count = json['count']??0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['price'] = price;
    data['instock'] = instock;
    
    return data;
  }
}
