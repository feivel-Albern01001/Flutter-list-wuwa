import 'package:flutter/material.dart';
import '../model/tourism_place.dart';
import '../model/booking_model.dart';

class BookingFormPage extends StatefulWidget {
  final TourismPlace place;

  BookingFormPage({required this.place});

  @override
  _BookingFormPageState createState() => _BookingFormPageState();
}

class _BookingFormPageState extends State<BookingFormPage> {
  DateTime? startDate;
  DateTime? endDate;

  Future<void> selectDate(BuildContext context, bool isStart) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isStart) {
          startDate = picked;
        } else {
          endDate = picked;
        }
      });
    }
  }

  void saveBooking() {
  if (startDate != null && endDate != null) {
    bookingList.add(Booking(
      place: widget.place,
      startDate: startDate!,
      endDate: endDate!,
    ));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Booking berhasil disimpan')),
    );
    Navigator.pop(context);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Booking ${widget.place.name}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Tanggal Ambil: ${startDate?.toLocal().toString().split(' ')[0] ?? 'Belum dipilih'}"),
            ElevatedButton(
              onPressed: () => selectDate(context, true),
              child: Text("Pilih Tanggal Ambil"),
            ),
            SizedBox(height: 20),
            Text("Tanggal Kembali: ${endDate?.toLocal().toString().split(' ')[0] ?? 'Belum dipilih'}"),
            ElevatedButton(
              onPressed: () => selectDate(context, false),
              child: Text("Pilih Tanggal Kembali"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: saveBooking,
              child: Text("Simpan Booking"),
            ),
          ],
        ),
      ),
    );
  }
}
