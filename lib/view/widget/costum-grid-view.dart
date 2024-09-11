import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../details_screen.dart';
import 'iteams_screen.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.len, required this.iteam});
  final len;
  final iteam;
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.75,
      ),
      itemCount: len,
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => DetailsScreen(
                  data: iteam[index],
              ),
            ),
            );
          },
          child: IteamsScreen(
            image: "${iteam[index]["image"]}",
            name: "${iteam[index]["namePrudact"]}",
            price: "${iteam[index]["price"]}",
          ),
        );
      },
    );
  }
}
