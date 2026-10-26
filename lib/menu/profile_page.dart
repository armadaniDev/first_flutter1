import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final Color bgColor = const Color(0xFF0F0F0F);
  final Color textGrey = const Color(0xFFAAAAAA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Akun", style: TextStyle(fontSize: 18)),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),

          const Center(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.deepOrange,
              child: Text(
                "D",
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              "Dann Sigmaa",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              "@dannsigma45",
              style: TextStyle(color: textGrey, fontSize: 14),
            ),
          ),

          const SizedBox(height: 16),

          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white24),
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
              ),
              onPressed: () => Get.snackbar("Info", "Kelola Akun Google"),
              child: const Text("Kelola Akun Google"),
            ),
          ),

          const SizedBox(height: 16),
          const Divider(color: Colors.white12),

          _buildMenu(
            icon: Icons.account_circle_outlined,
            title: "Channel Anda",
            onTap: () => Get.snackbar("Info", "Channel Anda"),
          ),
          _buildMenu(
            icon: Icons.switch_account_outlined,
            title: "Ganti akun",
            onTap: () => Get.snackbar("Info", "Ganti akun"),
          ),
          _buildMenu(
            icon: Icons.visibility_off_outlined,
            title: "Aktifkan mode Samaran",
            onTap: () => Get.snackbar("Info", "Mode Samaran"),
          ),
          const Divider(color: Colors.white12),
          _buildMenu(
            icon: Icons.workspace_premium_outlined,
            title: "Dapatkan Music Premium",
            onTap: () => Get.snackbar("Info", "Music Premium"),
          ),
          _buildMenu(
            icon: Icons.headphones_outlined,
            title: "Kontrol mendengarkan",
            onTap: () => Get.snackbar("Info", "Kontrol mendengarkan"),
          ),
          _buildMenu(
            icon: Icons.download_outlined,
            title: "Download",
            onTap: () => Get.snackbar("Info", "Download"),
          ),
          _buildMenu(
            icon: Icons.settings_outlined,
            title: "Setelan",
            onTap: () => Get.snackbar("Info", "Setelan"),
          ),
          _buildMenu(
            icon: Icons.help_outline,
            title: "Bantuan dan masukan",
            onTap: () => Get.snackbar("Info", "Bantuan dan masukan"),
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Kebijakan Privasi",
                style: TextStyle(color: textGrey, fontSize: 12),
              ),
              Text("  •  ", style: TextStyle(color: textGrey)),
              Text(
                "Persyaratan Layanan",
                style: TextStyle(color: textGrey, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildMenu({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 15),
      ),
      onTap: onTap,
    );
  }
}
