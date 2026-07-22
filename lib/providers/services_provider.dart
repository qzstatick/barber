import 'package:flutter/foundation.dart';
import '../models/service.dart';

class ServicesProvider extends ChangeNotifier {
  final List<Service> _services = [
    Service(
      id: '1',
      name: 'Классическая стрижка',
      description: 'Традиционная стрижка с ножницами',
      price: 500.0,
      durationMinutes: 30,
      category: 'haircut',
    ),
    Service(
      id: '2',
      name: 'Fade',
      description: 'Современная стрижка с плавным переходом',
      price: 700.0,
      durationMinutes: 40,
      category: 'haircut',
    ),
    Service(
      id: '3',
      name: 'Стрижка бороды',
      description: 'Оформление и стрижка бороды',
      price: 300.0,
      durationMinutes: 20,
      category: 'beard',
    ),
    Service(
      id: '4',
      name: 'Укладка волос',
      description: 'Профессиональная укладка',
      price: 400.0,
      durationMinutes: 25,
      category: 'styling',
    ),
  ];

  List<Service> get services => _services;

  void addService(Service service) {
    _services.add(service);
    notifyListeners();
  }

  void updateService(String id, Service service) {
    final index = _services.indexWhere((s) => s.id == id);
    if (index != -1) {
      _services[index] = service;
      notifyListeners();
    }
  }

  void deleteService(String id) {
    _services.removeWhere((s) => s.id == id);
    notifyListeners();
  }

  Service? getServiceById(String id) {
    try {
      return _services.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }

  List<Service> getServicesByCategory(String category) {
    return _services.where((s) => s.category == category).toList();
  }
}
