// booking_detail_screen.dart
import 'package:flutter/material.dart';
import '../model/booking_model.dart';

class BookingDetailScreen extends StatelessWidget {
  final Booking booking;

  const BookingDetailScreen({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final place = booking.place;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Transaksi')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(place.imageAsset, height: 200)),
            const SizedBox(height: 16),
            Text(place.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(place.location),
            const Divider(height: 32),
            Text('Tanggal Booking:', style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Dari: ${booking.startDate.day}/${booking.startDate.month}/${booking.startDate.year}'),
            Text('Sampai: ${booking.endDate.day}/${booking.endDate.month}/${booking.endDate.year}'),
          ],
        ),
      ),
    );
  }
}
