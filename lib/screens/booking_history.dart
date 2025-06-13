import 'package:flutter/material.dart';
import '../model/booking_model.dart';
import '../screens/booking_detail_screen.dart';

class BookingHistory extends StatelessWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Booking')),
      body: ListView.builder(
        itemCount: bookingList.length,
        itemBuilder: (context, index) {
          final booking = bookingList[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(booking.place.imageAsset, width: 60, fit: BoxFit.cover),
              title: Text(booking.place.name),
              subtitle: Text(
                'Dari: ${booking.startDate.day}/${booking.startDate.month}/${booking.startDate.year}\n'
                'Sampai: ${booking.endDate.day}/${booking.endDate.month}/${booking.endDate.year}',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingDetailScreen(booking: booking),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}