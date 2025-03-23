class House {
  String id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void exibir() {
    print("Id: $id | Nome: $name | Preço: $price");
  }
}

void main() {
  House casa1 = House("0001", "Casa na cidade", 150000.00);
  House casa2 = House("0002", "Casa no campo", 100000.00);
  House casa3 = House("0003", "Casa na praia", 400000.00);

  List<House> casas = [casa1, casa2, casa3];

  casas.forEach((casa) => casa.exibir());
}
