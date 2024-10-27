import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/product_management/bloc/product_management_bloc.dart';
import 'firebase/firebase_auth_service.dart';
import 'firebase/firebase_product_service.dart';
import 'models/product_model.dart';
import 'repository/product_repository.dart';
import 'screens/cart_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/product_catalog_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  // ignore: prefer_typing_uninitialized_variables
  var firebase;
  final authRepository = AuthRepository(firebase - Auth - Service);
  FirebaseAuthService();
  final productRepository =
      ProductRepository(firebaseProductService: FirebaseProductService());

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepository: authRepository),
        ),
        BlocProvider<ProductBloc>(
          create: (context) =>
              ProductBloc(productRepository: productRepository),
        ),
      ],
      child: const HenconsmanEmarketApp(),
    ),
  );
}

class Auth {}

class HenconsmanEmarketApp extends StatelessWidget {
  const HenconsmanEmarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Henconsman e-Market',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/productCatalog': (context) => const ProductCatalogScreen(),
        '/productDetail': (context) => ProductDetailScreen(
              product: Product(
                  id: '1',
                  name: 'Sample Product',
                  description: 'Description',
                  price: 9.99),
            ),
        '/cart': (context) => const CartScreen(),
        '/checkout': (context) => const CheckoutScreen(),
      },
    );
  }
}
