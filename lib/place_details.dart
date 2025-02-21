import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaceDetails extends StatefulWidget {
  final String placeName, image, description;

  const PlaceDetails({
    super.key,
    required this.placeName,
    required this.image,
    required this.description,
  });

  @override
  State<PlaceDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 29, 117, 56), // Better contrast
      appBar: AppBar(
        title: Text(
          "Place Details",
          style: GoogleFonts.acme(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 29, 117, 56),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Place Image
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/${widget.image}",
                width: screenWidth,
                height: 300,
                fit: BoxFit.fitWidth,
                errorBuilder: (context, error, stackTrace) {
                  return const Text("Image not found!",
                      style:
                          TextStyle(color: Color.fromARGB(255, 29, 117, 56)));
                },
              ),
            ),

            // Place Name
            Container(
              height: 100,
              width: screenWidth,
              color: const Color.fromARGB(255, 71, 191, 95),
              alignment: Alignment.center,
              child: Text(
                widget.placeName,
                style: GoogleFonts.acme(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),

            // Place Description
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.description,
                style: GoogleFonts.acme(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
