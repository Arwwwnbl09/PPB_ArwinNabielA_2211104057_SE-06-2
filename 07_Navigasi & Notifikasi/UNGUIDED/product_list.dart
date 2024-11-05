import 'package:flutter/material.dart';
import 'product.dart';
import 'product_detail.dart';
import 'dart:convert';

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Pertamax Turbo',
      description: 'Bahan bakar berkualitas tinggi untuk performa maksimal.',
      price: 13200,
      imageUrl:
          'data:image/png;base64,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',
    ),
    Product(
      name: 'Pertamax',
      description:
          'Bahan bakar kendaraan modern yang hemat & ramah lingkungan.',
      price: 12100,
      imageUrl:
          'data:image/png;base64,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',
    ),
    Product(
      name: 'Pertalite',
      description: 'Bahan bakar ekonomis dengan performa stabil.',
      price: 10000,
      imageUrl:
          'data:image/png;base64,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',
    ),
    Product(
      name: 'Dexlite',
      description: 'Bahan bakar diesel yang ekonomis dengan performa baik.',
      price: 12700,
      imageUrl:
          'data:image/png;base64,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',
    ),
    Product(
      name: 'Solar',
      description: 'Bahan bakar diesel standar dengan harga terjangkau.',
      price: 6800,
      imageUrl:
          'data:image/png;base64,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',
    ),
    Product(
      name: 'Pertamina Dex',
      description: 'Bahan bakar diesel premium untuk performa optimal.',
      price: 13150,
      imageUrl:
          'data:image/png;base64,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',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produk Bahan Bakar Pertamina'),
        backgroundColor: Colors.red[800],
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(product: product),
                  ),
                );
              },
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12)),
                      child: AspectRatio(
                        aspectRatio: 2,
                        child: Builder(
                          builder: (context) {
                            try {
                              // Decode base64 string after verifying its structure
                              final base64String =
                                  product.imageUrl.split(',')[1];
                              final decodedImage = base64Decode(base64String);
                              return Image.memory(
                                decodedImage,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              );
                            } catch (e) {
                              // Show an icon if there's an error loading the image
                              return Center(
                                child: Icon(
                                  Icons.broken_image,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Rp ${product.price}',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
