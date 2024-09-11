import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/data_coffee_cubit.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCoffeeCubit, DataCoffeeState>(
      builder: (context, state) {
        DataCoffeeCubit cubit2 = DataCoffeeCubit.get(context);
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            "${cubit2.favorite[index]["image"]}",
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: Text(
                                "${cubit2.favorite[index]["namePrudact"]}"),
                            subtitle: Text(
                                "${cubit2.favorite[index]["price"]}"),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.shopping_cart_checkout),
                            ),
                          ),
                        ),
                      ],
                    ),
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
                itemCount: cubit2.favorite.length,
              ),
            ),
          ),
        );
      },
    );
  }
}
