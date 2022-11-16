import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(),
                color: Colors.yellow,
              ),
              child: ClipOval(
                child: Image.network(
                  "https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
              "https://numskull.com/wp-content/uploads/Stranger-Things-600x207-white.png",
              width: 100.0,
            )
          ],
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
