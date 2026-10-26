import 'package:first_flutter1/components/custom_section_card.dart';
import 'package:first_flutter1/controller/list_makanan_controller.dart';
import 'package:first_flutter1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: Container(
        child: Obx(
          () => ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.dataMakanan[index];

              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    // klik pindah ke halaman detail
                    // mengirim data menggunakan arguments
                    Get.toNamed(Routes.detail_makanan, arguments: makanan);
                  },
                  child: CustomSectionCard(
                    title: makanan.namaMakanan,
                    icon: Icons.restaurant,
                    child: Row(
                      spacing: 12,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(makanan.gambar),
                              fit: BoxFit.cover,
                              onError: (exception, stackTrace) {},
                            ),
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
