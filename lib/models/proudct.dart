import 'package:flutter/material.dart';

class proudctmodel {
  final int id;
  final String title;
  final dynamic price;
  final String description;
  final String image;
  final Ratingmodel rating;
  final String? cat;
  final String category;
  proudctmodel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.image,
      required this.category,
      required this.rating,
      this.cat});
  factory proudctmodel.fromjsion(jsiondata) {
    return proudctmodel(
        id: jsiondata['id'],
        title: jsiondata['title'],
        price: jsiondata['price'],
        description: jsiondata['description'],
        image: jsiondata['image'],
        category: jsiondata['category'],
        rating: Ratingmodel.fromjsion(jsiondata['rating']));
  }
}

class Ratingmodel {
  final dynamic rate;
  final int count;
  Ratingmodel({required this.rate, required this.count});
  factory Ratingmodel.fromjsion(jsiondata) {
    return Ratingmodel(rate: jsiondata['rate'], count: jsiondata['count']);
  }
}
