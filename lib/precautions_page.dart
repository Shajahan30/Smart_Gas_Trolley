import 'package:flutter/material.dart';

class precautions extends StatefulWidget {
  const precautions({Key? key}) : super(key: key);

  @override
  State<precautions> createState() => _precautionsState();
}

class _precautionsState extends State<precautions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Precautions'),
      ),
      body: PointWiseParagraph(),
    );
  }
}

class PointWiseParagraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PointListItem(
            icon: Icons.check_circle,
            text:
                'Store LPG cylinders in a well-ventilated area, preferably outdoors, away from direct sunlight, heat sources, and ignition sources. Avoid storing cylinders in basements or confined spaces.',
          ),
          PointListItem(
            icon: Icons.check_circle,
            text:
                'Always keep the LPG cylinder in an upright position to prevent leakage and ensure proper functioning of the pressure relief valve.',
          ),
          PointListItem(
            icon: Icons.check_circle,
            text:
                'Before using the cylinder, check for any signs of leakage by applying a soap solution to the connections and valves. If bubbles appear, there is a leak. Never use a cylinder that is leaking.',
          ),
          PointListItem(
            icon: Icons.check_circle,
            text:
                'Use LPG in well-ventilated areas to prevent the accumulation of gas, which can lead to suffocation or ignition hazards.',
          ),
        ],
      ),
    );
  }
}

class PointListItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const PointListItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.green,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
