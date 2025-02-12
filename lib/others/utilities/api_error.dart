part of '../_others.dart';

sealed class ApiError {}

class UnAuthorized extends ApiError{}

/// access token should refresh
class AccessTokenExpired extends UnAuthorized {}

/// user should logout forcefully to login again
class LoginSessionExpired extends UnAuthorized {}

class ServerError extends ApiError {}
