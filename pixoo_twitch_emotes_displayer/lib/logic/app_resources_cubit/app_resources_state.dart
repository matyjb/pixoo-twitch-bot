part of 'app_resources_cubit.dart';

@freezed
class AppResourcesState with _$AppResourcesState {
  const factory AppResourcesState.initial() = _Initial;
  const factory AppResourcesState.loaded({
    required String cachePath,
    required String docsPath,
    required List<NetInterface> networkInterfaces,
    required List<PixooDevice> pixooDevices,
  }) = _Loaded;
}
