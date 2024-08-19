import 'package:flutter/material.dart';

class SebhaView extends StatefulWidget {
  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  int index = 0;
  int count = 0;
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("assets/images/head of seb7a.png"),
                InkWell(
                  onTap: () {
                    onZekrClicked();
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    child: Transform.rotate(
                        angle: angle,
                        child: Image.asset("assets/images/body of seb7a.png")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            const Text(
              "عدد التسبيحات",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: theme.primaryColor.withOpacity(0.7),
              ),
              child: Text(
                "$count",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            InkWell(
              onTap: () {
                onZekrClicked();
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: theme.primaryColor,
                ),
                child: Text(
                  azkar[index],
                  style: TextStyle(fontSize: 25),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  onZekrClicked() {
    angle += 0.12;
    if (count < 33) {
      count++;
    } else {
      count = 0;
      index++;
      if (index == 3) {
        index = 0;
      }
    }
    setState(() {});
  }
}
