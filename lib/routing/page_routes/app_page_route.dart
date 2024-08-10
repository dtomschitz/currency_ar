part of routing;

enum AppPageRouteTransition {
  fadeTrough,
  fade,
  sharedAxis,
  none,
}

class AppPageRoute<T> extends MaterialPageRoute<T> {
  AppPageRoute({
    required super.builder,
    super.settings,
    super.maintainState,
    super.fullscreenDialog,
    this.transition = AppPageRouteTransition.fadeTrough,
  });

  final AppPageRouteTransition transition;

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    if (transition == AppPageRouteTransition.fadeTrough) {
      return FadeThroughTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      );
    }

    if (transition == AppPageRouteTransition.fade) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    }

    if (transition == AppPageRouteTransition.sharedAxis) {
      return SharedAxisTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        transitionType: SharedAxisTransitionType.scaled,
        child: child,
      );
    }

    return child;
  }
}
