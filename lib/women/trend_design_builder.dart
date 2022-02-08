import 'package:flutter/material.dart';
import 'tr_design_card.dart';
import '../Modules/section_title.dart';
import 'trending_deesignlist.dart';

class WomenDesigns extends StatelessWidget {
  const WomenDesigns({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: SectionTitle(
            title: "Women Trends",
            pressSeeAll: () {},
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Card(
            elevation: 10,
            margin: const EdgeInsets.symmetric(vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xffecc5a5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: List.generate(
                  Women_Trends.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: WomenTrends(
                      name: Women_Trends[index].name,
                      image: Women_Trends[index].image,
                      price: Women_Trends[index].price,

                      //bgColor: Women_Trends[index].,
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
