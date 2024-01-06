import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start botanji nboats Group Code

class BotanjiNboatsGroup {
  static String baseUrl = 'https://x8ki-letl-twmt.n7.xano.io/api:KHuDZUte';
  static Map<String, String> headers = {};
}

/// End botanji nboats Group Code

class BoatsCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? plate = '',
    String? location = '',
    String? type = '',
    String? details = '',
    String? way = '',
    int? passenger,
    bool? meal,
    bool? drinks,
    bool? activites,
    bool? iceBox,
    bool? bathroom,
    bool? kitchen,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "pasengers": $passenger,
  "plate": "$plate",
  "location": "$location",
  "type": "$type",
  "details": "$details",
  "way": "$way",
  "Meal": $meal,
  "Drinks": $drinks,
  "Activites": $activites,
  "Ice_box": $iceBox,
  "Bathroom": $bathroom,
  "Kitchen": $kitchen
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'boats',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zvy3JUFN/boats',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? location(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location''',
      ));
}

class BoatsListCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? location = '',
    int? passengers,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'boats list',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:zvy3JUFN/boats',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'name': name,
        'location': location,
        'passengers': passengers,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignupCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "password": "$password", 
  "name": "$name",
  "email": "$email"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl: 'https://x8ki-letl-twmt.n7.xano.io/api:2cNmIsYi/auth/signup',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
