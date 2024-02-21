import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/order/presentation/cubit/order_customer_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderInformationDialog extends StatelessWidget {
  const OrderInformationDialog._({required this.productInformationList});

  final List<ProductInformation> productInformationList;

  static showOrderInformationDialog(
          {required BuildContext context,
          required List<ProductInformation> productInformationList}) =>
      showDialog(
          context: context,
          builder: (context) => OrderInformationDialog._(
              productInformationList: productInformationList));

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const _TitleAlertDialogRow(),
      backgroundColor: AppColors.greyCACACA.withOpacity(0.9),
      content: ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: MediaQuery.sizeOf(context).height * 0.6,
            minWidth: double.maxFinite),
        child: SingleChildScrollView(
          child: Column(
            children: productInformationList
                .map(
                  (productInformation) => _ProductInformationContainer(
                      productInformation: productInformation),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<ProductInformation>(
        'productInformationList', productInformationList));
  }
}

class _ProductInformationContainer extends StatelessWidget {
  const _ProductInformationContainer({
    required this.productInformation,
  });

  final ProductInformation productInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                productInformation.productTitle.trim(),
                style: const TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Einzelpreis: ${NumberFormat.currency(locale: 'de_DE', symbol: '€', decimalDigits: 2).format(productInformation.price)}'),
                  Text('Anzahl: ${productInformation.count}')
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Produktnummer: ${productInformation.productNumber.trim()}'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<ProductInformation>(
        'productInformation', productInformation));
  }
}

class _TitleAlertDialogRow extends StatelessWidget {
  const _TitleAlertDialogRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Produktinformationen',
          style: AppTextStyle.colorBlackSize20ShadowWhite,
          textAlign: TextAlign.center,
        ),
        InkWell(
          onTap: () => showDialog(
              context: context,
              builder: (context) => Dialog(
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Wrap(
                      runAlignment: WrapAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Hinweis',
                            style: AppTextStyle.colorBlackSize20ShadowWhite,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Divider(),
                        ),
                        const Text(
                          'Sobald Ihre Bestellung bearbeitet wurde, werden Ihnen die Produktinformationen innerhalb der PDF Datei bereitgestellt.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ))),
          child: Icon(
            Icons.info_outline,
            color: Colors.red[900],
            shadows: const [
              Shadow(offset: Offset(1, 0), color: Colors.white),
              Shadow(offset: Offset(-1, 0), color: Colors.white),
              Shadow(offset: Offset(0, 1), color: Colors.white),
              Shadow(offset: Offset(0, -1), color: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
