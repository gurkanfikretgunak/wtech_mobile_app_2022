import 'package:client/app/views/abstractions/base_view_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:video_player/video_player.dart';

@Injectable()
class VideosViewModel extends BaseViewModel {
  final _isUrlWork = BehaviorSubject<bool>();
  final _controller = BehaviorSubject<VideoPlayerController>();

  Stream get isUrlWork => _isUrlWork.stream;
  void setIsUrlWork(bool value) => _isUrlWork.add(value);

  Stream get controller => _controller.stream;
  void setController(VideoPlayerController value) =>
      _controller.sink.add(value);
  void deleteController(VideoPlayerController value) =>
      _controller.sink.close();

  Future<void> videoControl(
    String videoUrl,
  ) async {
    setController(VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setIsUrlWork(true);
      }).onError((error, stackTrace) {
        setIsUrlWork(false);
      }).timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          setIsUrlWork(false);
        },
      ));
  }

  @override
  void clear() {
    deleteController;
  }
}
