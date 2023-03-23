import 'package:flutter/material.dart';

class NewStory extends StatelessWidget {
  const NewStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.amber,
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          color: Colors.green,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.red,
                        ),
                      ),
                      Flexible(
                        child: Container(
                          height: 100,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
