import 'package:flutter/material.dart';

void main() {
  runApp(const EventDetailsApp());
}

class EventDetailsApp extends StatelessWidget {
  const EventDetailsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventDetailsPage(),
    );
  }
}

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Gambar Event
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: const Image(
                  image: AssetImage('assets/event_image.jpg'),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              // Nama Event
              const Text(
                'Dinoyo Music Festival',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              // Detail Event
              const Text(
                'Date: 23 November 2024\nTime: 10:00 AM\nLocation: Dinoyo',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              // Tombol Join dan Share
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('You joined the event!')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: const Text(
                      'Join',
                      style: TextStyle(color: Colors.white), // Ubah warna teks tombol
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Event shared!')),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.deepPurple),
                    ),
                    child: const Text(
                      'Share',
                      style: TextStyle(color: Colors.deepPurple), // Ubah warna teks tombol
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
