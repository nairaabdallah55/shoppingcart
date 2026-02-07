import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import '../widgets/cart_icon_with_badge.dart';
import '../providers/cart_provider.dart';
import '../screens/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Product> products = [
    Product(
      id: '1',
      title: 'Samsung 65-Inch Neo QLED 4K Smart TV QA6...',
      price: 32.8,
      image: 'assets/images/samsung.png',
      rating: 4.5,
      reviews: 132,
    ),
    Product(
      id: '2',
      title: 'Apple 2025 MacBook Air 13-inch Laptop with...',
      price: 51.0,
      image: 'assets/images/mac.png',
      rating: 5,
      reviews: 85,
    ),
    Product(
      id: '3',
      title: 'POLAR Ignite 3 GPS Smartwatch iPhone...',
      price: 19.5,
      image: 'assets/images/smartwatch.png',
      rating: 3.5,
      reviews: 42,
    ),
    Product(
      id: '4',
      title: 'Soundcore by Anker Life Q30 Hybrid Active Noise...',
      price: 3.95,
      image: 'assets/images/soundcore.png',
      rating: 4,
      reviews: 58,
    ),
    Product(
      id: '5',
      title: 'HONOR 400 5G Smartphone, 200MP Al ..',
      price: 21.9,
      image: 'assets/images/honor.png',
      rating: 5,
      reviews: 77,
    ),
    Product(
      id: '6',
      title: 'JBL Go 4 Portable Bluetooth Speaker with I...',
      price: 1.89,
      image: 'assets/images/jbl.png',
      rating: 4,
      reviews: 23,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/logo.png', height: 41),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartScreen()),
              );
            },
            child: const CartIconWithBadge(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.70,
          ),
          itemBuilder: (context, index) {
            return ProductCard(product: products[index]);
          },
        ),
      ),
    );
  }
}