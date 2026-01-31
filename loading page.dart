import 'dart:ui';  // Without this → no glass blur, no custom painting
import 'dart:math' as math; // Without this → no animations involving sine/cosine,(Used for natural movement instead of robotic motion)
import 'package:flutter/material.dart';  // Widgets,Animations,Icons,Layouts(Without this, nothing visual works)


class BatchesPage extends StatefulWidget { //A StatefulWidget has mutable state,Its UI can change during runtime.
  const BatchesPage({super.key});

  @override
  State<BatchesPage> createState() => BatchesPageState();
}

class BatchesPageState extends State<BatchesPage>
    with TickerProviderStateMixin { //Animations need a heartbeat (frame updates).Syncs animations to screen refresh rate,Without this → animations won’t run
  late AnimationController _headerController;
  late AnimationController _floatingController;
  late AnimationController _particleController;
  late List<AnimationController> _cardControllers;

  late Animation<double> _headerFade;
  late Animation<Offset> _headerSlide;
  late List<Animation<double>> _cardAnimations;
