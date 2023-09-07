// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

import 'pages/dummy_page.dart';

class TabContainerScreen extends StatelessWidget {
  TabContainerScreen({super.key});

  List<String> bankList = ['pageA', 'pageB', 'pageC', 'pageD', 'pageE'];

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: TabContainer(
            radius: 20,
            tabEdge: TabEdge.top,
            tabCurve: Curves.easeIn,
            transitionBuilder: (child, animation) {
              animation = CurvedAnimation(curve: Curves.easeIn, parent: animation);
              return SlideTransition(
                position: Tween(
                  begin: const Offset(0.2, 0.0),
                  end: const Offset(0.0, 0.0),
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
            colors: <Color>[
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.2),
            ],
            selectedTextStyle: const TextStyle(fontSize: 12.0),
            unselectedTextStyle: const TextStyle(fontSize: 12.0),
            tabs: _getTabs1(),
            children: _getChildren1(),
          ),
        ),
      ),
    );
  }

  ///
  List<String> _getTabs1() {
    return bankList.map((e) => e).toList();
  }

  ///
  List<Widget> _getChildren1() {
    return bankList.map((e) => DummyPage(bank: e)).toList();
  }
}
