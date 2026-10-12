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
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return InkWell(
              onTap: (){
                //klik pindah ke ke detail list page
                //mengirim data menggunakan argumets get.to
                Get.to(() => DetailMakananPage(), arguments: makanan);
              },
              child: ListTile(
                title: Text(makanan.namaMakanan, style: TextStyle(fontSize: 20)),
                subtitle: Text(makanan.harga, style: TextStyle(fontSize: 15)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}
