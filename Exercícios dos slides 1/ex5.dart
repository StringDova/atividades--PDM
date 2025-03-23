class Camera {
  String _id;
  String _brand;
  double _price;
  String _color;

  Camera(this._id, this._brand, this._price, this._color);
  
  String get id => _id;
  String get brand => _brand;
  double get price => _price;
  String get color => _color;
  
  set id(String newId) => _id = newId;
  set brand(String newBrand) => _brand = newBrand;
  set price(double newPrice) => _price = newPrice;
  set color(String newColor) => _color = newColor;
  

  void exibir(){
    print("Id: $_id | Marca: $_brand | Preço: $_price | Cor: $_color");
  }
}


void main(){
  
  Camera camera1 = Camera("0001", "Canon", 300.0, "Baixo");
  camera1.exibir();
}
