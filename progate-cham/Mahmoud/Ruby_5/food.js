import { Menu } from "./menu";

class Food extends Menu {
  constructor(name, price, calorie) {
    super(name, price);
    this.calorie = calorie;
  }

  info() {
    return `${this.name} ${this.price}円 (${this.calorie}kcal)`;
  }

  calorie_info() {
    return `${this.name}は(${this.calorie}kcal)`;
  }
}
