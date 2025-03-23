class Animal {
  String id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);

  void exibir() {
    print("Id: $id | Nome: $name | Cor: $color");
  }
}

class Cat extends Animal{
  String sound;
  Cat(super.id, super.name, super.color, this.sound);
  
  void exibir() {
    print("Id: $id | Nome: $name | Cor: $color | Som: $sound");
  }
  
}


void main() {
  
  Cat gato = Cat("0001", "Feitan", "Preto", "Baixo");
  gato.exibir();
}