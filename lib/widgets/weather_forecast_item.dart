import 'package:flutter/material.dart';

class WeatherForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;

  const WeatherForecastItem({
    super.key,
    required this.time,
    required this.icon,
    required this.temperature,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 6,
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              temperature,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
