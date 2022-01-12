import 'package:flutter/foundation.dart';
import 'package:poc_di/Utilities/injector.dart';
import 'package:poc_di/models/fund_model.dart';
import 'package:poc_di/repositories/fund_repo.dart';
import 'package:poc_di/models/fund_detail_model.dart';

class FundsController extends ChangeNotifier {

  List<FundScheme>? allFunds;
  FundDetails? selectedFundDetail;

  final FundsRepository _fundRepo = getIt.get();

  fetchAllFunds() async {
    allFunds = await _fundRepo.getAllFunds();
    notifyListeners();
  }

  fetchFundDetailsWithSchemeCode(int schemeCode) async {
    selectedFundDetail = await _fundRepo.getFundsDetails(schemeCode);
    notifyListeners();
  }

  resetFundSelection() {
    selectedFundDetail = null;
  }

}