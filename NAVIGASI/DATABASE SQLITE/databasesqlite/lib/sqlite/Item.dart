class Item {
  int _id;
  String _name;
  int _price;
  int _code;
  int _stok;

  get id => this._id;

  get code => this._code;
  set code(value) => this._code = value;

  get name => this._name;
  set name(value) => this._name = value;

  get price => this._price;
  set price(value) => this._price = value;

  get stok => this._stok;
  set stok(value) => this._stok = value;

  // konstruktor versi 1
  Item(this._name, this._price, this._code, this._stok);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._price = map['price'];
    this._code = map['code'];
    this._stok = map['stok'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['name'] = name;
    map['price'] = price;
    map['code'] = code;
    map['stok'] = stok;
    return map;
  }
}
