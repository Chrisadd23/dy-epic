import 'package:app_flutter_produkt_bestellen/core/fix_values/app_colors.dart';
import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/routes/go_router.dart';
import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/cubit/app_start_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/app_start/presentation/cubit/app_start_state.dart';
import 'package:app_flutter_produkt_bestellen/gen/assets.gen.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppStartPage extends StatelessWidget {
  const AppStartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteD6D6D7,
      body: SafeArea(
        child: BlocProvider<AppStartCubit>.value(
          value: getIt<AppStartCubit>()..start(),
          child: const _AppStart(),
        ),
      ),
    );
  }
}

class _AppStart extends StatelessWidget {
  const _AppStart();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppStartCubit, AppStartState>(
        listenWhen: (_, currentState) =>
            currentState.whenOrNull(success: () => true) ?? false,
        listener: (context, state) => context.goNamed(AppGoRouter.home.name),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              Assets.company.epicLogoScaled.path,
              height: 150,
              fit: BoxFit.fitHeight,
            ),
            Container(
                alignment: Alignment.center, child: const LoadingWidget()),
            const SizedBox(
              height: 100,
            ),
            const Spacer(),
          ],
        ));
  }
}
