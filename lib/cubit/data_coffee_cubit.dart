import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'data_coffee_state.dart';

class DataCoffeeCubit extends Cubit<DataCoffeeState> {
  DataCoffeeCubit() : super(DataCoffeeInitial());

  static DataCoffeeCubit get(context) => BlocProvider.of(context);


  List<Map<String,dynamic>> iteam = [{
    "namePrudact":"Latte",
    "image":"images/coffee-latte.png",
    "price": "1\$",
    "categories" : "hot coffee"
  },
    {
      "namePrudact":"Ice Coffee",
      "image":"images/affogato-coffee.png",
      "price": "1\$",
      "categories" : "cold coffee"
    },
    {
      "namePrudact":"Cappuccino",
      "image":"images/cappuccino.png",
      "price": "1\$",
      "categories" : "hot coffee"
    },
    {
      "namePrudact":"Turkish Coffee",
      "image":"images/turkish-coffee.png",
      "price": "1\$",
      "categories" : "hot coffee"
    },
    {
      "namePrudact":"Espresso",
      "image":"images/espresso.png",
      "price": "1\$",
      "categories" : "hot coffee"
    },
  ];
  List<dynamic> coffeeHot = [];
  List<dynamic> coffeeIce = [];
  var favorite = [];
  void getHot(){
    coffeeHot = iteam.where((element) => element["categories"]=="hot coffee").toList();
    emit(DataCoffeeSuccess());
  }
  void getIce(){
      coffeeIce = iteam.where((element) => element["categories"]=="cold coffee").toList();
      emit(DataCoffeeSuccess());
  }
  addFavorite(Map<String,dynamic> list){
    favorite.add(list);
    print("*********$favorite*********");
    emit(DataCoffeeSuccess());

  }
}
