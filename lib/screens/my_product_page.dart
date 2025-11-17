// INi file sama aja kyk product_entry_list.dart, tapi ini buat nampilin produk yg dimasukin user yang lagi login aja

import 'package:flutter/material.dart';
import 'package:football_shop/models/product_entry.dart';
import 'package:football_shop/widgets/product_entry_card.dart';
import 'package:football_shop/widgets/left_drawer.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:football_shop/screens/product_detail.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});

  @override
  State<MyProductPage> createState() => _MyProductPageState();
}

class _MyProductPageState extends State<MyProductPage> {
  Future<List<ProductEntry>> fetchMyProducts(CookieRequest request) async {
    final response = await request.get("http://localhost:8000/json-user/");

    List<ProductEntry> productList = [];
    for (var d in response) {
      if (d != null) {
        productList.add(ProductEntry.fromJson(d));
      }
    }

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(title: const Text('My Products')),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchMyProducts(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text(
                "You don't have any products yet.",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (_, index) => ProductEntryCard(
              product: snapshot.data![index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      product: snapshot.data![index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
