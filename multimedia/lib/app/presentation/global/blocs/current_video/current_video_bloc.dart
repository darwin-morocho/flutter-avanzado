import 'package:flutter/foundation.dart';

import '../../../../domain/models/video.dart';

class CurrentVideoBloc extends ChangeNotifier {
  Video? _video;
  Video? get video => _video;

  void setCurrentVideo(Video video) {
    if (_video != video) {
      _video = video;
      notifyListeners();
    }
  }
}
