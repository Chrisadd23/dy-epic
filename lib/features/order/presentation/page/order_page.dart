import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_page_widget.dart';
import 'package:flutter/cupertino.dart';

class OderPage extends StatelessWidget {
  const OderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        appBarContext: context, body: const SizedBox.shrink());
  }
}
