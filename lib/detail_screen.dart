import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week1/profile.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.data});

  final Profile data;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var status = false;

  @override
  void initState() {
    super.initState();
    print(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: hederDetailProfile()),
            SliverToBoxAdapter(child: textAboutUsDetailProfile()),
            SliverToBoxAdapter(child: textInformationDetailProfile()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 100,
              width: double.infinity,
            )),
            // textAboutUsDetailProfile(),
            // textInformationDetailProfile()
          ],
        ),
        buttonAddDetailProfile()
      ],
    ));
  }

  Widget detailProfileInformation() {
    return Container(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                textAboutUsDetailProfile(),
                textInformationDetailProfile()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textInformationDetailProfile() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        widget.data.aboutUs,
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 13, color: Colors.black),
      ),
    );
  }

  Widget textAboutUsDetailProfile() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30, bottom: 5, left: 20, right: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        "About Us",
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }

  Widget buttonAddDetailProfile() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
          height: 50,
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {
              setState(() {
                status = !status;
              });
            },
            color: status == false ? Colors.blue : Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Text(
                status == false ? "Add to Favorite" : "Delete from Favorite",
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }

  Widget hederDetailProfile() {
    return Container(
        width: double.infinity,
        height: 300,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.data.photo), fit: BoxFit.fill),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: double.infinity,
              width: double.infinity,
              color: Colors.transparent,
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(widget.data.icon),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    widget.data.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(bottom: 5),
                                ),
                                Container(
                                  child: Text(
                                    widget.data.description,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 5,
                        )
                      ]),
                    ),
                  )),
            )
          ],
        ));
  }
}
