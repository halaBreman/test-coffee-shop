import 'package:flutter/material.dart';

class IteamsScreen extends StatelessWidget {
   const IteamsScreen({super.key, required this.image, required this.name, required this.price,});
   final String image;
   final String name;
   final String price;
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black45,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  height: 120,
                  width: 120,
                ),
              ),
              Text(
                name,
              ),
              const Text(
                "Best Coffee",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      radius: 18.0,
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
