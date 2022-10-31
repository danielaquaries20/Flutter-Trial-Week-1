import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:week1/profile.dart';

class ItemData extends StatelessWidget {
  const ItemData({super.key, required this.data, required this.onClick});

  final Profile data;
  final Function(Profile) onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(data),
      child: Container(
        margin: EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(0, 7),
            ),
          ],
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
                      image: AssetImage(data.icon), fit: BoxFit.fill),
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
                    child: Text(data.name,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                  Container(child: Text(data.description))
                ],
              ),
            ),
            flex: 5,
          )
        ]),
      ),
    );
  }
}
