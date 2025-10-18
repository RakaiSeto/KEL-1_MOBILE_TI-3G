import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';
import '../../../core/widgets/input_field.dart';
import '../../../core/widgets/dropdown_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  String? _selectedGender;
  String? _selectedAddress;
  String? _selectedOwnership;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AuthHeader(imagePath: 'images/bg-auth.jpg'),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Lengkapi formulir untuk mendaftar sebagai warga',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Nama Lengkap
                  const InputField(
                    label: 'Nama Lengkap',
                    hintText: 'Masukkan Nama Lengkap',
                  ),

                  // NIK
                  const InputField(
                    label: 'NIK',
                    hintText: 'Masukkan NIK',
                  ),

                  // Email
                  const InputField(
                    label: 'Email',
                    hintText: 'Masukkan Email',
                  ),

                  // No Telepon
                  const InputField(
                    label: 'No. Telepon',
                    hintText: 'Masukkan No. Telepon',
                  ),

                  // Password
                  InputField(
                    label: 'Password',
                    hintText: 'Masukkan Password',
                    obscureText: !_isPasswordVisible,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () => setState(
                        () => _isPasswordVisible = !_isPasswordVisible,
                      ),
                    ),
                  ),

                  // Konfirmasi Password
                  InputField(
                    label: 'Konfirmasi Password',
                    hintText: 'Masukkan Ulang Password',
                    obscureText: !_isConfirmPasswordVisible,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isConfirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () => setState(
                        () => _isConfirmPasswordVisible =
                            !_isConfirmPasswordVisible,
                      ),
                    ),
                  ),

                  // Jenis Kelamin
                  DropdownField(
                    label: 'Jenis Kelamin',
                    hintText: '-- Pilih Jenis Kelamin --',
                    items: const ['Laki-laki', 'Perempuan'],
                    value: _selectedGender,
                    onChanged: (value) {
                      setState(() => _selectedGender = value);
                    },
                  ),

                  // Alamat Rumah (jika tersedia)
                  DropdownField(
                    label: 'Alamat Rumah (Jika tersedia)',
                    hintText: '-- Pilih Alamat --',
                    items: const ['Alamat A', 'Alamat B'],
                    value: _selectedAddress,
                    onChanged: (value) {
                      setState(() => _selectedAddress = value);
                    },
                  ),

                  // Alamat Rumah (jika tidak tersedia)
                  const InputField(
                    label: 'Alamat Rumah (Jika tidak tersedia)',
                    hintText: 'Masukkan Alamat',
                  ),

                  // Status Kepemilikan Rumah
                  DropdownField(
                    label: 'Status Kepemilikan Rumah',
                    hintText: '-- Pilih Status Kepemilikan --',
                    items: const ['Milik Sendiri', 'Sewa/Kontrak'],
                    value: _selectedOwnership,
                    onChanged: (value) {
                      setState(() => _selectedOwnership = value);
                    },
                  ),

                  // Foto Identitas (dummy)
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Foto Identitas (KTP / KK)',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 0.5),
                    ),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                              side: const BorderSide(color: Colors.grey),
                            ),
                            elevation: 0,
                          ),
                          child: const Text('Pilih File'),
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Text(
                            'Tidak ada file terpilih',
                            style: TextStyle(color: Colors.grey),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Tombol Register
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFA2C382),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Link ke Login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Sudah punya akun? '),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFFA2C382),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
