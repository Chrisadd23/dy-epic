import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
        showMenuBar: true,
        appBarContext: context,
        body: MultiBlocProvider(providers: [
          BlocProvider<LoginCubit>.value(
            value: getIt<LoginCubit>(),
          ),
          BlocProvider<BlocShoppingBasket>.value(
            value: getIt<BlocShoppingBasket>(),
          ),
        ], child: const ChatMessageBodyOwner()));
  }
}

class ChatMessageBodyOwner extends StatelessWidget {
  const ChatMessageBodyOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Owner"),
    );
  }
}

class ChatMessageBodyCustomer extends StatelessWidget {
  const ChatMessageBodyCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Customer"),
    );
  }
}
