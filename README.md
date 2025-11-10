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

-------------------------------------------------------------------------------------
TUGAS 2

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement() pada Flutter. Dalam kasus apa sebaiknya masing-masing digunakan pada aplikasi Football Shop kamu?

JWB:
Navigator.push(): digunain utk buka halaman baru di atas halaman sebelumnya. (kyk stack biasa aja)
Intinya, pengguna masih bisa kembali ke halaman sebelumnya dengan menekan tombol back.
- Contoh nya di Football Shop: saat mencet tombol "Create Product", aplikasi aku ini pake Navigator.push() utk pindah ke halaman form produk nya, biar pengguna bisa kembali ke menu utama setelah selesai.

Navigator.pushReplacement(): digunain utk mengganti halaman yg sedang ditampilkan dengan halaman baru, jadi dia gk bisa balik ke halaman sebelumnya.
- Contoh nya di Football Shop: digunain pada LeftDrawer, misalnya saat pengguna pencet menu "Home" atau "Add Product" di Drawer. Tujuannya itu biar ketika berpindah antarhalaman lewat menu samping (side menu) nya gitu, gk ada tumpukan halaman yg menumpuk dan navigasi nya jadi lebih bersih.


2. Bagaimana kamu memanfaatkan hierarchy widget seperti Scaffold, AppBar, dan Drawer untuk membangun struktur halaman yang konsisten di seluruh aplikasi?

JWB:
Di aplikasi Football Shop aku ini, struktur tiap halaman nya dibuat konsisten dengan memakai hierarchy widget utama, yaitu:
    - Scaffold: Sebagai kerangka dasar halaman nya gitu (sediain struktur body, app bar, dan drawer nya).

    - AppBar: Nampilin judul halaman di bagian atas agar pengguna tahu halaman apa yg sedang dibuka.

    - Drawer: Isinya adlh menu navigasi agar pengguna mudah berpindah antarhalaman seperti "Home" dan "Create Product".

Dengan adanya struktur yg kyk gini, semua halaman nya akan terlihat seragam, rapi, dan mudah digunain.


3. Dalam konteks desain antarmuka, apa kelebihan menggunakan layout widget seperti Padding, SingleChildScrollView, dan ListView saat menampilkan elemen-elemen form? Berikan contoh penggunaannya dari aplikasi kamu.

JWB:
Intinya ketiga widget yg disebutin di soal itu berfungsi utk mengatur tata letak (layout) agar form nya tetap nyaman digunain di berbagai ukuran layar.

- Padding: Kasih jarak antar elemen biar tampilan nya gk nempel2 dan lebih nyaman utk dilihat.
  Contoh: digunakan pada setiap TextFormField di halaman form produk supaya form terlihat rapi.

- SingleChildScrollView: Membuat halaman yg bisa discroll ke bawah kalo isinya banyak, jadi form tetap bisa diisi di layar kecil.
  Contoh: digunakan pada dialog konfirmasi "Save Product".

- ListView: Digunain untuk nampilin daftar elemen dalam bentuk list yang bisa discroll, cocok untuk daftar produk nantinya.
  Contoh: digunakan di dlm Drawer untuk nampung menu seperti "Home" dan "Add Product", sehingga kalo nanti menu nya bertambah banyak, pengguna tetep bisa scroll ke bawah tanpa kepotong gituu.

Dengan ketiga widget ini, tampilan form nya bakal jadi lebih fleksibel, rapi, dan user friendly.

4. Bagaimana kamu menyesuaikan warna tema agar aplikasi Football Shop memiliki identitas visual yang konsisten dengan brand toko?

JWB:

Aplikasi Football Shop aku ini pake tema warna utama (primary color) yg diatur di file main.dart nyaa.
Warna ini digunain secara konsisten gitu pada elemen2 seperti AppBar, tombol, dan ikon.

Misalnya, tombol "Create Product" itu aku kasih warna merah, biar pengguna bisa dengan gampang tau bahwa ttg tombol itu serta kegunaanya, sedangkan pada AppBar nya aku pake warna yang senada/konsisten dgn primary color app aku ini biar tampilannya seragam/konsisten di seluruh halaman nyaa.
