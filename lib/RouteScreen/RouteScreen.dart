import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:prboxoffice/constants.dart';
import 'dart:math' as math;

class RouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AKColors.bg,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AKColors.primary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            height: media.size.height * 0.65,
          ),
          Container(
            padding: EdgeInsets.only(
              top: media.padding.top,
            ),
            child: Column(
              children: [
                RouteAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Istanbul',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Cm 17 Mayıs',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Baku',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Text(
                            'Kısaca',
                            style: TextStyle(
                              color: Colors.white.withOpacity(.75),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SortBySelect(),
                          Expanded(child: SizedBox()),
                          Badge(
                            badgeColor: AKColors.orange,
                            badgeContent: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            elevation: 0,
                            child: ClipOval(
                              child: Material(
                                color: Colors.white.withOpacity(.1),
                                child: InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ClipOval(
                            child: Material(
                              color: Colors.white.withOpacity(.1),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      RouteTabBar(),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                          child: TabBarView(
                        children: [
                          SingleChildScrollView(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              children: [
                                RouteCard(),
                                RouteCard(),
                                RouteCard(),
                              ],
                            ),
                          )),
                          Container(
                            child: RouteCard(),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            color: Colors.green,
                            height: 200,
                          ),
                        ],
                      ))
                    ],
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RouteCard extends StatelessWidget {
  const RouteCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          ),
        ],
      ),
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$634',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: AKColors.orange,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                        ),
                        color: AKColors.orange),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: Text(
                      'Top',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cm 17 Mayıs',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AKColors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ist',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: AKColors.dark),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '2:55 pm',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AKColors.dark2),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Cm 17 Mayıs',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AKColors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Baku(Aze)',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: AKColors.dark),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '8:20 pm',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AKColors.dark2),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 22,
                        child: CustomPaint(
                          painter: RouteCardDashLinePAinter(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RouteDotStart(),
                          RouteCardItem(),
                          RouteDotMid(),
                          RouteCardItem(),
                          RouteDotEnd(),
                        ],
                      )
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

class RouteCardItem extends StatelessWidget {
  const RouteCardItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.translate(
          offset: Offset(0, -2),
          child: Transform.rotate(
            angle: 90 * math.pi / 180,
            child: Icon(
              Icons.flight,
              color: AKColors.routeIcon,
              size: 28,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(' 2 h 30 m ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AKColors.routeIcon,
            ))
      ],
    );
  }
}

class RouteDotEnd extends StatelessWidget {
  const RouteDotEnd({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AKColors.dark.withOpacity(.15),
      ),
      padding: EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: AKColors.routeDot,
              width: 1.25,
            )),
        height: 13,
        width: 13,
      ),
    );
  }
}

class RouteDotMid extends StatelessWidget {
  const RouteDotMid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: AKColors.routeDot,
            width: 1.25,
          )),
      margin: EdgeInsets.all(4),
      height: 13,
      width: 13,
    );
  }
}

class RouteDotStart extends StatelessWidget {
  const RouteDotStart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AKColors.dark.withOpacity(.15),
      ),
      padding: EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AKColors.dark,
        ),
        height: 13,
        width: 13,
      ),
    );
  }
}

class RouteCardDashLinePAinter extends CustomPainter {
  final Paint paintStyle = Paint()
    ..color = AKColors.routeIcon
    ..strokeWidth = 1.0
    ..style = PaintingStyle.stroke;
  void paint(Canvas canvas, Size size) {
    Path p = Path()
      ..moveTo(10, size.height / 2)
      ..lineTo(size.width - 10, size.height / 2);
    canvas.drawPath(
      dashPath(p, dashArray: CircularIntervalList([10, 5])),
      paintStyle,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class RouteTabBar extends StatelessWidget {
  const RouteTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.95),
        ),
      ),
      height: 45,
      child: TabBar(
        indicator: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        labelColor: AKColors.primary2,
        unselectedLabelColor: Colors.white,
        tabs: [
          Text(
            'Tren',
          ),
          Text(
            'Otobüs',
          ),
          Text(
            'Uçak',
          ),
        ],
      ),
    );
  }
}

class SortBySelect extends StatelessWidget {
  const SortBySelect({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      child: Row(
        children: [
          Text('Fiyat',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              )),
          SizedBox(
            width: 10,
          ),
          Transform.rotate(
            angle: -90 * math.pi / 180,
            child: Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 14,
            ),
          )
        ],
      ),
    );
  }
}

class RouteAppBar extends StatelessWidget {
  const RouteAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
