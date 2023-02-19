import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class PokemonView extends StatefulWidget {
  const PokemonView({super.key});

  @override
  State<PokemonView> createState() => _PokemonViewState();
}

class _PokemonViewState extends State<PokemonView> {
  late final RiveAnimationController _controller;

  bool _playing = false;

  @override
  void initState() {
    super.initState();
    _controller = OneShotAnimation(
      'jump',
      autoplay: false,
      onStart: () => _playing = true,
      onStop: () => _playing = false,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(
          0.2,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SizedBox.expand(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/background.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  if (_playing) {
                    return;
                  }
                  setState(() {
                    _controller.isActive = !_controller.isActive;
                  });
                },
                child: SizedBox(
                  height: 400,
                  child: RiveAnimation.asset(
                    'assets/animations/pokemon.riv',
                    controllers: [
                      _controller,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
