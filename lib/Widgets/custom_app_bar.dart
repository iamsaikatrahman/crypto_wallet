import 'package:crypto_wallet/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.isWalletsDetails,
    this.title,
  }) : super(key: key);
  final bool? isWalletsDetails;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      backgroundColor: Colors.white,
      title: Text(
       isWalletsDetails!? title!+" Wallet" : title!,
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xFF4c5867),
        ),
      ),
      centerTitle: true,
      leading: IconButton(
          icon: (isWalletsDetails!)
              ? Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFFaeb8c4),
                )
              : Image.asset(
                  Assets.menuicon,
                  width: 25,
                ),
          onPressed: (isWalletsDetails!)
              ? () => Navigator.pop(context)
              : () => print('Menu')),
      actions: [
        IconButton(
          icon: (isWalletsDetails!)
              ? Icon(
                  Icons.more_vert_rounded,
                  color: Color(0xFFaeb8c4),
                )
              : Image.asset(
                  Assets.add_wallet,
                  width: 25,
                ),
          onPressed: (isWalletsDetails!)
              ? () => print("More")
              : () => print('add_wallet'),
        ),
      ],
    );
  }
}
