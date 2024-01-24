import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onClose;

  const CustomErrorWidget({
    Key? key,
    this.title = "Hubo un problema al iniciar sesión",
    this.content = "Por favor, revisa tu conexión a Internet o las credenciales.",
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 50,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Readex Pro',
                color: Color(0xFFFFFFFF),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(
                fontFamily: 'Readex Pro',
                color: Color(0xFFFFFFFF),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onClose,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Cerrar',
                style:  TextStyle(
                  fontFamily: 'Readex Pro',
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
