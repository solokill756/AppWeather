import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key, required this.location});
  final String location;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/icons/Vector.png'),
            const SizedBox(width: 10),
            Text(
              location,
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            )
          ],
        ),
        const SizedBox(height: 17),
        Text(
          df.format(DateTime.now()),
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
