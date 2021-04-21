enum Cam {
  seaway_jetty,
  main_beach,
  narrowneck,
  artreef,
  surfersparadise,
  broadbeach,
  burleigh,
  currumbin_alley,
  tugun,
  kirra,
  rainbow,
  snapper,
  duranbah,
  byron_pass,
  lennox,
  shelly,
  ballina,
}

extension CamExtension on Cam {
  String get name {
    switch (this) {
      case Cam.seaway_jetty:
        return 'Seaway Jetty';
      case Cam.main_beach:
        return 'Main Beach';
      case Cam.narrowneck:
        return 'Narrowneck';
      case Cam.artreef:
        return 'Artificial Reef';
      case Cam.surfersparadise:
        return 'Surfers Paradise';
      case Cam.broadbeach:
        return 'Broadbeach';
      case Cam.burleigh:
        return 'Burleigh';
      case Cam.currumbin_alley:
        return 'Currumbin Alley';
      case Cam.tugun:
        return 'Tugun';
      case Cam.kirra:
        return 'Kirra';
      case Cam.rainbow:
        return 'Rainbow';
      case Cam.snapper:
        return 'Snapper';
      case Cam.duranbah:
        return 'Dbah';
      case Cam.byron_pass:
        return 'Byron Pass';
      case Cam.lennox:
        return 'Lennox Head';
      case Cam.shelly:
        return 'Shelly\'s';
      case Cam.ballina:
        return 'Ballina';
    }
  }

  String get url {
    switch (this) {
      case Cam.seaway_jetty:
        return 'https://cams.cdn-surfline.com/cdn-au/au-seaway/playlist.m3u8';
      case Cam.main_beach:
        return 'https://cams.cdn-surfline.com/cdn-au/au-mainbeach/playlist.m3u8';
      case Cam.narrowneck:
        return 'https://cams.cdn-surfline.com/cdn-au/au-narrowneck/playlist.m3u8';
      case Cam.artreef:
        return 'https://cams.cdn-surfline.com/cdn-au/au-artreef/playlist.m3u8';
      case Cam.surfersparadise:
        return 'https://cams.cdn-surfline.com/cdn-au/au-surfersparadise/playlist.m3u8';
      case Cam.broadbeach:
        return 'https://cams.cdn-surfline.com/cdn-au/au-kurrawa/playlist.m3u8';
      case Cam.burleigh:
        return 'https://cams.cdn-surfline.com/cdn-au/au-burleighheads/playlist.m3u8';
      case Cam.currumbin_alley:
        return 'https://cams.cdn-surfline.com/cdn-au/au-currumbinalleyoverview/playlist.m3u8';
      case Cam.tugun:
        return 'https://cams.cdn-surfline.com/cdn-au/au-tugun/playlist.m3u8';
      case Cam.kirra:
        return 'https://cams.cdn-surfline.com/cdn-au/au-kirranorth/playlist.m3u8';
      case Cam.rainbow:
        return 'https://cams.cdn-surfline.com/cdn-au/au-rainbowbay/playlist.m3u8';
      case Cam.snapper:
        return 'https://cams.cdn-surfline.com/cdn-au/au-snapper/playlist.m3u8';
      case Cam.duranbah:
        return 'https://cams.cdn-surfline.com/cdn-au/au-duranbah/playlist.m3u8';
      case Cam.byron_pass:
        return 'https://cams.cdn-surfline.com/cdn-au/au-thepassoverview/playlist.m3u8';
      case Cam.lennox:
        return 'https://cams.cdn-surfline.com/cdn-au/au-lennoxhead/playlist.m3u8';
      case Cam.shelly:
        return 'https://cams.cdn-surfline.com/cdn-au/au-ballinashellybeach/playlist.m3u8';
      case Cam.ballina:
        return 'https://cams.cdn-surfline.com/cdn-au/au-ballinalighthouse/chunklist.m3u8';
    }
  }
}
