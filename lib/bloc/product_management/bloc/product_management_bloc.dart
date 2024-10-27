import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:henconsman_market/bloc/product_management/bloc/product_management_event.dart';
import 'package:henconsman_market/bloc/product_management/bloc/product_management_state.dart';

import '../../../repository/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc({required this.productRepository}) : super(ProductInitial());

  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    // Handle different product events here
  }
}
