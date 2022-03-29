import 'package:flutter/material.dart';
import 'package:uber_project/presentation/views/components/components.dart';
import 'package:uber_project/presentation/views/screens/history/history_item.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        //  Row(
        //   children: const [
        //     AppBackButton(),
        //     SizedBox(width: 20.0),
        //     Text('History'),
        //   ],
        // ),
        leading: const AppBackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return const HistoryItem(
              carType: 'Audi Q7',
              cost: '23',
              dropOff: 'Bridge Farm',
              pickUp: 'Springwood',
              timeDropOff: '12:02 PM',
              timePickUp: '11:30 AM',
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
          itemCount: 10,
        ),
      ),
    );
  }
}
