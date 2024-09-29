class Menu {
  constructor(name = "ピザ", price = 800) {
    this.name = name;
    this.price = price;
  }

  info() {
    return `料理名は${this.name}、値段${this.price}`;
  }

  get_total_price(count) {
    let total_price = this.price * count;

    if (count >= 3) {
      total_price -= 100;
    }

    return total_price;
  }
}

let pizza_menu = new Menu();
console.log(pizza_menu.info());

let sushi_menu = new Menu("寿司", 1000);
console.log(sushi_menu.info());
