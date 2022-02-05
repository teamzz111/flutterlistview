import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  CardDetail(this.imageUrl, {Key? key}) : super(key: key);

  String imageUrl;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 15, right: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7
          )
        ]
      ),
      child: 
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child:
                Image.network(
                  imageUrl,
                  width: 65,
                  height: 65,
                  fit: BoxFit.cover,
                  
                ),
            ),
            const Expanded(
              flex: 6,
              child: 
                Padding(
                  padding: EdgeInsets.only(left: 20), 
                  child: 
                    Text("Hola mundo", 
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                    )
                ),
            ),

            const Icon(
              Icons.chevron_right,
              color: Colors.purple,
              size: 35,
            ),

          ],
        )
    );
  }
}