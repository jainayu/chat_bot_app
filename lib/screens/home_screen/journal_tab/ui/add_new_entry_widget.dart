import 'package:flutter/material.dart';

class AddNewEntryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[800],
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_sharp,
                color: Colors.blue[800],
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add new entry',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 20.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
