import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String imagePath;
  const AuthHeader({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFA2C382),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.9);
    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2, size.height * 0.9);
    path.quadraticBezierTo(
        firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    final secondControlPoint = Offset(size.width * 3 / 4, size.height * 0.8);
    final secondEndPoint = Offset(size.width, size.height * 0.9);
    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => false;
}
