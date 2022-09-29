class MenuPaket {
  final String title, image, desc;
  final int id, price;

  MenuPaket({
    required this.id,
    required this.title,
    required this.image,
    required this.desc,
    required this.price,
  });
}

List<MenuPaket> menuPaketList = [
  MenuPaket(
      id: 1,
      title: "Paket Keluarga",
      image: "images/paket_keluarga.jpg",
      desc: "Menu buat makan makan bareng keluarga, dijamin bikin kenyang",
      price: 100),
  MenuPaket(
      id: 2,
      title: "Paket Kenyang Personal",
      image: "images/paket_burger_fried_chicken.jpg",
      desc: "Paket yang buat kenyang perutmu dengan burger dan fried chicken",
      price: 45),
  MenuPaket(
      id: 3,
      title: "Paket Chicken Snack",
      image: "images/paket_chicken_snack.jpg",
      desc: "Paket yang cocok buat kamu yang pingin camilan",
      price: 30)
];
