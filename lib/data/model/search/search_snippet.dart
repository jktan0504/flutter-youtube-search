library search_snippet;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/data/model/search/thumbnail.dart';
import 'package:youtube_search/data/model/serializer/serializers.dart';

part 'search_snippet.g.dart';

abstract class SearchSnippet implements Built<SearchSnippet, SearchSnippetBuilder> {
    // fields go here
	String get publishedAt;
	String get channelId;
	String get title;
	String get description;
	Thumbnail get thumbnails;
	String get channelTitle;
    
    // private construtor
    SearchSnippet._();
    
    factory SearchSnippet([updates(SearchSnippetBuilder b)]) = _$SearchSnippet;
    
    String toJson() {
        return json.encode(serializers.serializeWith(SearchSnippet.serializer, this));
    }
    
    static SearchSnippet fromJson(String jsonString) {
        return serializers.deserializeWith(SearchSnippet.serializer, json.decode(jsonString));
    }
    
    static Serializer<SearchSnippet> get serializer => _$searchSnippetSerializer;
}