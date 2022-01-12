import 'package:flutter/material.dart';
import 'package:poc_di/Utilities/injector.dart';
import 'package:poc_di/Utilities/utilities.dart';
import 'package:poc_di/controllers/funds_controller.dart';
import 'package:provider/provider.dart';

import 'mutual_fund_details.dart';

class MutualFundsListing extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MutualFundsListingState();
  }

  const MutualFundsListing({Key? key}) : super(key: key);

}

class MutualFundsListingState extends State<MutualFundsListing> {
  
  final FundsController _fundsController = getIt.get<FundsController>();

  @override
  void initState() {
    _fundsController.fetchAllFunds();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Funds"),
      ),
      body: Consumer<FundsController>(
        builder: (context, value, child) => ListView.builder(
          itemCount: _fundsController.allFunds?.length ?? 0,
          itemBuilder: (context, index) => Container(
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
              _fundsController.allFunds![index].schemeName
            ),
          ).onTap(() {
            getIt.registerLazySingleton<MutualFundDetail>(() => const MutualFundDetail(
              schemeCode: 100027,
            ));
            Navigation.navigateTo(context, MutualFundDetail(
              schemeCode: _fundsController.allFunds![index].schemeCode,
            ));
          }),
        ),
      ),
    );
  }

}