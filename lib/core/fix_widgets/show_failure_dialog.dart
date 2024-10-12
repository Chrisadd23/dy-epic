import 'package:app_flutter_produkt_bestellen/core/fix_values/app_text_style.dart';
import 'package:app_flutter_produkt_bestellen/features/product/presentation/widget/error_dialog_clip_path.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:flutter/material.dart';

List<String> _failureMessagesIdList = [];

class ShowFailureDialog extends StatelessWidget {
  const ShowFailureDialog._({required this.failure});

  final String failure;

  static present(
      {required BuildContext context,
      required String failure,
      required String id}) {
    if (!_failureMessagesIdList.contains(id)) {
      _failureMessagesIdList.add(id);
      return showDialog(
          context: context,
          builder: (context) => Dialog(
                backgroundColor: Colors.transparent,
                insetPadding: const EdgeInsets.symmetric(horizontal: 20),
                child: IntrinsicHeight(
                  child: ShowFailureDialog._(
                    failure: failure,
                  ),
                ),
              )).whenComplete(() => _failureMessagesIdList.remove(id));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipPath(
          clipper: ErrorDialogClipPathParent(),
          child: Container(
            color: Colors.black,
            width: 300,
            height: 260,
            child: ClipPath(
              clipper: ErrorDialogClipPathChild(),
              child: Container(
                width: 300,
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 30,
                          ),
                          Text(
                            failure,
                            style: AppTextStyle.bold18,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: -10,
          bottom: -10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 75,
              height: 75,
              child: Image.asset(
                Assets.appComponents.failure.bottomFailureImage.path,
              ),
            ),
          ),
        ),
        Positioned(
          top: -5,
          right: -5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                Assets.appComponents.failure.rightFailureImage.path,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
