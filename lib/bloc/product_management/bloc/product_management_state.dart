import 'package:henconsman_market/models/product_model.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  ProductLoaded({required this.products});
}

// Add other product states like ProductError, ProductAdded, ProductUpdated, etc.
