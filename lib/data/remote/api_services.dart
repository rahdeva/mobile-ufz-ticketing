import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '/model/login_result.dart';
import '/model/place.dart';
import '/data/local/secure/secure_storage_manager.dart';
import 'environment.dart';
import 'interceptor/dio.dart';
import 'wrapper/api_response.dart';

part 'api_services.g.dart';

// Don't forget to execute this : flutter pub run build_runner build --delete-conflicting-outputs

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  static Future<RestClient> create({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) async {
    final _headers = Map<String, dynamic>.from(headers);
    final token = await SecureStorageManager().getToken() ?? "";
    if (!_headers.containsKey("Authorization") && token.isNotEmpty) {
      _headers["Authorization"] = token;
    }

    return RestClient(
      await AppDio().getDIO(
        headers: _headers,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
      ),
      baseUrl: ConfigEnvironments.getEnvironments().toString(),
    );
  }

  @POST("/api/user/login")
  Future<ResponseObject<LoginResult>> login(
      @Query("email") String email, @Query("password") String password);

  @GET("/api/places")
  Future<ResponseList<Place>> getPlaces(
      @Query("page") int page, @Query("perPage") int perPage);

  @GET("/api/places/{id}")
  Future<ResponseObject<Place>> getPlaceDetail(@Path("id") int id);
}

final client = RestClient.create;
