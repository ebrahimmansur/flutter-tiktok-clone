import 'package:flutter/material.dart';

enum ScreenType { mobile, tablet }

// const double _kMobileBreakPoint = 340;
const double _kTabletBreakPoint = 640;

class ScreenBundle {
  final bool isPortrait;
  final ScreenType screenType;
  final Size screenSize;
  final Size widgetSize;
  ScreenBundle({
    required this.isPortrait,
    required this.screenType,
    required this.screenSize,
    required this.widgetSize,
  });

  bool get isMobile => screenType == ScreenType.mobile;

  bool get isTablet => screenType == ScreenType.tablet;

  @override
  String toString() {
    return 'Screen Infromation:\nPortrait -> $isPortrait\nScreen Type -> $screenType\nScreen Size -> $screenSize\nwidget Size -> $widgetSize';
  }
}

class ResponsiveWidget extends StatelessWidget {
  final Widget Function(BuildContext context, ScreenBundle bundle) builder;
  const ResponsiveWidget({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final mediaQueryData = MediaQuery.of(context);
        final orientation = mediaQueryData.orientation;
        final screenType = _handleGettingScreenType(mediaQueryData);

        final bundle = ScreenBundle(
            isPortrait: orientation == Orientation.portrait,
            screenType: screenType,
            screenSize: mediaQueryData.size,
            widgetSize: Size(constraints.maxWidth, constraints.maxHeight));

        return builder(context, bundle);
      },
    );
  }

  ScreenType _handleGettingScreenType(MediaQueryData mediaQueryData) {
    final deviceWidth = mediaQueryData.size.shortestSide;

    if (deviceWidth >= _kTabletBreakPoint) return ScreenType.tablet;

    return ScreenType.mobile;
  }
}

class OrientationTypeLayout extends StatelessWidget {
  final Widget portraitLayout;
  final Widget landscapeLayout;
  const OrientationTypeLayout({
    Key? key,
    required this.portraitLayout,
    required this.landscapeLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPortait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return isPortait ? portraitLayout : landscapeLayout;
  }
}

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;
  const ScreenTypeLayout({
    Key? key,
    required this.mobileLayout,
    required this.tabletLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, bundle) {
        debugPrint(bundle.toString());
        switch (bundle.screenType) {
          case ScreenType.mobile:
            return mobileLayout;

          case ScreenType.tablet:
            return tabletLayout;
        }
      },
    );
  }
}

class SectionTypeLayout extends StatelessWidget {
  final Widget smallMobileSection;
  final Widget mobileSection;
  final Widget tabletSection;
  const SectionTypeLayout({
    Key? key,
    required this.smallMobileSection,
    required this.mobileSection,
    required this.tabletSection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, bundle) {
        switch (bundle.screenType) {
          case ScreenType.mobile:
            return mobileSection;

          case ScreenType.tablet:
            return tabletSection;
        }
      },
    );
  }
}

class WidgetTypeLayout extends StatelessWidget {
  final Widget smallMobileWidget;
  final Widget mobileWidget;
  final Widget tabletWidget;
  const WidgetTypeLayout({
    Key? key,
    required this.smallMobileWidget,
    required this.mobileWidget,
    required this.tabletWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      builder: (context, bundle) {
        switch (bundle.screenType) {
          case ScreenType.mobile:
            return mobileWidget;

          case ScreenType.tablet:
            return tabletWidget;
        }
      },
    );
  }
}
