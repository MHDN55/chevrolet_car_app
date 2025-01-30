import 'package:chevrolet_car_app/generated/assets.dart';

import '../entities/car.dart';
import '../entities/dimension.dart';
import '../entities/engine.dart';
import '../theming/colors_manager.dart';

List<Car> cars = [
  Car(
    id: 0,
    name: "Blaser",
    fullName: "2022 Chevrolet Blazer",
    image: Assets.assetsRedCar,
    price: null,
    color: ColorsManager.customRed,
    engine: Engine(
      baseEngineSize: null,
      horsePower: null,
      valveTiming: null,
      cylinders: null,
    ),
    dimension: Dimension(
      length: null,
      height: null,
      wheelbase: null,
      turningCircle: null,
      groundClearance: null,
    ),
  ),
  Car(
    id: 0,
    name: "Corvette",
    fullName: "2022 Chevrolet Corvette",
    image: Assets.assetsBlueCar,
    price: 75200,
    color: ColorsManager.customBlue,
    engine: Engine(
      baseEngineSize: "6.2L",
      horsePower: "490 hp @ 6,450 rpm",
      valveTiming: "Variable",
      cylinders: "V8",
    ),
    dimension: Dimension(
      length: "182.3 in.",
      height: "48.6 in.",
      wheelbase: "48.6 in.",
      turningCircle: "38.1 ft.",
      groundClearance: "5.3 in.",
    ),
  ),
  Car(
    id: 0,
    name: "Cammaro",
    fullName: "2023 Chevrolet Camaro",
    image: Assets.assetsGreyCar,
    price: 25800,
    color: ColorsManager.customGrey,
    engine: Engine(
      baseEngineSize: "6.2L",
      horsePower: "275 hp @ 5,600 rpm",
      valveTiming: "295 @ 3,000",
      cylinders: "V8",
    ),
    dimension: Dimension(
      length: "188.3 in.",
      height: "53.1 in.",
      wheelbase: "110.7 in.",
      turningCircle: "----",
      groundClearance: "----",
    ),
  ),
  Car(
    id: 0,
    name: "Trax",
    fullName: "2022 Chevrolet Trax SUV",
    image: Assets.assetsWhiteCar,
    price: 25800,
    color: ColorsManager.customWhite,
    engine: Engine(
      baseEngineSize: "5.2L",
      horsePower: "155 hp @ 5,600 rpm",
      valveTiming: "Variable",
      cylinders: "V6",
    ),
    dimension: Dimension(
      length: "167.6 in.",
      height: "64.9 in.",
      wheelbase: "100.6 in",
      turningCircle: "----",
      groundClearance: "6.2 in.",
    ),
  ),
];
