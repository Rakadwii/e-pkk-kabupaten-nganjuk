import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UbahKataSandiScreen extends StatefulWidget {
  const UbahKataSandiScreen({super.key});

  @override
  State<UbahKataSandiScreen> createState() => _UbahKataSandiScreenState();
}

class _UbahKataSandiScreenState extends State<UbahKataSandiScreen> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _obscureCurrent = true;
  bool _obscureNew = true;
  bool _obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Kata Sandi"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Ubah Kata Sandi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            const Text("Ubah kata sandi untuk masuk.",
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),

            // Kata sandi saat ini
            _buildPasswordField(
              label: "Kata Sandi Saat Ini",
              controller: _currentPasswordController,
              obscureText: _obscureCurrent,
              toggleVisibility: () {
                setState(() => _obscureCurrent = !_obscureCurrent);
              },
            ),

            const SizedBox(height: 16),

            // Kata sandi baru
            _buildPasswordField(
              label: "Kata Sandi Baru",
              controller: _newPasswordController,
              obscureText: _obscureNew,
              toggleVisibility: () {
                setState(() => _obscureNew = !_obscureNew);
              },
            ),

            const SizedBox(height: 16),

            // Konfirmasi kata sandi
            _buildPasswordField(
              label: "Konfirmasi Kata Sandi",
              controller: _confirmPasswordController,
              obscureText: _obscureConfirm,
              toggleVisibility: () {
                setState(() => _obscureConfirm = !_obscureConfirm);
              },
            ),

            const Spacer(),

            // Tombol Simpan
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _handleSavePassword,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                ),
                child: const Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required String label,
    required TextEditingController controller,
    required bool obscureText,
    required VoidCallback toggleVisibility,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: "Masukkan $label".toLowerCase(),
            suffixIcon: IconButton(
              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
              onPressed: toggleVisibility,
            ),
            filled: true,
            fillColor: const Color(0xFFF1F1F1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  void _handleSavePassword() {
    final current = _currentPasswordController.text;
    final newPass = _newPasswordController.text;
    final confirm = _confirmPasswordController.text;

    if (current.isEmpty || newPass.isEmpty || confirm.isEmpty) {
      _showSnackBar("Semua kolom harus diisi");
    } else if (newPass != confirm) {
      _showSnackBar("Kata sandi baru tidak sama");
    } else {
      // TODO: Kirim data ke server / update di backend
      _showSnackBar("Kata sandi berhasil diperbarui");
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
