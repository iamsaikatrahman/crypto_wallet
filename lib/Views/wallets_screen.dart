import 'package:crypto_wallet/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class WalletsScreen extends StatefulWidget {
  @override
  _WalletsScreenState createState() => _WalletsScreenState();
}

class _WalletsScreenState extends State<WalletsScreen> {
  ScrollController? _scrollController;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf0f3f7),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60.0),
        child: CustomAppBar(
          isWalletsDetails: false,
          title: "Wallets",
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 14, left: 10),
            sliver: SliverToBoxAdapter(
              child: TotalWalletCard(screenSize: screenSize),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: SortedText(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            sliver: SliverToBoxAdapter(
              child: WalletsCard(screenSize: screenSize),
            ),
          ),
        ],
      ),
    );
  }
}
