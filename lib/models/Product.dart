import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/Blue seeds rosw.jfif",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.blue,
    ],
    title: "Blue Rose Seeds™",
    price: 180,
    description: "Grow in All Seasons ,Needs a very well drained mineral substratum with little organic matter,\nStore the seeds in dry and dark place when not in use,\n Pack of 20+ Seeds, Very Easy to Grow and Care",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/brocolii.jfif"
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Broccoli's Seeds",
    price: 193,
    description:"SEED TYPE : Non-Hybrid, Open Pollinated And Non-GMO, \nSOWING TIME : August To October, HEAD : Green In Colour, Very Compact And Uniform,  SPECIFICATION : Plants Are Very Strong And Tolerant To Heat,  HARVESTING : After 65-70 Days From Transplanting",
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: ["assets/images/pepper mint seeds.jfif",
    ],
    colors: [

      Colors.green.shade600,
      Colors.green.shade400,
    ],
    title: "Pepper Mint's Seed",
    price: 120,
    description:"SEED TYPE: Non-Hybrid, Open Pollinated & Non-GMO, \n PLANT CHARACTER: Small White Or Purple Flowers & Plant Grows To About 2 To 4 Ft In Height,\nLEAF CHARACTER: Dark Green Lanceolate Fragrant Leaf With 5 To 10 Cm Leaf Blade, \nCUTTINGS: Prune Old Stalks And Leaves To Propagate New Growth,\n USES: Use Fresh & Dried Peppermint Leaves & Stalk In Tea, Salad Dressings, Iced Drinks, Chocolates, Tinctures & Oils.",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Pesticide.png",
    ],
    colors: [

      Colors.white,
    ],
    title: "Rosin - Insecticide",
    price: 390,
    description: "belongs to a new chemical class of insecticides-sulfoximines. D-One has unique mode of action and it shows three way activity-contact, translaminar and systemic. It is developed globally for use in major crops to control economically important sucking insect pests.",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
    id: 5,
    images: [
      "assets/images/Spray.png",
    ],
    colors: [

      Colors.white,
    ],
    title: "BATTERY SPRAYER WITH MOBILE CHARGER & LED LIGHT",
    price: 10999,
    description: "It can als run manually in case of discharge of the battery in the field. - Pressurized with pressure regulator switch. - Suitable for operation with low and high pressure. - Long delivery hose pipe with high-quality brass trigger cut off.\nHeavy-duty diaphragm pump capable of recharging 3.1lt/min.",
    rating: 4.1,
    isFavourite: true,
  ),

];
