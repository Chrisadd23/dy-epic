// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ModelConversation _$ModelConversationFromJson(Map<String, dynamic> json) =>
    _ModelConversation(
      id: json['id'] as String,
      title: json['title'] as String,
      lastMessage: json['lastMessage'] as String,
      lastMessageAt: DateTime.parse(json['lastMessageAt'] as String),
      unreadCount: (json['unreadCount'] as num).toInt(),
      isSynced: json['isSynced'] as bool,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$ModelConversationToJson(_ModelConversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'lastMessage': instance.lastMessage,
      'lastMessageAt': instance.lastMessageAt.toIso8601String(),
      'unreadCount': instance.unreadCount,
      'isSynced': instance.isSynced,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
