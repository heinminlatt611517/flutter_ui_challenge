import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 1;
  List<String> imageList = [
    'https://wallpaperaccess.com/full/2390255.jpg',
    'https://c4.wallpaperflare.com/wallpaper/951/882/531/lone-tree-beautiful-sunset-beautiful-field-wallpaper-preview.jpg',
    'https://www.publicdomainpictures.net/pictures/150000/nahled/butterfly-and-flower.jpg',
    'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-after/Landscape-BW.jpg',
    'https://images.squarespace-cdn.com/content/v1/5dfa3b4ded04ca6a47a5f52f/1577057879111-YWMXH3OTUEJSNVZ7BD01/summer+wheat.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Howdy Macell',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                      color: Colors.pink,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'))),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Discover',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Suitable Home',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        )),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefix: Icon(Icons.search),
                          hintText: 'Find a good home',
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Stack(
                  children: [
                    const Icon(
                      Icons.notifications,
                      color: Colors.purple,
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        padding: const EdgeInsets.all(2.0),
                        decoration: const BoxDecoration(
                            color: Colors.orange, shape: BoxShape.circle),
                        child: const Text(
                          "2",
                          style: TextStyle(fontSize: 10, color: Colors.yellow),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, index) {
                  return _buildListView(imageList[index].toString());
                },
                itemCount: imageList.length,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin:const EdgeInsets.only(bottom: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            index == 1
                ? Container(
              padding:const EdgeInsets.all(10.0),
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    )),
                    child: Row(
                      children: const [Icon(Icons.home), Text('Home')],
                    ),
                  )
                : IconButton(
                    icon: const Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                  ),
            index == 2
                ? Container(
              padding:const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Row(
                children: const [Icon(Icons.bookmark), Text('Bookmark')],
              ),
            )
                : IconButton(
              icon: const Icon(Icons.bookmark),
              onPressed: () {
                setState(() {
                  index = 2;
                });
              },
            ),
            index == 3
                ? Container(
              padding:const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Row(
                children: const [Icon(Icons.message), Text('Message')],
              ),
            )
                : IconButton(
              icon: const Icon(Icons.message),
              onPressed: () {
                setState(() {
                  index = 3;
                });
              },
            ),
            index == 4
                ? Container(
              padding:const EdgeInsets.all(10.0),
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Row(
                children: const [Icon(Icons.account_circle), Text('Account')],
              ),
            )
                : IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                setState(() {
                  index = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListView(String image) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return  DetailPage(image);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(right: 20),
        height: 400.0,
        width: 250.0,
        child: Stack(
          children: [
            Hero(
              tag: image,
              child: Container(
                height: 375.0,
                width: 250.0,
                decoration:  BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            image))),
              ),
            ),
            Positioned(
              right: 5,
              bottom: 1,
              child: FloatingActionButton(
                heroTag: null,
                mini: true,
                backgroundColor: Colors.yellow,
                child: const Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {},
              ),
            ),
            Positioned(
              left: 20,
              bottom: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Family House',
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.white,
                      ),
                      Text(
                        'Yangon,San Chaung',
                        style: TextStyle(color: Colors.white),
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
