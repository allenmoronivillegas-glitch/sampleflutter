import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

starRenderer (int starRating) => Row(
  children: [
    for (int x = 1; x <= starRating; x++)
    Icon(Icons.star, color: Colors.yellow,),
    for (int x=1; x<=5-starRating; x++)
    Icon(Icons.star)
  ],
);

class _SecondPageState extends State<SecondPage> {
  ImageStack(imageFile, textValue) =>
      Stack(
        alignment: AlignmentGeometry.bottomLeft,
        children: [
          Image.asset(
            imageFile,
            height: 100,
            width: 150,
            fit: BoxFit.cover,
          ),
          Text(textValue, style: TextStyle(color: Colors.white),)
        ],
      );

  PostShape(imageAvatar, Name, Description, imagePost, int starRating) =>
      Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imageAvatar),
                radius: 25,
              ),
              SizedBox(width: 5,),

              Text(
                Name,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                ),
              ),
            ],
          ),

          SizedBox(width: 10),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(Description),
          ),

          SizedBox(height: 10),

          Image.asset(
            imagePost,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10,),
          Row (
            children: [
              starRenderer(starRating),
              Text(starRating.toString())
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(width: 8,),
                    Text('Like'),
                  ],
                ),
              ),

              SizedBox(width: 20),

              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.comment),
                    SizedBox(width: 8,),
                    Text('Comment'),
                  ],
                ),
              ),

              SizedBox(width: 20),

              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.share_outlined),
                    SizedBox(width: 8,),
                    Text('Share'),
                  ],
                ),
              ),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              title: Text("Facebook",
                style: TextStyle(fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),),
              backgroundColor: Colors.blue,
            ),

            // Horizontal Scroll
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageStack("assets/image/pic4.jpg", "Story 1"),
                  const SizedBox(width: 5,),
                  ImageStack("assets/image/pic6.jpg", "Story 2"),
                  const SizedBox(width: 5,),
                  ImageStack("assets/image/pic3.jpg", "Story 3"),
                ],
              ),
            ),

            SizedBox(height: 20,),

            // Vertical Scroll
            PostShape(
              "assets/image/picAvatar.jpg",
              "John Doe",
              "Aurora Borealis!",
              "assets/image/pic1.jpg",
              4
            ),
            SizedBox(height: 20,),

            PostShape(
              "assets/image/picAvatar.jpg",
              "Dave AnderSON",
              "What a beautiful day!",
              "assets/image/pic2.jpg",
              5
            ),
            SizedBox(height: 20,),

            PostShape(
              "assets/image/picAvatar.jpg",
              "Dave AnderSON",
              "What a beautiful day!(2)",
              "assets/image/pic7.jpg",
              3
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}