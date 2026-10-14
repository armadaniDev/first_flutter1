import 'package:first_flutter1/components/custom_section_card.dart';
import 'package:first_flutter1/controller/list_makanan_controller.dart';
import 'package:first_flutter1/src/detail_makanan_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.dataMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.dataMakanan[index];

          return InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              // klik pindah ke detail list page
              // mengirim data menggunakan arguments get.to
              Get.to(() => DetailMakananPage(), arguments: makanan);
            },
            child: CustomSectionCard(
              title: makanan.namaMakanan,
              icon: Icons.restaurant,
              child: Row(
                spacing: 12,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      makanan.gambar,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Rp ${makanan.harga}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
