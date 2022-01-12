import 'package:flutter/material.dart';
import 'package:poc_di/Utilities/injector.dart';
import 'package:poc_di/controllers/funds_controller.dart';
import 'package:provider/provider.dart';
import 'package:poc_di/Utilities/utilities.dart';

class MutualFundDetail extends StatefulWidget {

  final int schemeCode;

  const MutualFundDetail({Key? key, required this.schemeCode}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MutualFundDetailState();
  }
  

}

class _MutualFundDetailState extends State<MutualFundDetail> {

  final FundsController _fundsController = getIt.get<FundsController>();

  @override
  void initState() {
    _fundsController.fetchFundDetailsWithSchemeCode(widget.schemeCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigation.navigateTo(context, getIt.get<MutualFundDetail>()),
        child: const Icon(Icons.add, size: 40,),
      ),
      body: Consumer<FundsController>(
        builder: (context, value, child) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardWid(_fundsController.selectedFundDetail?.meta.fundHouse ?? "fetching.."),
            cardWid(_fundsController.selectedFundDetail?.meta.schemeName ?? "fetching.."),
            cardWid(_fundsController.selectedFundDetail?.meta.schemeType ?? "fetching.."),
            cardWid(_fundsController.selectedFundDetail?.meta.schemeCode.toString() ?? "fetching.."),
            cardWid(_fundsController.selectedFundDetail?.meta.schemeCategory ?? "fetching.."),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _fundsController.resetFundSelection();
    super.dispose();
  }

}


Widget cardWid(String title) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      border: Border.all(color: Colors.white),
      boxShadow: const [
        BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1.5)
      ],
      color: Colors.white
    ),
    child: Text(
      title
    ),
  );
}