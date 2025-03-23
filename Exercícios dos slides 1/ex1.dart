class Laptop {
  String id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
  
  void exibir(){
    print("Id: $id | Nome: $name | Quantidade de RAM: $ram");
  }
}

 
void main() {
  
  Laptop laptop1 = Laptop ("0001", "Laptop escolar", 8);
  Laptop laptop2 = Laptop ("0002", "Laptop de trabalho", 16);
  Laptop laptop3 = Laptop ("0003", "Laptop para jogos", 32);
  
  laptop1.exibir();
  laptop2.exibir();
  laptop3.exibir();
  
}