import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
 String image;
 DetailPage(this.image);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.4,
            child: Hero(
              tag: widget.image,
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.3),
            child: Material(
              borderRadius:
                  const BorderRadius.only(topLeft: Radius.circular(100.0)),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 30.0, top: 30.0, right: 10.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "\$4,999",
                          style:
                              TextStyle(color: Colors.purple, fontSize: 20.0),
                        ),
                        Icon(
                          Icons.bookmark,
                          color: Colors.purple,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Family Home",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "\$1,200/month",
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.purple,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Home Loan Calculator",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "\$1,200/month",
                        ),
                        Icon(
                          Icons.message,
                          color: Colors.purple,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Your Home Loan",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Apply for conditional approval",
                    ),
                    Image.network(
                        'https://home.et.utwente.nl/slootenvanf/wp-content/uploads/2018/11/PhotoExifShowLocMaps-542x270.png'),

                    const SizedBox(height: 20,),

                    Row(children: [
                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.all(10.0),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              )),
                          child: const Text('Ask a question',style: TextStyle(color: Colors.white),) ,
                          ),
                      ),

                      const SizedBox(width: 10,),

                      Expanded(
                        child: Container(
                          padding:const EdgeInsets.all(10.0),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              )),
                          child: const Text('Express Interest',style: TextStyle(color: Colors.white),) ,
                        ),
                      ),


                    ],)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
