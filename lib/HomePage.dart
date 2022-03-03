import 'package:flutter/material.dart';
import 'main.dart';
import 'DetailsPage.dart';
import './model.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  static List<Car> list = [
    Car('assets/images/audi.jfif', "Audio", "Black",
        "2022 yil ,sedan 3, mexanika", 200000, 300, "Samarkand","Sedan", "Avtomat", "Ha", "1.5 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/bugatti.jfif', "Bugatti", "Black",
        "2022 yil ,sedan 3, mexanika", 230000, 320, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.2 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/captiva.jfif', "Captiva", "white",
        "2022 yil ,sedan 3, mexanika", 22000, 220, "Samarkand","Sedan", "Avtomat", "Ha", "1.4 l. (Metan)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/onix.jfif', "Onix", "Cyan",
        "2022 yil ,sedan 3, mexanika", 47000, 220, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.3 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
 Car('assets/images/audi.jfif', "Audio", "Black",
        "2022 yil ,sedan 3, mexanika", 200000, 300, "Samarkand","Sedan", "Avtomat", "Ha", "1.5 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/bugatti.jfif', "Bugatti", "Black",
        "2022 yil ,sedan 3, mexanika", 230000, 320, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.2 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/captiva.jfif', "Captiva", "white",
        "2022 yil ,sedan 3, mexanika", 22000, 220, "Samarkand","Sedan", "Avtomat", "Ha", "1.4 l. (Metan)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/onix.jfif', "Onix", "Cyan",
        "2022 yil ,sedan 3, mexanika", 47000, 220, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.3 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
         Car('assets/images/audi.jfif', "Audio", "Black",
        "2022 yil ,sedan 3, mexanika", 200000, 300, "Samarkand","Sedan", "Avtomat", "Ha", "1.5 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/bugatti.jfif', "Bugatti", "Black",
        "2022 yil ,sedan 3, mexanika", 230000, 320, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.2 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/captiva.jfif', "Captiva", "white",
        "2022 yil ,sedan 3, mexanika", 22000, 220, "Samarkand","Sedan", "Avtomat", "Ha", "1.4 l. (Metan)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
    Car('assets/images/onix.jfif', "Onix", "Cyan",
        "2022 yil ,sedan 3, mexanika", 47000, 220, "Samarkand", "Sedan", "Avtomat", "Yo'q", "1.3 l. (Benzin)","""rem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam nec purus neque. Integer vehicula, ex vitae condimentum condimentum, augue magna imperdiet metus, sit amet aliquet dui velit a nisl. Nam in leo diam. Sed est elit, interdum eu rutrum sit amet, placerat quis leo. Nulla consequat leo a urna fermentum, sit amet tempus sapien convallis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus justo ipsum, sodales et dolor sed, lobortis ultrices quam. Integer quis iaculis sapien, sed consectetur urna.

Aenean commodo blandit luctus. Sed vulputate, dui vitae malesuada ultrices, sem turpis maximus velit, efficitur scelerisque elit dolor at odio. Mauris quis mauris sed metus volutpat mattis. Sed bibendum, turpis ac pulvinar ultrices, nisi est vulputate libero, id dignissim leo lectus non ex. Sed vulputate neque sed scelerisque dapibus. Vestibulum congue vitae purus imperdiet hendrerit. Etiam vel quam porta, placerat massa eu, tempus ligula. Ut accumsan libero a mi pellentesque, non facilisis lectus luctus. Nunc ligula enim, varius eget ipsum id, rhoncus ultricies leo. Nunc lorem odio, eleifend sed enim vitae, placerat congue turpis. Etiam et metus volutpat, vehicula felis vel, eleifend mauris. Vivamus tristique nisi vitae neque hendrerit pellentesque.
"""),
  ];
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Avtoelon"),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_money_outlined)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          avtoItem(HomePage.list[0]),
          avtoItem(HomePage.list[1]),
          avtoItem(HomePage.list[2]),
          avtoItem(HomePage.list[3]),
          avtoItem(HomePage.list[0]),
          avtoItem(HomePage.list[1]),
          avtoItem(HomePage.list[2]),
          avtoItem(HomePage.list[3]),
          avtoItem(HomePage.list[0]),
          avtoItem(HomePage.list[1]),
          avtoItem(HomePage.list[2]),
          avtoItem(HomePage.list[3]),
        ],
      ),
    );
  }

  Widget avtoItem(Car car) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsPage(mashina: car)));
      },
      child: Card(
        margin: EdgeInsets.all(12),
        elevation: 24,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    width: 176,
                    image: AssetImage(car.images),
                    fit: BoxFit.cover,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        car.model,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(car.color),
                      Text(car.made),
                      Text("Cost: ${car.cost}\$"),
                      Text("MaxSpeed: ${car.maxSpeed}"),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 14.0,
                            color: Colors.blueAccent,
                          ),
                          Text(
                            car.adress,
                            style: TextStyle(color: Colors.black38),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
