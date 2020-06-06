import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:technationtask/widgets/horizontal_item_list.dart';
import 'package:technationtask/widgets/reuseable_card_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New order'),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Icon(Icons.card_giftcard),
          SizedBox(width: 10),
          Icon(Icons.notifications_none),
          SizedBox(width: 10),
          Icon(Icons.mail_outline),
          SizedBox(width: 15),
        ],
        bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xff58265A),
            ),
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Premium", style: TextStyle(fontSize: 16)),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Savings",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ]),
      ),
      body: TabBarView(
        children: [
          //First Tabbar Child
          Stack(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 120),
                    bottomRight: Radius.elliptical(200, 120),
                  ),
                  color: Color(0xff3C1E40),
                ),
              ),
              Center(
                child: Text('Premium'),
              )
            ],
          ),
          //2nd Child Tabbar
          Column(
            children: <Widget>[
              //Horizonal Scrolling list
              Expanded(
                flex: 2,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(200, 120),
                          bottomRight: Radius.elliptical(200, 120),
                        ),
                        color: Color(0xff3C1E40),
                      ),
                    ),
                    //horizontal item list
                    PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _pageController,
                      children: <Widget>[
                        HorizontalItemList(),
                      ],
                    ),
                  ],
                ),
              ),
              //Reusable Cards
              Expanded(
                flex: 2,
                child: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                        ReuseableCard(imagePath: 'assets/cm1.jpeg'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    setState(() {
      _pageController.jumpToPage(page);
    });
  }
}
