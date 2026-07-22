import 'package:json_annotation/json_annotation.dart';

part 'appointment.g.dart';

@JsonSerializable()
class Appointment {
  final String id;
  final String barberId;
  final String serviceId;
  final String clientName;
  final String clientPhone;
  final DateTime dateTime;
  final int durationMinutes;
  final double price;
  final String status; // 'scheduled', 'completed', 'cancelled'
  final String? notes;

  Appointment({
    required this.id,
    required this.barberId,
    required this.serviceId,
    required this.clientName,
    required this.clientPhone,
    required this.dateTime,
    required this.durationMinutes,
    required this.price,
    required this.status,
    this.notes,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}
