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
TUGAS 8

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

----------------------------------------------------------------------------------------------------------------------
Tugas 9

1. Jelaskan mengapa kita perlu membuat model Dart saat mengambil/mengirim data JSON? Apa konsekuensinya jika langsung memetakan Map<String, dynamic> tanpa model (terkait validasi tipe, null-safety, maintainability)?

JWB:
Kita itu perlu buat model Dart (class) utk mengambil/mengirim data JSON nya krn model Dart (class) memberi struktur yg jelas (field & tipe) sehingga JSON yg diterima/dikirim bisa dipetakan dgn aman lewat fromJson() / toJson().

Konsekuensi kalo pakai Map<String, dynamic>secara langsung:
- Validasi tipe lemah: Kesalahan tipe (misal: angka vs string) baru ketahuan saat runtime --> lngsng crash.
- Null safety susah dijaga: Sulit utk menentukan field wajib vs opsional nya.
- Maintainability berkurang: Kalau struktur API berubah, perubahan tersebar ke banyak file, dengan model tinggal perbarui di satu tempat ajaa.

Intinya: model itu lebih aman, mudah debug, dan lebih mudah dirawat. 


2.  Apa fungsi package http dan CookieRequest dalam tugas ini? Jelaskan perbedaan peran http vs CookieRequest.

JWB:
- http (package: http): Package utk melakukan request HTTP (GET,POST, dll) ke web service. Cocok utk panggilan stateless sederhana atau digunakan biasanya utk mengambil atau mengirim data dalam format JSON.

- CookieRequest (package: pbp_django_auth): wrapper + helper yang dibuat untuk integrasi Django: menangani cookie/session, CSRF token, postJson() yang otomatis set content-type, dan method khusus login(), logout() yang mengelola status login. Intinya: package kustom dari tim PBP yg berguna utk menangani autentikasi berbasis cookie (login, register, logout) dan menyimpan session.

Perbedaan peran: - http = cuman alat umum aja --> hanya menangani request biasa, tanpa manajemen session.
                 - CookieRequest = alat tingkat tinggi gitu yg memudahkan autentikasi/session dengan Django. --> extends kemampuan http dgn menyimpan dan mengirim cookie otomatis, sehingga session pengguna tetap terjaga.


3.  Jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

JWB:
Karena session & cookie (contoh: sessionid, CSRF) harus tetap konsisten di seluruh aplikasi. Jika setiap halaman pakai instance sendiri, status login nya bisa hilang/tidak sinkron.

Praktik yg biasanya digunakan/dianjurkan: buat CookieRequest sekali aja di root (Provider) lalu share ke seluruh widget sehingga smua request memakai cookie/CSRF yg sama.

4.  Jelaskan konfigurasi konektivitas yang diperlukan agar Flutter dapat berkomunikasi dengan Django. Mengapa kita perlu menambahkan 10.0.2.2 pada ALLOWED_HOSTS, mengaktifkan CORS dan pengaturan SameSite/cookie, dan menambahkan izin akses internet di Android? Apa yang akan terjadi jika konfigurasi tersebut tidak dilakukan dengan benar?

JWB:
10.0.2.2 pada ALLOWED_HOSTS: emulator Android mengakses host machine lewat 10.0.2.2. Tanpa itu, Django akan tolak request nyaa (host not allowed).

CORS (django-cors-headers): memungkinkan Flutter (origin berbeda) mengakses resource dari Django. Tanpa CORS, browser/emulator diblokir oleh kebijakan same origin.

SameSite/cookie settings (CSRF_COOKIE_SAMESITE='None', CORS_ALLOW_CREDENTIALS=True, dll): agar cookie session & CSRF bisa dikirim lintas origin. Jika SameSite terlalu ketat, cookie gk dikirim --> login/gateway nya gagal.

Izin Internet di AndroidManifest (INTERNET): tanpa permission, aplikasi Android tidak bisa membuat koneksi keluar.

Jika salah konfigurasi: request akan gagal (403/401/blocked), login tidak tersimpan, gambar eksternal mungkin tidak muncul, atau aplikasi tidak bisa ambil/submit data

5.  Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

JWB:
1) User input di form Flutter --> data nya diambil dari TextEditingController.
2) Flutter memanggil request.postJson("http://.../create-flutter/", jsonEncode({...}) --> endpoint Django nyaa) (CookieRequest menambahkan header/CSRF jika perlu).
3) Django view menerima JSON, memvalidasi, menyimpan ke database, lalu mengembalikan JSON response.
4) Flutter menerima response --> kalo sukses: tampilkan snackbar/navigasi kembali, kalo gagal: tampilkan error.
5) Untuk menampilkan list: Flutter memanggil request.get("http://.../json/" --> endpoint Django nyaa), mengonversi response ke model Dart (fromJson) dan menampilkan melalui FutureBuilder/ListView.


6.  Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

1) Register:
- Flutter kirim POST ke /auth/register/ (JSON {username, password1, password2}).
- Django membuat User, mengembalikan status sukses.
- Trus Flutter nya arahin ke halaman login.

2) Login:
- User input username & password --> Flutter panggil request.login("http://.../auth/login/", {username, password}) .
- Django authenticate() --> kalo ok, auth_login() menyimpan session di cookie (mis. sessionid) dan mengembalikan JSON {status: True, message, username}.
- CookieRequest menyimpan cookie & loggedIn = true. Sekarang semua request berikutnya otomatis membawa cookie session.
- UI Flutter cek request.loggedIn dan menampilkan menu/halaman yang hanya untuk user terautentikasi.

3) Logout:
- User tekan tombol logout --> Flutter panggil request.logout("http://.../auth/logout/").
- Django memanggil auth_logout(), menghapus session, mengembalikan JSON.
- Flutter menavigasi kembali ke halaman login dan UI menyesuaikan.

7.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

JWB:
1) Pertama aku mau buat authentikasi nya dulu buat proyek flutter aku ini, langkah pertamanya adalah integrasi Autentikasi Django dan Flutter nya dulu (disini aku bakal buat django app baru yg namanya adalah authentication).
2) Lanjut ke langkah selanjutnya aku bakal Integrasi Sistem Autentikasi pada Flutter nyaa. Krn tadai django nya udh aku setup autentikasi nya pada app authentication, sekarang aku bakal integrasiin app itu sama flutternya. Disini intinya aku bakal buat fitur authentikasi login dan register nyaa dulu (logoutnya nanti).
3) Stlh udh bikin authentikasi login dan registernya, aku lanjut Membuat Model Kustom yang menyesuaikan dengan data JSON aku di proyek aku. Nahh pada langkah ini aku bakal pake bantuan dari website Quicktype utk bantu convert jadi data JSON nya.
4) Langkah selanjutnya adalah aku bakal nerapin Fetch Data dari Django Untuk Ditampilkan ke Flutter nyaa.
5) Setelah aku buat fetch data dari django nya utk di flutter nya aku bakal Integrasi Form Flutter Dengan Layanan Django nya aku.
6) Selanjutnya aku akan membuat fitur logout utk proyek flutter ku ini. Ini aku bakal buat button baru di home page nya gitu utk di implementasikan fitur logoutnya
7) Terakhir aku akan buat filter my products, ini itu intinya kyk liat all products aja cuman skrng jadinya cuman bisa liat product user yg sedang loginnya aja. Ini intinya sama persis kyk logic fitur show all products gitu cuman di tambahin filtering user nya di views.py nya