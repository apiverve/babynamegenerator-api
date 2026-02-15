/// Response models for the Baby Name Generator API.

/// API Response wrapper.
class BabynamegeneratorResponse {
  final String status;
  final dynamic error;
  final BabynamegeneratorData? data;

  BabynamegeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory BabynamegeneratorResponse.fromJson(Map<String, dynamic> json) => BabynamegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BabynamegeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Baby Name Generator API.

class BabynamegeneratorData {
  int? count;
  List<BabynamegeneratorDataNamesItem>? names;

  BabynamegeneratorData({
    this.count,
    this.names,
  });

  factory BabynamegeneratorData.fromJson(Map<String, dynamic> json) => BabynamegeneratorData(
      count: json['count'],
      names: (json['names'] as List?)?.map((e) => BabynamegeneratorDataNamesItem.fromJson(e)).toList(),
    );
}

class BabynamegeneratorDataNamesItem {
  String? firstName;
  String? middleName;
  String? fullName;

  BabynamegeneratorDataNamesItem({
    this.firstName,
    this.middleName,
    this.fullName,
  });

  factory BabynamegeneratorDataNamesItem.fromJson(Map<String, dynamic> json) => BabynamegeneratorDataNamesItem(
      firstName: json['firstName'],
      middleName: json['middleName'],
      fullName: json['fullName'],
    );
}

class BabynamegeneratorRequest {
  String gender;
  int? count;

  BabynamegeneratorRequest({
    required this.gender,
    this.count,
  });

  Map<String, dynamic> toJson() => {
      'gender': gender,
      if (count != null) 'count': count,
    };
}
