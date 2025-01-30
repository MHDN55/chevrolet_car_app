import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:chevrolet_car_app/core/utils/constants.dart';
import 'package:intl/intl.dart';

import '../../../../core/theming/text_styles.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.indexString,
  });
  final String indexString;

  @override
  Widget build(BuildContext context) {
    final int index = int.parse(indexString);

    final carPrice = cars[index].price;
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // pricing
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText(
                  "Starting MSRP: ",
                  style: TextStyles.font20WhiteWithOpacity5,
                ),
                AutoSizeText(
                  carPrice == null
                      ? "Coming Soon"
                      : r"$" + NumberFormat('#,###').format(carPrice),
                  style: TextStyles.font20WhiteWithOpacity5,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Image with name
            SizedBox(
              height: 240,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: AutoSizeText(
                        cars[index].name,
                        style: TextStyles.font65WhiteWithOpacity2,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      cars[index].image,
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            // Engine
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AutoSizeText(
                  "ENGINE",
                  style: TextStyles.font14WhiteJavanese,
                ),
              ),
            ),
            // Engine details
            Wrap(
              direction: Axis.horizontal,
              children: [
                ...List.generate(
                  4,
                  (indexo) {
                    final engine = getEngincategories(index: index);
                    return EngineDimentionDetailsWidget(
                      title: engine.keys.toList()[indexo],
                      subtitle: engine.values.toList()[indexo] ?? "N/a",
                    );
                  },
                )
              ],
            ),
            const SizedBox(height: 30),
            // dimension
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: AutoSizeText(
                  "DIMENSION",
                  style: TextStyles.font14WhiteJavanese,
                ),
              ),
            ),
            // dimension details
            Wrap(
              direction: Axis.horizontal,
              children: [
                ...List.generate(
                  4,
                  (indexo) {
                    final dimentions = getDimensioncategories(index: index);
                    return EngineDimentionDetailsWidget(
                      title: dimentions.keys.toList()[indexo],
                      subtitle: dimentions.values.toList()[indexo] ?? "N/a",
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        "Chevrolet",
        style: TextStyles.font27WhiteItaliana,
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_circle_left_outlined,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

Map<String, String?> getEngincategories({required int index}) {
  return {
    "Base engine size": cars[index].engine.baseEngineSize,
    "Horse Power": cars[index].engine.horsePower,
    "Valve timing": cars[index].engine.valveTiming,
    "Cylinders": cars[index].engine.cylinders,
  };
}

Map<String, String?> getDimensioncategories({required int index}) {
  return {
    "Length": cars[index].dimension.length,
    "Height": cars[index].dimension.height,
    "Wheelbase": cars[index].dimension.wheelbase,
    "Turning circle": cars[index].dimension.turningCircle,
    "Ground clearance": cars[index].dimension.groundClearance,
  };
}

class EngineDimentionDetailsWidget extends StatelessWidget {
  const EngineDimentionDetailsWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 55,
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AutoSizeText(
            title,
            style: TextStyles.font20grayJcquesFrancois,
            maxLines: 1,
          ),
          AutoSizeText(
            subtitle,
            style: TextStyles.font12WhiteJavanese,
            maxLines: 1,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
