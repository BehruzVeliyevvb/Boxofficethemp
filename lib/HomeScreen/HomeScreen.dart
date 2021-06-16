import 'package:flutter/material.dart';
import 'package:prboxoffice/RouteScreen/RouteScreen.dart';
import 'package:prboxoffice/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData media = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: media.padding.top),
        child: Column(
          children: [
            HomeImage(media: media),
            Expanded(
                child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Uçuşunu Rezerve Et',
                    style: TextStyle(
                      color: AKColors.dark,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.15,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                AKColors.dark.withOpacity(.15),
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
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Istanbul,',
                                          style: TextStyle(
                                              color: AKColors.dark,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Turkey',
                                          style: TextStyle(
                                              color: AKColors.grey,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 1,
                                      color: Colors.black.withOpacity(0.1),
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 15,
                                        left: 40,
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color:
                                                AKColors.dark.withOpacity(.15),
                                          ),
                                          padding: EdgeInsets.all(4),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: AKColors.dark,
                                                  width: 1.25,
                                                )),
                                            height: 13,
                                            width: 13,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Baku,',
                                          style: TextStyle(
                                              color: AKColors.dark,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Azerbaijan',
                                          style: TextStyle(
                                              color: AKColors.grey,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              SwpBtn(),
                            ],
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(
                              left: 40,
                              top: 20,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.now().add(
                                          Duration(
                                            days: 7,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        color: Colors.black.withOpacity(0.1),
                                      ))),
                                      padding: EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Cm 17 Mayıs',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: AKColors.dark,
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Icon(
                                            Icons.calendar_today,
                                            size: 18,
                                            color: AKColors.dark,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.now().add(
                                          Duration(
                                            days: 7,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                        color: Colors.black.withOpacity(0.1),
                                      ))),
                                      padding: EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Geri',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: AKColors.grey,
                                            ),
                                          ),
                                          Expanded(child: SizedBox()),
                                          Icon(
                                            Icons.calendar_today,
                                            size: 18,
                                            color: AKColors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FindRouteBtn()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class SwpBtn extends StatelessWidget {
  const SwpBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: AKColors.orange,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.swap_vert,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class FindRouteBtn extends StatelessWidget {
  const FindRouteBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: AKColors.dark,
      padding: EdgeInsets.symmetric(vertical: 16),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RouteScreen(),
            ));
      },
      child: Container(
        child: Center(
          child: Text(
            'Bir rota bul',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: .75,
            ),
          ),
        ),
      ),
    );
  }
}

class HomeImage extends StatelessWidget {
  const HomeImage({
    Key key,
    @required this.media,
  }) : super(key: key);

  final MediaQueryData media;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/main.jpg'),
      height: media.size.height * 0.45,
      padding: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
