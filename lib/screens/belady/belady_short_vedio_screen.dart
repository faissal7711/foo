//// ignore_for_file: avoid_unnecessary_containers, unused_field
//
//import 'package:flutter/material.dart';
//import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
//import '../../conestants.dart';
//
//class BeladyShortVideoScreen extends StatefulWidget {
//  static const routeName = '/belady_video_screen';
//
//  const BeladyShortVideoScreen({Key key}) : super(key: key);
//
//  @override
//  _VideoScreenState createState() => _VideoScreenState();
//}
//
//class _VideoScreenState extends State<BeladyShortVideoScreen> {
//  YoutubePlayerController _controller;
//  TextEditingController _seekToController;
//
//  PlayerState _playerState;
//  YoutubeMetaData _videoMetaData;
//  double _volume = 100;
//  bool _muted = false;
//  bool _isPlayerReady = false;
//
//  @override
//  void initState() {
////    final videoID = ModalRoute.of(context).settings.arguments as String;
//////    _controller = YoutubePlayerController(initialVideoId: 'UIkPFdrKM8g');
////    print('================================================================');
////    print('================================================================');
////    print('================================================================');
////    print('================================================================');
////    print(videoID);
//    _controller = YoutubePlayerController(
//      initialVideoId: convertedUrl('https://youtu.be/Ao3gZkIS0Mc'),
//      flags: const YoutubePlayerFlags(
//        mute: false,
//        autoPlay: true,
//        disableDragSeek: false,
//        loop: true,
//        isLive: false,
//        forceHD: false,
//        enableCaption: true,
//      ),
//    )..addListener(listener);
//    _seekToController = TextEditingController();
//    _videoMetaData = const YoutubeMetaData();
//    _playerState = PlayerState.unknown;
//    super.initState();
//  }
//
//
//  void listener() {
//    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//      setState(() {
//        _playerState = _controller.value.playerState;
//        _videoMetaData = _controller.metadata;
//      });
//    }
//  }
//
//  @override
//  void dispose() {
//    _controller.pause();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
////      backgroundColor: Colors.black,
//      appBar: AppBar(
//        title: Text('الفيديو التوضيحي',style: StyleTitle),
//        centerTitle: true,
//      ),
//      body: Center(
//        child: YoutubePlayerBuilder(
//          player: YoutubePlayer(controller: _controller),
//          builder: (context, player) {
//            return YoutubePlayer(
//              controller: _controller,
//              showVideoProgressIndicator: true,
//            );
//          },
//        ),
//      ),
//    );
//  }
//
//  // function
//  String convertedUrl(url) {
//    return YoutubePlayer.convertUrlToId(url).toString();
//  }
//}
