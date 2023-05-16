import 'package:app_flutter_produkt_bestellen/features/category/presentation/widget/category_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/globalWidgets/page/globalPageWidget.dart';
import '../../../../core/globalWidgets/widget/globalAppBar.dart';
import '../../../../gen/assets.gen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            decoration:  const BoxDecoration(
                border: Border(
              top: BorderSide(color: Colors.black, width: 2),
                  left: BorderSide(color: Colors.black,width: 2),
                  right: BorderSide(color: Colors.black,width: 2),
                  bottom: BorderSide(color: Colors.black,width: 0.3,style: BorderStyle.none)
            )),
            child: GlobalAppBar(
              context: context,
            ),
          ),
        ),
        body: const CategoryPage(), );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: impconst Center(child: Text("hi"),)ter(child: Text("hi"),),);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
         width: double.infinity,
          child: Column(
            children: [
              CategoryWidget(img: Assets.appComponents.jpg.beispielTable.path, title: 'Tische')

            ],
          ),
        )
      ],
    );
  }
}


