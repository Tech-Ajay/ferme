import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Blue Rose Seeds",
      price: 180,
      size: 20,
      description: "Grow in All Seasons ,Needs a very well drained mineral substratum with little organic matter,\nStore the seeds in dry and dark place when not in use,\n Pack of 20+ Seeds, Very Easy to Grow and Care",
      image: "assets/images/Blue seeds rosw.jfif",
      color: Colors.teal.shade500),
  Product(
      id: 2,
      title: "Broccoli's Seeds",
      price: 193,
      size: 20,
      description:"SEED TYPE : Non-Hybrid, Open Pollinated And Non-GMO, \nSOWING TIME : August To October, HEAD : Green In Colour, Very Compact And Uniform,  SPECIFICATION : Plants Are Very Strong And Tolerant To Heat,  HARVESTING : After 65-70 Days From Transplanting",
      image: "assets/images/brocolii.jfif",
      color: Colors.green.shade500),
  Product(
      id: 3,
      title: "Pepper Mint's Seed",
      price: 120,
      size: 10,
      description:"SEED TYPE: Non-Hybrid, Open Pollinated & Non-GMO, \n PLANT CHARACTER: Small White Or Purple Flowers & Plant Grows To About 2 To 4 Ft In Height,\nLEAF CHARACTER: Dark Green Lanceolate Fragrant Leaf With 5 To 10 Cm Leaf Blade, \nCUTTINGS: Prune Old Stalks And Leaves To Propagate New Growth,\n USES: Use Fresh & Dried Peppermint Leaves & Stalk In Tea, Salad Dressings, Iced Drinks, Chocolates, Tinctures & Oils.",
      image: "assets/images/pepper mint seeds.jfif",
      color: Colors.lightGreen.shade500),
  Product(
      id: 4,
      title: "Rosin - Insecticide Agriculture Veterinary Medicine",
      price: 390,
      size: 11,
      description: "belongs to a new chemical class of insecticides-sulfoximines. D-One has unique mode of action and it shows three way activity-contact, translaminar and systemic. It is developed globally for use in major crops to control economically important sucking insect pests.",
      image: "assets/images/Pesticide.png",
      color: Colors.lime.shade500),
  Product(
      id: 5,
      title: "BATTERY SPRAYER WITH MOBILE CHARGER & LED LIGHT",
      price: 10999,
      size: 12,
      description: "It can als run manually in case of discharge of the battery in the field. - Pressurized with pressure regulator switch. - Suitable for operation with low and high pressure. - Long delivery hose pipe with high-quality brass trigger cut off.\nHeavy-duty diaphragm pump capable of recharging 3.1lt/min.",
      image: "assets/images/Spray.png",
      color: Colors.yellow.shade500),
  Product(
    id: 6,
title: "BATTERY SPRAYER WITH MOBILE CHARGER & LED LIGHT",
price: 10999,
size: 12,
description: "It can also run manually in case of discharge of the battery in the field. - Pressurized with pressure regulator switch. - Suitable for operation with low and high pressure. - Long delivery hose pipe with high-quality brass trigger cut off.\nHeavy-duty diaphragm pump capable of recharging 3.1lt/min.",
image: "assets/images/Spray.png",
color: Colors.orange.shade500),
];
