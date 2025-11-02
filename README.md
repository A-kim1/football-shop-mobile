1. Jelaskan apa itu widget tree pada Flutter dan bagaimana hubungan parent-child (induk-anak) bekerja antar widget.

JWB:
Mungkin aku akan jelaskan apa itu widget di dalam flutter dulu, Widget dalam Flutter bisa dibilang sebagai komponen dasar dari tampilan aplikasi kita. Jadi semua hal yg kita lihat di layar Flutter kita mulai dari teks, tombol, ikon, gambar, sampai seluruh halaman aplikasi ktia semuanya adalah widget.

Widget Tree adalah struktur hierarkis yg menggambarkan hubungan antara widget-widget dalam aplikasi Flutter. Setiap widget itu bisa memiliki satu atau lebih widget lain di dalamnya.

Hubungan parent-child antar widget:
    - Parent adalah widget yg membungkus widget lain. Parent dapat mengirim data ke child melalui constructor.
    - Child adalah widget yg berada di dalam parent dan akan ditampilkan sesuai aturan parent-nya.
Sepemahaman aku, biasanya kalau suatu widget parent diubah2, maka anak2 (child widget) nya juga akan ikut berubah. Oleh karena itu ada contoh dimana widget form itu harusnya tidak ditaruh di widget tree level yg tinggi.

2. Sebutkan semua widget yg kamu gunakan dalam proyek ini dan jelaskan fungsinya.

JWB:
Beberapa widget yg aku gunakan di proyek ini:
    - MaterialApp: Root aplikasi nya aku yg menyediakan tema dan struktur dasar Material Design nya.
    - Scaffold: Scaffold menyediakan struktur dasar halaman, seperti AppBar dan body.
    - AppBar: Menampilkan judul di bagian atas halaman (Football Shop kalau di proyek aku ini).
    - Column dan Row: Menyusun widget secara vertikal (Column) dan horizontal (Row).
    - Card: Menampilkan elemen dalam bentuk kartu dengan baygan di bawahnya gitu.
    - Text: Menampilkan tulisan, seperti nama, NPM, dan label tombol.
    - Icon: Menampilkan ikon dari Material Icons (contohnya: store, shopping bag, dan add circle).
    - GridView.count: Menampilkan beberapa widget dalam bentuk grid (kotak-kotak).
    - InkWell: Memberikan efek sentuhan (klik) pada widget.
    - SnackBar: Menampilkan pesan singkat di bawah layar.
    - Padding, SizedBox, Center, Container: Mengatur jarak, posisi, dan tata letak widget.

3. Apa fungsi dari widget MaterialApp? Jelaskan mengapa widget ini sering digunakan sebagai widget root.

JWB:
Seperti yg sudah aku jelaskan pada no 2, MaterialApp adalah widget utama yg menjadi pembungkus seluruh aplikasi Flutter.

Beberapa fungsi2nya:
    - Menyediakan tema warna (ThemeData)
    - Menentukan halaman awal (home)
    - Mengatur navigasi antar halaman
    - Menerapkan gaya desain Material Design
    - ...

Widget ini sering digunakan sebagai widget root krn semua widget turunan di dalamnya bisa otomatis memakai tema, font, dan gaya yg disediakan oleh Material Design.

4. Jelaskan perbedaan antara StatelessWidget dan StatefulWidget. Kapan kamu memilih salah satunya?

JWB:
- StatelessWidget: Widget yg tidak punya data yg bisa berubah (tidak berubah secara otomatis melalui suatu aksi gitu). Tampilan hanya ditentukan sekali saat dibuat.
Contoh: teks statis, ikon, tombol yg hanya menampilkan pesan.

- StatefulWidget: Widget yg punya state (keadaan) dan bisa berubah saat aplikasi nya berjalan.
Contoh: form input, counter, halaman dengan animasi atau data dinamis.

Gunakan StatelessWidget kalau tampilannya mau tetap/statis, dan gunakan StatefulWidget kalau butuh perubahan data atau interaksi pengguna nya gituu.

5. Apa itu BuildContext dan mengapa penting di Flutter? Bagaimana penggunaannya di metode build?

JWB:
BuildContext adalah objek yg menyimpan informasi posisi widget di dalam widget tree, jadi dia itu yg nge-handle ke lokasi widget dalam widget tree.

BuildContext itu penting krn digunakan untuk:
    - Mengakses theme (Theme.of(context))
    - Menampilkan snackbar atau dialog (ScaffoldMessenger.of(context))
    - Menavigasi ke halaman lain (Navigator.of(context))

Biasanya BuildContext ini itu dipake di metode build(BuildContext context) untuk membangun tampilan sesuai posisi widget di tree.

6. Jelaskan konsep "hot reload" di Flutter dan bagaimana bedanya dengan "hot restart".

JWB:
- Hot reload: Memperbarui kode di aplikasi tanpa menghapus state (keadaan) yang sedang berjalan. Cocok utk mempercepat pengembangan UI nya.
Contoh: ubah teks atau warna, lalu simpan, langsung terlihat di emulator tanpa restart penuh.

- Hot restart: Memuat ulang seluruh aplikasi dari awal, state nya akan direset.
Contoh: menjalankan ulang aplikasi dari awal (mirip kyk restart biasa aja).

Jadi intinya, 
- hot reload = update cepat tanpa kehilangan data,
- hot restart = mulai ulang aplikasi sepenuhnya (restart penuh).