part of routing;

class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage(
      {required this.child, this.useSafeArea, this.isScrollControlled});

  final Widget child;
  final bool? useSafeArea;
  final bool? isScrollControlled;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
        settings: this,
        useSafeArea: useSafeArea ?? false,
        isScrollControlled: isScrollControlled ?? false,
        showDragHandle: true,
        builder: (context) => child,
      );
}
