import 'package:flutter/material.dart';

class NoInternetConnectionView extends StatelessWidget {
  const NoInternetConnectionView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            IgnorePointer(child: Opacity(opacity: 0.5, child: child)),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                color: Colors.grey,
                padding: const EdgeInsets.all(8),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.warning_amber,
                      color: Colors.red,
                      size: 50,
                    ),
                    Center(
                      child: Text(
                        "AppLocalizations.of(context).youDontHaveAnyInternetConnection",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
