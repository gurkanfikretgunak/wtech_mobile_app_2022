import 'package:flutter/material.dart';

class EventsImage extends StatelessWidget {
  const EventsImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSG9SURLDTqJMIw-SlEdg-3-Uh0uBcWzIUQ9b2KbdgLCWX_gAlu',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ));
  }
}
