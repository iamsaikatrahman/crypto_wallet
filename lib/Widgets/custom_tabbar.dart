import 'package:crypto_wallet/data/data.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
          itemCount: tabList.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: Container(
                width: 75,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: (selectedindex == index)
                      ? Color(0xFF4c5867).withOpacity(0.5)
                      : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    tabList[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: (selectedindex == index)
                          ? Colors.white
                          : Color(0xFF4c5867),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
