import 'dimension.dart';
import 'engine.dart';

class Car {
  final int id;
  final String name;
  final double? price;
  final Engine engine;
  final Dimension dimension;

  Car({
    required this.id,
    required this.name,
    required this.price,
    required this.engine,
    required this.dimension,
  });
}
