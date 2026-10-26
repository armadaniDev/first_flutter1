import 'package:first_flutter1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  //data makanan berupa list, hardcoded
  RxList<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      harga: "10000",
      rasa: "Gurih",
      deskripsi: "Soto berkuah kuning dengan suwiran ayam, soun, tauge, dan telur rebus, disajikan dengan taburan bawang goreng.",
      rating: "4.3",
      review: "Kuahnya hangat dan segar, porsinya pas untuk sarapan.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtuJ1zHRfxsWE1F3CoThht78ZTV3LJtVd9NRqh7PqqBQ&s=10",
    ),
    MakananModel(
      namaMakanan: "Soto Kerbau",
      harga: "20000",
      rasa: "Gurih, Manis, Pedas",
      deskripsi: "Soto khas dengan daging kerbau empuk dan kuah kaldu pekat yang kaya rempah.",
      rating: "4.5",
      review:
          "Dagingnya empuk dan bumbunya meresap, cocok untuk pecinta pedas.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLhn8dHEop3YalC6s1vTKpj3gL-s8mYhlHAHVhu6Mrkw&s=10",
    ),
    MakananModel(
      namaMakanan: "Ayam Geprek",
      harga: "12000",
      rasa: "Pedas, Gurih",
      deskripsi: "Ayam goreng tepung krispi yang digeprek bersama sambal bawang pedas, disajikan dengan nasi hangat.",
      rating: "4.4",
      review:
          "Krispi di luar, sambalnya mantap dan level pedasnya bisa diatur.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTG2dgQQl_mZ0rwteaVKChb8dHUdtbZjnDhS5QW1MwQJQ&s=10",
    ),
    MakananModel(
      namaMakanan: "Nasi Goreng",
      harga: "13000",
      rasa: "Gurih, Manis",
      deskripsi: "Nasi goreng dengan bumbu kecap, telur, dan ayam, dilengkapi kerupuk dan acar.",
      rating: "4.2",
      review: "Aroma wangi dan bumbunya seimbang, porsinya mengenyangkan.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNjS3TcRXmtkqWWwxdCkrsLw-YPh-u4io8UG1NkcJgyA&s=10",
    ),
    MakananModel(
      namaMakanan: "Mie Ayam",
      harga: "9000",
      rasa: "Gurih, Manis",
      deskripsi: "Mie kenyal dengan topping ayam kecap dan sawi, disajikan dengan kuah kaldu terpisah.",
      rating: "4.1",
      review: "Harganya murah dan mienya kenyal, cocok untuk makan siang.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSihr4g08AJTj1Pq5zKhZBmB5KWcvDI5um2og-9O0ErA&s",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar",
      harga: "18000",
      rasa: "Manis, Gurih",
      deskripsi: "Ayam dibakar dengan bumbu kecap dan rempah, disajikan dengan lalapan dan sambal.",
      rating: "4.4",
      review: "Bumbunya meresap sampai ke dalam dan aroma bakarnya khas.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhA_OgMFS5CCUkFJtf822dypeDjhXEDCHBAWjIcDz69g&s=10",
    ),
    MakananModel(
      namaMakanan: "Sate Kambing",
      harga: "18000",
      rasa: "Gurih, Manis",
      deskripsi: "Sate daging kambing muda dibakar dengan bumbu kecap, disajikan dengan irisan bawang dan tomat.",
      rating: "4.6",
      review: "Dagingnya empuk dan tidak bau prengus, bumbunya pas.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1dtVSF1iAYDWAaE-GqCdFQGRllA6teHyH9Zp3TRdbUg&s=10",
    ),
    MakananModel(
      namaMakanan: "Martabak",
      harga: "20000",
      rasa: "Gurih, Manis",
      deskripsi: "Martabak dengan isian telur dan daging cincang yang digoreng hingga garing, disajikan dengan acar.",
      rating: "4.5",
      review: "Kulitnya tipis dan renyah, isiannya melimpah.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT80caORr_RKOiGeO8DJIfaNQtI9NeEQ1IdYvW5HiXNDg&s=10",
    ),
    MakananModel(
      namaMakanan: "Bakso",
      harga: "15000",
      rasa: "Gurih, Segar",
      deskripsi: "Bakso daging sapi dengan mie, tahu, dan bihun dalam kuah kaldu bening yang gurih.",
      rating: "4.4",
      review: "Baksonya kenyal dan kuahnya segar, enak saat cuaca dingin.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10",
    ),
    MakananModel(
      namaMakanan: "Gado-Gado",
      harga: "11000",
      rasa: "Gurih, Manis, Pedas",
      deskripsi: "Sayuran rebus, tahu, tempe, dan lontong disiram saus kacang kental, dilengkapi kerupuk.",
      rating: "4.2",
      review: "Sausnya kental dan sayurannya segar, pilihan sehat dan murah.",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMCR5FKg9z82i3HbnnsTeugZhrfELVYgP7g9SUP7CUAw&s=10",
    ),
  ].obs;
}
