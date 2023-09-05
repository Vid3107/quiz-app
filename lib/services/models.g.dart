// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topic _$TopicFromJson(Map<String, dynamic> json) => Topic(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      img: json['img'] as String? ?? '',
      quizzes: (json['quizzes'] as List<dynamic>?)
              ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TopicToJson(Topic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'img': instance.img,
      'quizzes': instance.quizzes.map((e) => e.toJson()).toList(),
    };

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      video: json['video'] as String? ?? '',
      topic: json['topic'] as String? ?? '',
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'video': instance.video,
      'topic': instance.topic,
      'questions': instance.questions.map((e) => e.toJson()).toList(),
    };

Report _$ReportFromJson(Map<String, dynamic> json) => Report(
      uid: json['uid'] as String? ?? '',
      total: json['total'] as int? ?? 0,
      topics: json['topics'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$ReportToJson(Report instance) => <String, dynamic>{
      'uid': instance.uid,
      'total': instance.total,
      'topics': instance.topics,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      text: json['text'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'text': instance.text,
      'options': instance.options.map((e) => e.toJson()).toList(),
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      correct: json['correct'] as bool? ?? false,
      detail: json['detail'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'correct': instance.correct,
      'detail': instance.detail,
      'value': instance.value,
    };
