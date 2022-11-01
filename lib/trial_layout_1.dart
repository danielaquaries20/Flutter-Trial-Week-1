import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TrialLayout1 extends StatefulWidget {
  const TrialLayout1({super.key});

  @override
  State<TrialLayout1> createState() => _TrialLayout1();
}

class _TrialLayout1 extends State<TrialLayout1> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ButtonBottom(),
          DataPerson(),
          Align(
            alignment: Alignment.center,
            child: Text(number.toString()),
          )
        ],
      ),
    );
  }

  Align ButtonBottom() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () => context.pop(),
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  number += 2;
                });
              },
              color: Colors.yellow,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Next',
                    style: TextStyle(color: Colors.black87),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Align DataPerson() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Row(
          children: [
            const Icon(
              Icons.person_pin_outlined,
              color: Colors.black,
              size: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Nama : Daniel Aquaries Pratama'),
                const Text('Umur : 18'),
                const Text('Gender : Laki-Laki'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
