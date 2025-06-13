// booking_model.dart
import 'tourism_place.dart';

class Booking {
  final TourismPlace place;
  final DateTime startDate;
  final DateTime endDate;
  final String status;

  Booking({
    required this.place,
    required this.startDate,
    required this.endDate,
    this.status = 'Selesai',
  });
}

List<Booking> bookingList = []; // ini nanti diisi dari form booking
