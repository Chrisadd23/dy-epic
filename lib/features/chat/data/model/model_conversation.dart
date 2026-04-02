import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_conversation.freezed.dart';
part 'model_conversation.g.dart';

@freezed
abstract class ModelConversation with _$ModelConversation {
  const factory ModelConversation({
    required String id,
    required String title,
    required String lastMessage,
    required DateTime lastMessageAt,
    required int unreadCount,
    required bool isSynced,
    required DateTime updatedAt,
  }) = _ModelConversation;

  factory ModelConversation.fromJson(Map<String, dynamic> json) =>
      _$ModelConversationFromJson(json);
}
