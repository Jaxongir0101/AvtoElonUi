import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avto_elon/HomePage.dart';

import 'model.dart';

class DetailsPage extends StatefulWidget {
  final Car mashina;

  const DetailsPage({Key? key, required this.mashina}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("${widget.mashina.model}"),
            Container(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.star_border_outlined),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            autoElon(),
          ],
        ),
      ),
    );
  }

  Widget autoElon() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Column(
        children: [
          Container(
            child: Image.asset(
              widget.mashina.images,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                child: Text(
                  "${widget.mashina.cost} y.e",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Text("${widget.mashina.made},"),
            ],
          ),
          Divider(
            thickness: 8,
            height: 28,
            color: Colors.black12,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 4),
                    Text("Shahar", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Kuzov", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Uzatish qutisi",
                        style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Rangi", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Uzatma", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Kami bor", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                    Text("Dvigatel", style: TextStyle(color: Colors.black45)),
                    SizedBox(height: 4),
                  ],
                ),
              ),
              SizedBox(width: 80),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12),
                    Text("${widget.mashina.adress}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.kuzov}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.uzatma}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.color}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.uzatma}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.kamiBormi}"),
                    SizedBox(height: 4),
                    Text("${widget.mashina.dvigatel}"),
                    SizedBox(height: 4),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 8,
            height: 28,
            color: Colors.black12,
          ),
          Text("${widget.mashina.text}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ElevatedButton(
                  onPressed: () {
                    yozishAlerDialog(context);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 32),
                    child: Text("Yozish"),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text("Qo'ng'roq qilish"),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

Future yozishAlerDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
            title: Text("ERROR"),
            content: Text("Yozish amali qo'shilmagan"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK")),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("NO")),
            ],
          ));
}
