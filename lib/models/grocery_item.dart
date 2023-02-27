class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [

  GroceryItem(
      id: 17,
      name: "Mango",
      description: "1kg, Price",
      price: 4.67,
      imagePath: "assets/images/grocery_images/mango.png"),
  GroceryItem(
      id: 5,
      name: "Black Grapes",
      description: "450gm, Price",
      price: 2.99,
      imagePath: "assets/images/grocery_images/graps.png"),
  GroceryItem(
      id: 15,
      name: "Apple Juice",
      description: "2L, Price",
      price: 15.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),

];

var exclusiveOffers = [
  GroceryItem(
      id: 5,
      name: "Black Grapes",
      description: "450gm, Price",
      price: 2.99,
      imagePath: "assets/images/grocery_images/graps.png"),
  GroceryItem(
      id: 5,
      name: "Papaya",
      description: "1kg, Price",
      price: 4.99,
      imagePath: "assets/images/grocery_images/papaya.png"),
  GroceryItem(
      id: 12,
      name: "Organic Pine-Apple",
      description: "1pc, Price",
      price: 1.99,
      imagePath: "assets/images/grocery_images/pineapple.png"),
  GroceryItem(
      id: 5,
      name: "Meat",
      description: "1kg, Price",
      price: 16.99,
      imagePath: "assets/images/grocery_images/beef.png"),
  GroceryItem(
      id: 1,
      name: "Organic Bananas",
      description: "7pcs, Price",
      price: 4.99,
      imagePath: "assets/images/grocery_images/banana.png"),
];

var bestSelling = [
  GroceryItem(
      id: 16,
      name: "Green Grapes",
      description: "1kg, Price",
      price: 3.39,
      imagePath: "assets/images/grocery_images/green_graps.png"),
  GroceryItem(
      id: 2,
      name: "WaterMilan",
      description: "1kg, Price",
      price: 4.99,
      imagePath: "assets/images/grocery_images/watermilan.png"),
  GroceryItem(
      id: 13,
      name: "Red Apple",
      description: "1kg, Price",
      price: 4.69,
      imagePath: "assets/images/grocery_images/apple.png"),

  GroceryItem(
      id: 6,
      name: "Chicken",
      description: "1kg, Price",
      price: 14.99,
      imagePath: "assets/images/grocery_images/chicken.png"),
];

var groceries = [

  GroceryItem(
      id: 17,
      name: "Mango",
      description: "1kg, Price",
      price: 4.67,
      imagePath: "assets/images/grocery_images/mango.png"),
  GroceryItem(
      id: 3,
      name: "Bell Pepper Red",
      description: "1kg, Price",
      price: 4.67,
      imagePath: "assets/images/grocery_images/bell.png"),
  GroceryItem(
      id: 4,
      name: "Ginger",
      description: "250gm, Price",
      price: 4.99,
      imagePath: "assets/images/grocery_images/ginger.png"),
];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      price: 1.99,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  GroceryItem(
      id: 15,
      name: "Apple Juice",
      description: "2L, Price",
      price: 15.99,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  GroceryItem(
      id: 11,
      name: "Pepsi Can",
      description: "330ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/pepsi.png"),
  GroceryItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/sprite.png"),

  GroceryItem(
      id: 9,
      name: "Orange Juice",
      description: "2L, Price",
      price: 1.50,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  GroceryItem(
      id: 10,
      name: "Coca Cola Can",
      description: "325ml, Price",
      price: 4.99,
      imagePath: "assets/images/beverages_images/coca_cola.png"),

];
