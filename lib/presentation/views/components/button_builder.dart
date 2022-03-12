import 'package:flutter/material.dart';

class ButtonBuilder extends StatelessWidget {
  const ButtonBuilder({
    Key? key,
    this.onpressed,
    this.text,
  }) : super(key: key);
  final VoidCallback? onpressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: MaterialButton(
        child: Text(
          text!,
          style: Theme.of(context).textTheme.headline2,
          // style: TextStyle(
          //   color: Colors.black,
          //   fontSize: 20,
          // ),
        ),
        color: const Color(0xff514BC3),
        // textColor: Color(0xff1C846B),
        onPressed: onpressed,
        //obscureText:
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
