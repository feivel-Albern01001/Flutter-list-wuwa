import 'package:flutter/material.dart';
import '../model/tourism_place.dart';
import 'detail_screen.dart';
import '../screens/booking_history.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Solaris-3'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tourismPlaceList.length,
              itemBuilder: (context, index) {
                final TourismPlace place = tourismPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(place: place),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset(
                          place.imageAsset,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(place.location),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookingHistory(),
                  ),
                );
              },
              child: const Text("Lihat Histori Booking"),
            ),
          ),
        ],
      ),
    );
  }
}
