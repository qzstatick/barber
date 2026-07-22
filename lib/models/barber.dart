import 'package:json_annotation/json_annotation.dart';

part 'barber.g.dart';

@JsonSerializable()
class Barber {
  final String id;
  final String name;
  final String phone;
  final String email;
  final String specialty;
  final double rating;
  final bool isAvailable;
  final List<String> workingDays; // 'Mon', 'Tue', etc.
  final String startTime;
  final String endTime;

  Barber({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.specialty,
    required this.rating,
    required this.isAvailable,
    required this.workingDays,
    required this.startTime,
    required this.endTime,
  });

  factory Barber.fromJson(Map<String, dynamic> json) =>
      _$BarberFromJson(json);

  Map<String, dynamic> toJson() => _$BarberToJson(this);
}
