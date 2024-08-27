import 'package:flutter/material.dart';
import 'package:interview_demo/core/constants.dart';

class UniversalScaffold extends StatefulWidget {
  const UniversalScaffold({
    super.key,
    this.floatingActionButton,
    this.onPreviousPagePressed,
    this.actions,
    this.didPop,
    required this.appBarTitle,
    required this.child,
  });

  final Widget? floatingActionButton;
  final VoidCallback? onPreviousPagePressed;
  final String appBarTitle;
  final Widget child;
  final List<Widget>? actions;
  final Function(bool, dynamic)? didPop;

  @override
  State<UniversalScaffold> createState() => _UniversalScaffoldState();
}

class _UniversalScaffoldState extends State<UniversalScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didpop, dynamic result) {
        if (didpop) {
          return;
        }

        widget.didPop;
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          centerTitle: false,
          toolbarHeight: Constants.toolbarHeight,
          titleSpacing: 0,
          leadingWidth: 80,
          title: Text(
            widget.appBarTitle,
            style: const TextStyle(
              fontSize: 32,
              color: Colors.black,
            ),
          ),
          leading: widget.onPreviousPagePressed == null
              ? const SizedBox.shrink()
              : IconButton(
                  highlightColor: Colors.white.withOpacity(0.2),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                  onPressed: widget.onPreviousPagePressed,
                ),
          actions: widget.actions,
        ),
        drawerEnableOpenDragGesture: false,
        body: widget.child,
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        floatingActionButton: widget.floatingActionButton,
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
