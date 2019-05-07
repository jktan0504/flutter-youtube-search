library search_event;

import 'package:built_value/built_value.dart';

part 'search_event.g.dart';

abstract class SearchEvent {}

abstract class SearchInitiated implements Built<SearchInitiated, SearchInitiatedBuilder> {
	// model fields define here
	
	// private construtor
	SearchInitiated._();
	
	
	// factory
	factory SearchInitiated ([updates(SearchInitiatedBuilder b)]) = _$SearchInitiated;
	
}


class FetchNextResultPage extends SearchEvent {}

