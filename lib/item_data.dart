import 'package:flutter/material.dart';
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
        margin: const EdgeInsets.all(10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
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
              padding: const EdgeInsets.all(10),
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
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Text(data.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(child: Text(data.description))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
