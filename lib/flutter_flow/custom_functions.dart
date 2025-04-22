import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<CategroiesStruct> cafeCategories() {
  List<CategroiesStruct> categories = [
    CategroiesStruct(cateId: 1, cateName: "Coffee"),
    CategroiesStruct(cateId: 2, cateName: "Cold Brew"),
    CategroiesStruct(cateId: 3, cateName: "Smoothies"),
    CategroiesStruct(cateId: 4, cateName: "Juices")
  ];
  return categories;
}

List<DrinkinfoStruct> drinklist() {
  List<DrinkinfoStruct> drink = [
    // Coffee
    DrinkinfoStruct(
      id: 1,
      cateId: 1,
      title: "Espresso",
      price: 1.5,
      description: "Strong and bold shot of coffee.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/c4vzsjshi8wc/espressohowto-11.jpg",
      ingredients: ["Coffee Beans", "Water"],
      totalSales: 200,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 2,
      cateId: 1,
      title: "Americano",
      price: 1.8,
      description: "Espresso with hot water.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/bynbd3rticgx/americano.jpg",
      ingredients: ["Espresso", "Water"],
      totalSales: 180,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 3,
      cateId: 1,
      title: "Cappuccino",
      price: 2.0,
      description: "Espresso with steamed milk and foam.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/lx5spgrit68p/Cappuccino_in_original.jpg",
      ingredients: ["Espresso", "Milk"],
      totalSales: 160,
      isspecial: false,
    ),

    // Cold Brew
    DrinkinfoStruct(
      id: 4,
      cateId: 2,
      title: "Classic Cold Brew",
      price: 2.2,
      description: "Slow-steeped cold coffee.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/4x65uom43erh/Classic_Cold_Brew_0.jpg.jpg",
      ingredients: ["Cold Brew", "Ice"],
      totalSales: 140,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 5,
      cateId: 2,
      title: "Vanilla Cold Brew",
      price: 2.5,
      description: "Cold brew with vanilla sweet cream.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/pd9vawgafv15/coldbrew01.jpg",
      ingredients: ["Cold Brew", "Vanilla", "Cream"],
      totalSales: 120,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 6,
      cateId: 2,
      title: "Nitro Cold Brew",
      price: 2.8,
      description: "Infused with nitrogen for creamy texture.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/ifgej1au6hre/nitro-cold-brew3.jpg",
      ingredients: ["Cold Brew", "Nitrogen"],
      totalSales: 130,
      isspecial: false,
    ),

    // Smoothies
    DrinkinfoStruct(
      id: 7,
      cateId: 3,
      title: "Mango Smoothie",
      price: 3.0,
      description: "Blended mango with yogurt.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/vsv364wq9h0q/mango.jpg",
      ingredients: ["Mango", "Yogurt", "Ice"],
      totalSales: 110,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 8,
      cateId: 3,
      title: "Berry Smoothie",
      price: 3.2,
      description: "Mixed berries and banana.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/58c42n7zk0id/Triple-Berry-Smoothie-Recipe-5.jpg",
      ingredients: ["Berries", "Banana", "Yogurt"],
      totalSales: 90,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 9,
      cateId: 3,
      title: "Green Smoothie",
      price: 3.5,
      description: "Healthy spinach and apple blend.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/l9mn170nfooo/1400x919-Super-green-smoothies-1d500917-513a-4069-a259-498746cabff6-0-1400x919.jpg",
      ingredients: ["Spinach", "Apple", "Banana"],
      totalSales: 85,
      isspecial: false,
    ),

    // Juices
    DrinkinfoStruct(
      id: 10,
      cateId: 4,
      title: "Orange Juice",
      price: 2.0,
      description: "Fresh squeezed oranges.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/m9umdybu42l8/orange.jpg",
      ingredients: ["Oranges"],
      totalSales: 100,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 11,
      cateId: 4,
      title: "Carrot Juice",
      price: 2.2,
      description: "Nutrient-rich fresh carrot juice.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/858pefxvffnv/carrotjuiceguide.jpg",
      ingredients: ["Carrots"],
      totalSales: 80,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 12,
      cateId: 4,
      title: "Apple Juice",
      price: 2.1,
      description: "Classic apple refreshment.",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/50bbre7rysvn/Apple-Juice-Square.jpeg",
      ingredients: ["Apples"],
      totalSales: 95,
      isspecial: false,
    ),
  ];

  return drink;
}

CategroiesStruct? filtercategories(String? catename) {
  if (catename == null || catename.isEmpty) return null;
  List<CategroiesStruct> list = cafeCategories();
  return list.firstWhere(
    (item) => item.cateName == catename,
    orElse: () => CategroiesStruct(), // or null if allowed
  );
}

List<DrinkinfoStruct>? specialofferlist() {
  List<DrinkinfoStruct> drink = [
    // Coffee
    DrinkinfoStruct(
      id: 1,
      title: "Geisha Coffee",
      price: 1.5,
      promotioninfo: "Buy 3 Get 5",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/xwvhn0jw7kfv/geishacoffee.png",
      ingredients: ["Coffee Beans", "Water"],
      totalSales: 200,
      isspecial: false,
    ),
    DrinkinfoStruct(
      id: 2,
      title: "Yuzu Lemon Iced Tea",
      price: 1.8,
      promotioninfo: "Cutie of the Month",
      image:
          "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/demo-jr9rko/assets/9rh2zy4mllnm/acontentsyuzuice.jpg",
      ingredients: ["Espresso", "Water"],
      totalSales: 180,
      isspecial: false,
    ),
  ];

  return drink;
}
