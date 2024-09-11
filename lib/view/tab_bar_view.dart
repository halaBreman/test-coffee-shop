import 'package:flutter/material.dart';
import 'package:test333333333333333333333333333/cubit/data_coffee_cubit.dart';
import 'package:test333333333333333333333333333/view/widget/costum-grid-view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TabBarV extends StatelessWidget {
  const TabBarV({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const TabBar(
          indicatorColor: Colors.deepOrangeAccent,
          labelColor: Colors.deepOrangeAccent,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(text: 'All',),
            Tab(text: 'Hot Coffee',),
            Tab(text: 'Cold Coffee',),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: BlocConsumer<DataCoffeeCubit, DataCoffeeState>(
            listener: (context, state) {},
            builder: (context, state) {
              DataCoffeeCubit cubit = DataCoffeeCubit.get(context);
              return TabBarView(
                children: [
                  CustomGridView(
                    len: cubit.iteam.length,
                    iteam: cubit.iteam,
                  ),
                  CustomGridView(
                    len: cubit.coffeeHot.length,
                    iteam: cubit.coffeeHot,
                  ),
                  CustomGridView(
                    len: cubit.coffeeIce.length,
                    iteam: cubit.coffeeIce,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}


