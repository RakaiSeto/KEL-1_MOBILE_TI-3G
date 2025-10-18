import 'package:flutter/material.dart';
import '../widgets/auth_header.dart';
import '../../../core/widgets/input_field.dart';
import '../../../core/widgets/bottom_navbar.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 🔹 Simulasi login tanpa backend
  bool _login(String email, String password) {
    return email == "admin@example.com" && password == "admin";
  }

  void _handleLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (_login(email, password)) {
      // Jika email & password benar
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    } else {
      // Jika salah, tampilkan pesan kesalahan
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Login Gagal"),
          content: const Text("Email atau password salah!"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar header di atas
            const AuthHeader(imagePath: 'images/bg-auth.jpg'),

            // Form login
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Masuk untuk melanjutkan ke aplikasi',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),

                  // Input Email
                  InputField(
                    label: 'Email',
                    hintText: 'Masukkan Email',
                    controller: _emailController,
                  ),

                  // Input Password
                  InputField(
                    label: 'Password',
                    hintText: 'Masukkan Password',
                    obscureText: !_isPasswordVisible,
                    controller: _passwordController,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () => setState(
                          () => _isPasswordVisible = !_isPasswordVisible),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Checkbox "Ingat Saya"
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: _rememberMe,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _rememberMe = newValue ?? false;
                            });
                          },
                          activeColor: const Color(0xFFA2C382),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Ingat Saya',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // Tombol Login
                  ElevatedButton(
                    onPressed: _handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA2C382),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Link ke Register
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Belum punya akun? '),
                      TextButton(
                        onPressed: () {
                          // Navigasi ke halaman Register
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterPage()),
                          );
                        },
                        child: const Text(
                          'Register',
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
