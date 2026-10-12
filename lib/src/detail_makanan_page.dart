import 'package:first_flutter1/components/custom_section_card.dart';
import 'package:first_flutter1/controller/detail_makanan_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(DetailMakananController());

  @override
  Widget build(BuildContext context) {
    final makanan = controller.makanan;

    return Scaffold(
      appBar: AppBar(title: Text(makanan.namaMakanan)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomSectionCard(
            title: makanan.namaMakanan,
            icon: Icons.restaurant,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image.network(makanan.gambar, fit: BoxFit.cover),
                  ),
                ),
                Text(
                  "Rp ${makanan.harga}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text("Rating: ${makanan.rating}"),
              ],
            ),
          ),
          CustomSectionCard(
            title: "Rasa",
            icon: Icons.restaurant_menu,
            child: Text(makanan.rasa),
          ),
          CustomSectionCard(
            title: "Deskripsi",
            icon: Icons.description_outlined,
            child: Text(makanan.deskripsi, style: const TextStyle(height: 1.5)),
          ),
          CustomSectionCard(
            title: "Review",
            icon: Icons.rate_review_outlined,
            child: Text(
              makanan.review,
              style: const TextStyle(fontStyle: FontStyle.italic, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
