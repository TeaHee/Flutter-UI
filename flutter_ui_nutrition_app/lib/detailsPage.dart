import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;

  const DetailsPage({Key key, this.heroTag, this.foodName, this.foodPrice})
      : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = "WEIGHT";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7a9bee),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Details',
          style: TextStyle(
              fontFamily: 'Montserrat', fontSize: 18, color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,
            ),
            onPressed: () {},
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 82,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 75,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45),
                        topRight: Radius.circular(45),
                      ),
                      color: Colors.white),
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 30,
                left: (MediaQuery.of(context).size.width / 2) - 100,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(widget.heroTag),
                      fit: BoxFit.cover,
                    )),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                left: 25,
                right: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.foodName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          widget.foodPrice,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                        Container(
                          height: 25,
                          color: Colors.grey,
                        ),
                        Container(
                          width: 125,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xff7a9bee),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: Color(0xff7a9bee)),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 15),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xff7a9bee),
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          _buildInfoCard('WEIGHT', '300', 'G'),
                          SizedBox(width: 10.0),
                          _buildInfoCard('CALORIES', '267', 'CAL'),
                          SizedBox(width: 10.0),
                          _buildInfoCard('VITAMINS', 'A, B6', 'VIT'),
                          SizedBox(width: 10.0),
                          _buildInfoCard('AVAIL', 'NO', 'AV')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0)),
                            color: Colors.black),
                        height: 50,
                        child: Center(
                          child: Text('\$52.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
      onTap: () {
        selectCard(cardTitle);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardTitle == selectedCard ? Color(0xff7a9bee) : Colors.white,
            border: Border.all(
                color: cardTitle == selectedCard
                    ? Colors.transparent
                    : Colors.grey.withOpacity(0.3),
                style: BorderStyle.solid,
                width: 0.75)),
        height: 100,
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8, left: 15),
              child: Text(
                cardTitle,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: cardTitle == selectedCard
                      ? Colors.white
                      : Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    info,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        color: cardTitle == selectedCard
                            ? Colors.white
                            : Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    unit,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                        color: cardTitle == selectedCard
                            ? Colors.white
                            : Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
