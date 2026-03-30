import 'package:app_flutter_produkt_bestellen/core/fix_widgets/loading_widget.dart';
import 'package:app_flutter_produkt_bestellen/core/global_widgets/page/globa_scaffold.dart';
import 'package:app_flutter_produkt_bestellen/features/login/presentation/cubit/login_cubit.dart';
import 'package:app_flutter_produkt_bestellen/features/shopping_basket/presentation/bloc/bloc_shopping_basket.dart';
import 'package:app_flutter_produkt_bestellen/global_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../login/domain/entity/entity_login_customer.dart';
import '../../domain/entity/entity_contacts.dart';
import '../cubit/chat_message_cubit.dart';

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
          BlocProvider<ChatMessageCubit>.value(
            value: getIt<ChatMessageCubit>()..loadContacts(),
          ),
        ], child: const ChatMessageBody()));
  }
}

class ChatMessageBody extends StatelessWidget {
  const ChatMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var userType = context.read<LoginCubit>().state.customer?.getUserType;
    return userType == UserType.owner
        ? const ChatMessageBodyOwner()
        : const ChatMessageBodyCustomer();
  }
}

class ChatMessageBodyOwner extends StatelessWidget {
  const ChatMessageBodyOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatMessageCubit, List<EntityContact>>(
        builder: (context, state) => state.isEmpty
            ? Center(child: LoadingWidget())
            : ListView.builder(
                itemCount: context.read<ChatMessageCubit>().state.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black54,
                      Colors.white38,
                      Colors.grey.shade400,
                      Colors.transparent,
                    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 2)),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20)),
                  ),
                  child: ListTile(
                    title: Text(context
                        .read<ChatMessageCubit>()
                        .state[index]
                        .customerNumber),
                    subtitle: Text(context
                            .read<ChatMessageCubit>()
                            .state[index]
                            .companyName ??
                        ""),
                    leading: CircleAvatar(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: const Icon(Icons.person)),
                      ),
                    ),
                  ),
                ),
              ));
  }
}

class ChatMessageBodyCustomer extends StatelessWidget {
  const ChatMessageBodyCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text(context.read<LoginCubit>().state.customer?.customerName ?? ""),
    );
  }
}
