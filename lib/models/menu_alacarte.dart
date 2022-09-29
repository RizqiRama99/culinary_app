class MenuAlacarte {
  final String title, image, desc;
  final int id, price;

  MenuAlacarte({
    required this.id,
    required this.title,
    required this.image,
    required this.desc,
    required this.price,
  });
}

List<MenuAlacarte> menuAlacarteList = [
  MenuAlacarte(
      id: 1,
      title: "Beef Burger",
      image: "images/burger.jpg",
      desc: "burger yummy",
      price: 22),
  MenuAlacarte(
      id: 2,
      title: "French Fries",
      image: "images/french_fries.jpg",
      desc: "French fries yang menemanimu disaat santai dimanapun kamu ",
      price: 12),
  MenuAlacarte(
      id: 3,
      title: "Pizza",
      image: "images/pizza.jpg",
      desc: "Pizza dengan isian pepperoni, keju mozzarela, jamur, dan paprika",
      price: 45),
  MenuAlacarte(
      id: 4,
      title: "Spagetti",
      image: "images/spagetti.jpg",
      desc: "Spagetti Bolognese dengan topping yang gak bikin kamu bosen",
      price: 18),
  MenuAlacarte(
      id: 5,
      title: "Ice Tea",
      image: "images/ice_tea.jpg",
      desc: "Kesegaran Ice Tea yang membuat dahagamu hilang ",
      price: 5),
  MenuAlacarte(
      id: 6,
      title: "Orange Juice",
      image: "images/orange_juice.jpg",
      desc: "Terbuat dari Jeruk asli yang bikin dahagamu hilang",
      price: 8),
];
