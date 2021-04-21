enum Cam { lennox, ballina }

extension CamExtension on Cam {
  String get name {
    switch (this) {
      case Cam.lennox:
        return 'Lennox Head';
      case Cam.ballina:
        return 'Ballina';
    }
  }

  String get url {
    switch (this) {
      case Cam.lennox:
        return 'https://cams.cdn-surfline.com/cdn-au/au-lennoxhead/playlist.m3u8';
      case Cam.ballina:
        return 'https://cams.cdn-surfline.com/cdn-au/au-ballinalighthouse/chunklist.m3u8';
    }
  }

}

