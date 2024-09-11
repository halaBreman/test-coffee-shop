import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test333333333333333333333333333/cubit/data_coffee_cubit.dart';
import 'package:test333333333333333333333333333/view/widget/costum-button.dart';

import 'home_screen.dart';

class DetailsScreen extends StatefulWidget {
  final data;

  const DetailsScreen({super.key, this.data});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    widget.data["image"],
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'BEST COFFEE',
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${widget.data["namePrudact"]}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                if (count != 0) {
                                  count--;
                                }
                              });
                            },
                          ),
                          Text('$count'),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                count++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${widget.data["price"]}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Coffee is a major source of antioddants in the diet, It has many health benfits',
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Volume: 60 ml',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumeButton(
                      text: 'Add to Cart',
                      onPressed: () {},
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.orangeAccent,
                        ),
                        height: 45,
                        width: 45,
                        child: IconButton(
                          onPressed: () {
                            BlocProvider.of<DataCoffeeCubit>(context).addFavorite(widget.data);
                          },
                          icon: const Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
