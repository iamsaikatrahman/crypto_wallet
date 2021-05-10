import 'package:crypto_wallet/Widgets/widgets.dart';
import 'package:crypto_wallet/model/wallet_model.dart';
import 'package:flutter/material.dart';

class WalletsDetails extends StatefulWidget {
  final WalletModel? walletModel;

  const WalletsDetails({Key? key, this.walletModel}) : super(key: key);
  @override
  _WalletsDetailsState createState() => _WalletsDetailsState();
}

class _WalletsDetailsState extends State<WalletsDetails> {
  ScrollController? _scrollController;

  final List<Color> gradientColors = [
    const Color(0xffff8f17),
    const Color(0xffffc743),
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf0f3f7),
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 60.0),
        child: CustomAppBar(
          isWalletsDetails: true,
          title: widget.walletModel!.name,
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.all(14),
            sliver: SliverToBoxAdapter(
              child: DetailsCard(screenSize: screenSize, widget: widget),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(14),
            sliver: SliverToBoxAdapter(
              child: CustomTabBar(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(14),
            sliver: SliverToBoxAdapter(
              child: GraphCard(
                screenSize: screenSize,
                gradientColors: gradientColors,
                widget: widget,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(14),
            sliver: SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: BuyOrSellCard(
                      screenSize: screenSize,
                      widget: widget,
                      isSell: false,
                      onTap: () => print("Buy"),
                    ),
                  ),
                  SizedBox(width: screenSize.width * 0.1),
                  Expanded(
                    child: BuyOrSellCard(
                      screenSize: screenSize,
                      widget: widget,
                      isSell: true,
                      onTap: () => print("sell"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
