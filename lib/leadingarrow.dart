import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LeadingArrow extends StatelessWidget {
  const LeadingArrow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.15,
        decoration: BoxDecoration(
            //  boxShadow: [

            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10.0)),
        child: const Icon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black,
          // color: Theme.of(context).iconTheme,
        ),
      ),
    );
  }
}