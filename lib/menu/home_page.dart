import 'package:first_flutter1/components/custom_section_card.dart';
import 'package:first_flutter1/controller/list_makanan_controller.dart';
import 'package:first_flutter1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              "Daftar Makanan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            height: 170,
            child: Obx(
              () => ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: controller.dataMakanan.length,
                itemBuilder: (context, index) {
                  final makanan = controller.dataMakanan[index];

                  return Dismissible(
                    key: ValueKey(makanan.namaMakanan),
                    direction: DismissDirection.up,
                    onDismissed: (_) {
                      controller.dataMakanan.removeAt(index);
                      Get.snackbar(
                        "Dihapus",
                        "${makanan.namaMakanan} berhasil dihapus",
                      );
                    },
                    background: Container(
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 12),
                      child: const Icon(Icons.delete, color: Colors.white),
                    ),
                    child: SizedBox(
                      width: 260,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            // klik pindah ke halaman detail
                            // mengirim data menggunakan arguments
                            Get.toNamed(
                              Routes.detail_makanan,
                              arguments: makanan,
                            );
                          },
                          child: CustomSectionCard(
                            title: makanan.namaMakanan,
                            icon: Icons.restaurant,
                            child: Row(
                              spacing: 12,
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
