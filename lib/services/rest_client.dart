import 'package:dio/dio.dart';
import 'package:poc_di/models/fund_model.dart';
import 'package:retrofit/http.dart';
import 'package:poc_di/models/fund_detail_model.dart';
import 'api_helper.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {

  factory RestClient(Dio dio) = _RestClient;

  @GET(ApiHelper.allFunds)
  Future<List<FundScheme>> getAllFunds();

  @GET(ApiHelper.fundDetails)
  Future<FundDetails> getFundDetails(@Path() int schemeCode);

} 