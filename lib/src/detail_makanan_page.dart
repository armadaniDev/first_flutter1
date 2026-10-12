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
          // Gambar + nama + harga + rating
          Card(
            elevation: 3,
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.network(
                    makanan.gambar,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) {
                      if (progress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey.shade200,
                        child: const Center(
                          child: Icon(Icons.broken_image, size: 48),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              makanan.namaMakanan,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Rp ${makanan.harga}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                        size: 22,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        makanan.rating,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
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
