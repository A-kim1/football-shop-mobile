import 'package:flutter/material.dart';
import 'package:football_shop/screens/menu.dart';
// TODO: Impor halaman ProductFormPage jika sudah dibuat
import 'package:football_shop/screens/product_form.dart'; // nanti kita buat file ini
import 'package:football_shop/screens/product_entry_list.dart';

// utk my products
import 'package:football_shop/screens/my_product_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Column(
              children: [
                Text(
                  'Football Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Tempat terbaik untuk membeli perlengkapan sepak bola!",
                  // TODO SELESAI: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // Menu ke halaman utama
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),

          // Menu ke halaman tambah produk
          ListTile(
            leading: const Icon(Icons.add_circle_outline),
            title: const Text('Add Product'),
            // Bagian redirection ke ProductFormPage
            onTap: () {
              /*
              TODO: Buatlah routing ke ProductFormPage di sini,
              setelah halaman ProductFormPage sudah dibuat.
              */
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProductFormPage()),
              );
            },
          ),
// Add this ListTile in your drawer
ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
    title: const Text('Products List'),
    onTap: () {
        // Route to products list page
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductEntryListPage()),
        );
    },
),

// utk my products
ListTile(
  leading: const Icon(Icons.shopping_bag),
  title: const Text('My Products'),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyProductPage()),
    );
  },
),
        ],
      ),
    );
  }
}
