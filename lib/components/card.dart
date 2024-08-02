import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {

  final String image;
  final String country;
  final String continent;
  final String language;

  const CardWidget({
    super.key,
    required this.image,
    required this.country,
    required this.continent,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0x603B3B3B)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(height: 5),
              Text(
                country,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black
                ),
              ),
              const SizedBox(height: 5),
              Text(
                continent,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black
                ),
              ),
              const SizedBox(height: 5),
              Text(
                language,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}