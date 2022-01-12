import 'package:poc_di/models/fund_model.dart';
import 'package:poc_di/models/fund_detail_model.dart';
import 'package:poc_di/services/rest_client.dart';

abstract class FundsRepository {
  Future<List<FundScheme>> getAllFunds();
  Future<FundDetails> getFundsDetails(int schemeCode);
}

class FundsRepositoryImpl implements FundsRepository {

  RestClient restDataSource;

  FundsRepositoryImpl(this.restDataSource);

  @override
  Future<List<FundScheme>> getAllFunds() {
    var response = restDataSource.getAllFunds();
    return response;
  }

  @override
  Future<FundDetails> getFundsDetails(int schemeCode) {
    var response = restDataSource.getFundDetails(schemeCode);
    return response;
  }
}