class ApiResponse<T> {
  final bool success;
  final T? data;
  final String? message;
  final String? errorMessage;

  ApiResponse({
    required this.success,
    this.data,
    this.message,
    this.errorMessage,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json, T? Function(dynamic)? fromJson) {
    return ApiResponse<T>(
      success: json['Success'] ?? json['success'] ?? false,
      data: json['Data'] != null && fromJson != null 
          ? fromJson(json['Data']) 
          : json['Data'],
      message: json['Message'] ?? json['message'],
      errorMessage: json['ErrorMessage'] ?? json['errorMessage'],
    );
  }

  factory ApiResponse.success(T data, {String? message}) {
    return ApiResponse<T>(
      success: true,
      data: data,
      message: message,
    );
  }

  factory ApiResponse.error(String errorMessage) {
    return ApiResponse<T>(
      success: false,
      errorMessage: errorMessage,
    );
  }

  bool get isSuccess => success;
  bool get isError => !success;
}

class AuthResponse {
  final bool success;
  final String? token;
  final String? message;
  final Manager? manager;

  AuthResponse({
    required this.success,
    this.token,
    this.message,
    this.manager,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      success: json['Success'] ?? false,
      token: json['Token'],
      message: json['Message'],
      manager: json['Manager'] != null 
          ? Manager.fromJson(json['Manager']) 
          : null,
    );
  }
}

class Manager {
  final int id;
  final String name;
  final String phone;
  final String? email;
  final List<String> roles;
  final List<int> cityIds;

  Manager({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.roles,
    required this.cityIds,
  });

  factory Manager.fromJson(Map<String, dynamic> json) {
    return Manager(
      id: json['Id'] ?? json['id'] ?? 0,
      name: json['Name'] ?? json['name'] ?? '',
      phone: json['Phone'] ?? json['phone'] ?? '',
      email: json['Email'] ?? json['email'],
      roles: List<String>.from(json['Roles'] ?? json['roles'] ?? []),
      cityIds: List<int>.from(json['CityIds'] ?? json['cityIds'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Id': id,
      'Name': name,
      'Phone': phone,
      'Email': email,
      'Roles': roles,
      'CityIds': cityIds,
    };
  }
}