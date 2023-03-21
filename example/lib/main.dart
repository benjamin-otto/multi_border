import 'package:flutter/material.dart';
import 'package:multi_border/multi_border.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'MultiBorder Examples',
      home: Scaffold(
        body: Center(
          child: Examples(),
        ),
      ),
    );
  }
}

class Examples extends StatelessWidget {
  const Examples({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _examples.length,
      separatorBuilder: (_, __) => const SizedBox(height: 24),
      itemBuilder: (_, i) => Center(child: _examples[i]),
    );
  }

  List<Widget> get _examples => [
        _evenBordersSharpRectangle,
        _evenBordersRoundedRectangle,
        _evenBordersCircle,
        _customWidthBordersRectangle,
        _customWidthBordersCircle,
      ];

  List<Color> get _evenWidthBorderColors => const [
        Color(0xFFF14A42),
        Color(0xFFF27D3B),
        Color(0xFFF2A83A),
        Color(0xFFF8C43F),
      ];

  List<MBBorder> get _customWidthBorders => [
        MBBorder(color: const Color(0xFFF14A42), width: 4),
        MBBorder(color: const Color(0xFFF27D3B), width: 8),
        MBBorder(color: const Color(0xFFF2A83A), width: 12),
        MBBorder(color: const Color(0xFFF8C43F), width: 16),
      ];

  MultiBorder get _evenBordersSharpRectangle => MultiBorder.evenBorders(
        width: 8,
        colors: _evenWidthBorderColors,
        child: _child,
      );

  MultiBorder get _evenBordersRoundedRectangle => MultiBorder.evenBorders(
        width: 8,
        innerRadius: BorderRadius.circular(8),
        colors: _evenWidthBorderColors,
        child: _child,
      );

  MultiBorder get _evenBordersCircle => MultiBorder.evenBorders(
        shape: BoxShape.circle,
        width: 8,
        colors: _evenWidthBorderColors,
        child: _child,
      );

  MultiBorder get _customWidthBordersRectangle => MultiBorder(
        innerRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        borders: _customWidthBorders,
        child: _child,
      );

  MultiBorder get _customWidthBordersCircle => MultiBorder(
        shape: BoxShape.circle,
        borders: _customWidthBorders,
        child: _child,
      );

  Widget get _child => Container(
        width: 100,
        height: 100,
        color: const Color(0xFF4B3D2F),
        child: const Icon(
          Icons.thumb_up,
          color: Color(0xFFCEC1B6),
        ),
      );
}
