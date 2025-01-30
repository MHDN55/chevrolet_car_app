// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'dimension.dart';
import 'engine.dart';

class Car {
  final int id;
  final String name;
  final String fullName;
  final String image;
  final Color color;
  final int? price;
  final Engine engine;
  final Dimension dimension;

  Car({
    required this.id,
    required this.name,
    required this.fullName,
    required this.image,
    required this.color,
    required this.price,
    required this.engine,
    required this.dimension,
  });
}
