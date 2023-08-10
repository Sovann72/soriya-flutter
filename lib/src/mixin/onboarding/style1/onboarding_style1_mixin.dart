import 'package:flutter/material.dart';
import 'package:soriya_flutter/src/exception/soriya_exception.dart';
import 'package:soriya_flutter/src/extension/soriya_widget_extension.dart';

mixin OnboardingPageMixin<T extends StatefulWidget> on State<T> {
  late final String header;
  late final String secHeader;
  late final String content;
  late final Widget img;

  ///[size] is the current size of the screen, you'll have to pass in size by [MediaQuery], ex: MediaQuery.of(context).size
  Widget layout(Size size, int index,
      {Color? backgroundColor, Color? textColor, Gradient? gradient}) {
    if (backgroundColor != null && gradient != null) {
      throw SoriyaAssertException(
          "backgroundColor and gradient can't be used at the same time");
    }

    final eigthOfScreenW = size.width * 0.8;
    final fouthOfScreenH = size.height * 0.4;

    TextStyle headerStyle(double fontSize) {
      return TextStyle(
          fontWeight: FontWeight.bold, color: textColor, fontSize: fontSize);
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          SafeArea(
              child: Container(
            decoration: BoxDecoration(gradient: gradient),
          )),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width,
                      height: 100,
                    ),
                    SizedBox(
                      width: 150,
                      child: img,
                    ).margin(const EdgeInsets.only(bottom: 32)),
                    SizedBox(
                      height: fouthOfScreenH,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (index == 0)
                            TweenAnimationBuilder(
                                tween: Tween<double>(
                                    begin: size.width * 0.2,
                                    end: eigthOfScreenW),
                                duration: const Duration(milliseconds: 1000),
                                builder: (context, double value, child) {
                                  return SizedBox(
                                    width: value,
                                    child: Column(
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            header,
                                            style: headerStyle(
                                                eigthOfScreenW * 0.5),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        FittedBox(
                                          child: Text(
                                            secHeader,
                                            style: headerStyle(value * 0.5),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                }).marginSym(horizontal: 32)
                          else
                            SizedBox(
                              width: eigthOfScreenW,
                              child: Column(
                                children: [
                                  FittedBox(
                                    child: Text(
                                      header,
                                      style: headerStyle(eigthOfScreenW * 0.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      secHeader,
                                      style: headerStyle(eigthOfScreenW * 0.5),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
