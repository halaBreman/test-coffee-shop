part of 'data_coffee_cubit.dart';

@immutable
sealed class DataCoffeeState {}

final class DataCoffeeInitial extends DataCoffeeState {}
final class DataCoffeeSuccess extends DataCoffeeState {}
