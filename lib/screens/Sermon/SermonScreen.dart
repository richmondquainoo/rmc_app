import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/myColors.dart';


class SermonScreen extends StatefulWidget {
  const SermonScreen({super.key});

  @override
  State<SermonScreen> createState() => _SermonScreenState();
}

class _SermonScreenState extends State<SermonScreen> {

  static String myVideoId = '_KpZToQqNMw';
  static String myVideoId1 = 'R4no7Dv5vWM';

  // the full url: https://www.youtube.com/watch?v=PQSagzssvUQ&ab_channel=NASA
  // it's an interesting video from NASA on Youtube

  // Initiate the Youtube player controller
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: myVideoId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  final YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: myVideoId1,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MAIN_COLOR,
        elevation: 0.2,
        automaticallyImplyLeading: false,
        title: Text(
          "Sermon",
          style: GoogleFonts.raleway(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            letterSpacing: .75,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/rmcLogo.png"),
          )
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "All latest sermon",
                    style: GoogleFonts.raleway(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.red,
                  ),
                  child: YoutubePlayer(
                    controller: _controller,
                    liveUIColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.red,
                  ),
                  child: YoutubePlayer(
                    controller: _controller1,
                    liveUIColor: Colors.amber,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:Colors.red,
                  ),
                  child: YoutubePlayer(
                    controller: _controller,
                    liveUIColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
