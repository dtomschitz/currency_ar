part of routing;

class RouteArguments<T extends Object> {
  RouteArguments({this.args, this.fullscreenDialog});

  final T? args;
  final bool? fullscreenDialog;
}