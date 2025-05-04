import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../services/preferences/preferences_service.dart';
//import 'package:get/get.dart';

class InformasiAkunScreen extends StatefulWidget {
  const InformasiAkunScreen({super.key});

  @override
  State<InformasiAkunScreen> createState() => _InformasiAkunScreenState();
}

class _InformasiAkunScreenState extends State<InformasiAkunScreen> {
  final _namaController = TextEditingController();
  final _teleponController = TextEditingController();
  final _alamatController = TextEditingController();

  bool isEditable = false;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final user = await PreferencesService.getUser();
    if (user != null) {
      setState(() {
        _namaController.text = user.fullName ?? '';
        _teleponController.text = user.phoneNumber ?? '';
        //_alamatController.text = user.village ?? '';
      });
    }
  }

  void _toggleEdit() {
    setState(() {
      isEditable = !isEditable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Informasi Akun', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(isEditable ? Icons.close : Icons.edit),
            onPressed: _toggleEdit,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 24.h),
            const Icon(Icons.account_circle,
                size: 72, color: Colors.blueAccent),
            const SizedBox(height: 8),
            const Text('Profil Anda',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 24.h),
            Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Informasi Pribadi',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(height: 12.h),
                  _buildTextField(Icons.person, 'Nama', _namaController),
                  _buildTextField(Icons.phone, 'Telepon', _teleponController),
                  _buildTextField(
                      Icons.location_on, 'Alamat', _alamatController),
                ],
              ),
            ),
            const Spacer(),
            if (isEditable)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                  ),
                  onPressed: () {
                    // Simpan data jika diperlukan
                    setState(() {
                      isEditable = false;
                    });
                  },
                  child: const Text('Simpan',
                      style: TextStyle(color: Colors.white)),
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      IconData icon, String label, TextEditingController controller) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: TextField(
        controller: controller,
        enabled: isEditable,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
