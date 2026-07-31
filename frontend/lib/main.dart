import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'providers/appointments_provider.dart';
import 'providers/barbers_provider.dart';
import 'providers/services_provider.dart';
import 'screens/home_screen.dart';
import 'screens/appointments_screen.dart';
import 'screens/services_screen.dart';
import 'screens/barbers_screen.dart';
import 'screens/appointment_detail_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BarberApp());
}

class BarberApp extends StatelessWidget {
  const BarberApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppointmentsProvider()),
        ChangeNotifierProvider(create: (_) => BarbersProvider()),
        ChangeNotifierProvider(create: (_) => ServicesProvider()),
      ],
      child: MaterialApp.router(
        title: 'Barber Shop',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1F1F1F),
            brightness: Brightness.light,
          ),
          textTheme: GoogleFonts.montserratTextTheme(),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF1F1F1F),
            brightness: Brightness.dark,
          ),
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        routerConfig: _buildRouter(),
      ),
    );
  }

  GoRouter _buildRouter() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/appointments',
          builder: (context, state) => const AppointmentsScreen(),
        ),
        GoRoute(
          path: '/appointment/:id',
          builder: (context, state) => AppointmentDetailScreen(
            id: state.pathParameters['id'] ?? '',
          ),
        ),
        GoRoute(
          path: '/services',
          builder: (context, state) => const ServicesScreen(),
        ),
        GoRoute(
          path: '/barbers',
          builder: (context, state) => const BarbersScreen(),
        ),
      ],
    );
  }
}
