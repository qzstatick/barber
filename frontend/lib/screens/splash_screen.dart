import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Автоматический переход через 3 секунды (опционально)
    // Future.delayed(const Duration(seconds: 3), () {
    //   if (mounted) context.go('/');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Логотип/Иконка
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  '✂',
                  style: TextStyle(
                    fontSize: 60,
                    color: const Color(0xFF1F1F1F),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Название
            Text(
              'BARBER SPACE',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
            ),
            const SizedBox(height: 16),
            // Подзаголовок
            Text(
              'Найди своего мастера',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.grey[400],
                  ),
            ),
            const SizedBox(height: 60),
            // Кнопка "Начать"
            ElevatedButton(
              onPressed: () => context.go('/home'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF1F1F1F),
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                'Начать',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: const Color(0xFF1F1F1F),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
