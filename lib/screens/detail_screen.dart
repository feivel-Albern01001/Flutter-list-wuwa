import 'package:flutter/material.dart';
import '../model/tourism_place.dart';
import 'booking_form.dart';


class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(place.imageAsset),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(width: 4),
                        Text(place.openDays),
                        const SizedBox(width: 16),
                        const Icon(Icons.access_time),
                        const SizedBox(width: 4),
                        Text(place.openTime),
                        const SizedBox(width: 16),
                        const Icon(Icons.attach_money),
                        const SizedBox(width: 4),
                        Text(place.ticketPrice),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      place.description,
                      textAlign: TextAlign.justify,
                    ),
                    ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookingFormPage(place: place),
      ),
    );
  },
  child: Text("Booking Sekarang"),
),
                    const SizedBox(height: 16),
                    const Text(
                      'Galeri Foto',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: place.imageUrls.map((url) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(url),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
