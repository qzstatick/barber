import 'package:flutter/foundation.dart';
import '../models/barber.dart';

class BarbersProvider extends ChangeNotifier {
  final List<Barber> _barbers = [
    Barber(
      id: '1',
      name: 'Иван Петров',
      phone: '+79999999999',
      email: 'ivan@barber.com',
      specialty: 'Классическая стрижка',
      rating: 4.8,
      isAvailable: true,
      workingDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
      startTime: '09:00',
      endTime: '18:00',
    ),
    Barber(
      id: '2',
      name: 'Сергей Иванов',
      phone: '+79888888888',
      email: 'sergey@barber.com',
      specialty: 'Fade & Undercut',
      rating: 4.9,
      isAvailable: true,
      workingDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sun'],
      startTime: '10:00',
      endTime: '19:00',
    ),
  ];

  List<Barber> get barbers => _barbers;

  void addBarber(Barber barber) {
    _barbers.add(barber);
    notifyListeners();
  }

  void updateBarber(String id, Barber barber) {
    final index = _barbers.indexWhere((b) => b.id == id);
    if (index != -1) {
      _barbers[index] = barber;
      notifyListeners();
    }
  }

  void deleteBarber(String id) {
    _barbers.removeWhere((b) => b.id == id);
    notifyListeners();
  }

  Barber? getBarberById(String id) {
    try {
      return _barbers.firstWhere((b) => b.id == id);
    } catch (e) {
      return null;
    }
  }

  List<Barber> getAvailableBarbers() {
    return _barbers.where((b) => b.isAvailable).toList();
  }
}
