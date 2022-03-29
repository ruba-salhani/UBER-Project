import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    Key? key,
    required this.pickUp,
    required this.timePickUp,
    required this.dropOff,
    required this.timeDropOff,
    required this.carType,
    required this.cost,
  }) : super(key: key);
  final String pickUp;
  final String timePickUp;
  final String dropOff;
  final String timeDropOff;
  final String carType;
  final String cost;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 10,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff514BC3),
                        radius: 5.0,
                      ),
                      const SizedBox(width: 20.0),
                      Text(
                        'PICK UP',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                    timePickUp,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              subtitle: Text(
                pickUp,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Color(0xff707070),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5.0,
                      ),
                      const SizedBox(width: 20.0),
                      Text(
                        'DROP PFF',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                  Text(
                    timeDropOff,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
              subtitle: Text(
                dropOff,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Image.asset('assets/images/carDelails.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    carType,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    cost,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
