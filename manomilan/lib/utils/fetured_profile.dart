import 'package:flutter/material.dart';

class FeaturedProfile extends StatefulWidget {
  const FeaturedProfile({Key? key}) : super(key: key);

  @override
  _FeaturedProfileState createState() => _FeaturedProfileState();
}

class _FeaturedProfileState extends State<FeaturedProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          height: 155,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 120,
                  width: 220,
                  child: Image.network(
                    "https://image.shutterstock.com/image-photo/maharashtrian-man-wearing-traditional-kurta-260nw-1371861761.jpg",
                    fit: BoxFit.fitWidth,
                  )),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Rahul Demo",
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      label: const Text("Like"),
                      onPressed: () {
                        print("Like");
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.pink,
                      )),
                  ElevatedButton.icon(
                      label: const Text("View"),
                      onPressed: () {
                        print("View");
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.green,
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
