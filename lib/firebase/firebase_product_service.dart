import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class FirebaseProductService {
  final CollectionReference productCollection =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product) async {
    // Implement add product logic here
  }

  // Add other Firebase product methods like updateProduct, deleteProduct, etc.
}
