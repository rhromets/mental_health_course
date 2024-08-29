import 'package:flutter/material.dart';
import 'package:mental_health_course/theme/theme.dart';

class TaskCard extends StatelessWidget {
  final Color color;
  final String title;
  final String description;

  const TaskCard({
    super.key,
    required this.color,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 16,
      ),
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Flexible(
                child: Text(
                  description,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(50)),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: DefaultColors.textColor,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
