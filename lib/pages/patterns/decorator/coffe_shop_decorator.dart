abstract class CoffeShopProducts {
  int cost();
}

abstract class Toppings implements CoffeShopProducts {
  @override
  int cost();
}

class Coffe implements CoffeShopProducts {
  @override
  int cost() {
    return 3;
  }
}

class Chocolate implements Toppings {
  CoffeShopProducts products;
  Chocolate({
    required this.products,
  });

  @override
  int cost() {
    return products.cost() + 1;
  }
}

class Caramel implements Toppings {
  CoffeShopProducts products;
  Caramel({
    required this.products,
  });

  @override
  int cost() {
    return products.cost() + 2;
  }
}
