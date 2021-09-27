import 'package:flutter/material.dart';


class QCard extends StatelessWidget {

  late String quote;
  QCard(this.quote);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
        
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                quote,
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Text(
                '-Kanye East',
                style: TextStyle(
                  letterSpacing: 2,
                ),
              ),

              SizedBox(height: 20),

              Image.asset('assets/kanye.jpg'),
            ],
          ),
        )
      ),
    );
  }
}