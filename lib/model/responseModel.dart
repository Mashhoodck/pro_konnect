class ResponseModel {
  bool _isSuccess;
  String _message;
  String? role;
  String? userId;
  ResponseModel(this._isSuccess, this._message, {this.role, this.userId});

  String get message => _message;
  bool get isSuccess => _isSuccess;
}
