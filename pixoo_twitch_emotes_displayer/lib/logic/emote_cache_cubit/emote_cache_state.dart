part of 'emote_cache_cubit.dart';

@freezed
class EmoteCacheState with _$EmoteCacheState {
  const factory EmoteCacheState({
    // key: $id_$provider, value: path to gif file
    required Map<String, String> idProviderPathMap,
    required Map<String, CancelableOperation> preperingEmotesIds,
    required Set<String> failedEmotesIds,
  }) = _EmoteCacheState;
}
