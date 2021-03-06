import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewieListItem extends StatefulWidget {
  // This will contain the URL/asset path which we want to play
  final VideoPlayerController ? videoPlayerController;
  final bool ? looping;

  ChewieListItem({
    @required  this.videoPlayerController,
    this.looping,
    Key ? key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {
  ChewieController ? _chewieController;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController
    _chewieController = ChewieController(
      videoPlayerController:  widget.videoPlayerController! ,
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping:  widget.looping ?? false,
      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    widget.videoPlayerController!.dispose();
    _chewieController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController! ,
      ),
    );
  }


}

class ChewieHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chewie Player'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('Network Player'),
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: ChewieListItem(
              videoPlayerController: VideoPlayerController.network(
                'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
              ),

            ),
          ),
          SizedBox(height: 30.0),

          Text('Asset Player'),
          //Asset Player
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width,
            child: ChewieListItem(
                  videoPlayerController: VideoPlayerController.asset(
                    'assets/bee.mp4',
                  ),
                  looping: true,
            ),
          ),


        ],
      ),
    );
  }
}

