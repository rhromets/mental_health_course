import 'package:flutter/material.dart';
import 'package:mental_health_course/theme/theme.dart';
import 'package:mental_health_course/widgets/feeling_button.dart';
import 'package:mental_health_course/widgets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/images/menu_burger.png'),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
          SizedBox(width: 25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          right: 25,
          left: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back, Sarina!',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 32),
              Text(
                'How are you feeling today ?',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeelingButton(
                    label: 'Happy',
                    image: 'assets/images/happy.png',
                    color: DefaultColors.pink,
                  ),
                  FeelingButton(
                    label: 'Calm',
                    image: 'assets/images/calm.png',
                    color: DefaultColors.purple,
                  ),
                  FeelingButton(
                    label: 'Relax',
                    image: 'assets/images/relax.png',
                    color: DefaultColors.orange,
                  ),
                  FeelingButton(
                    label: 'Focus',
                    image: 'assets/images/focus.png',
                    color: DefaultColors.lightteal,
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Today\'s Task',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 18),
              const TaskCard(
                color: DefaultColors.task1,
                title: 'Morning',
                description:
                    'Let\'s open up to the  thing that matters amoung the people',
              ),
              const TaskCard(
                color: DefaultColors.task2,
                title: 'Noon',
                description:
                    'Let\'s open up to the  thing that matters amoung the people',
              ),
              const TaskCard(
                color: DefaultColors.task3,
                title: 'Evening',
                description:
                    'Let\'s open up to the  thing that matters amoung the people',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
