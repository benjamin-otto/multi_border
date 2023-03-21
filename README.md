<p align="center">
  <a href="https://flutter.dev">
    <img src="https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter"
      alt="Platform" />
  </a>
  <a href="https://pub.dartlang.org/packages/multi_border">
    <img src="https://img.shields.io/pub/v/multi_border" alt="Pub Package" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/github/license/benjamin-otto/multi_border" alt="License"/>
  </a>
</p>

<p>  
  <img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/packageTitle.png?raw=true" alt="MultiBorder Package" width="100%"/>
</p>

<p align="center">
Quickly and easily add multiple borders of varying colors and widths to your widgets.
</p>

## Features

- Set each border's color.
- Set each border's width.
- Set a border radius for rectangular borders.
- Rectangular or circular borders.
- `MultiBorder.evenBorders()` constructor simplifies creating borders of even widths.

## Getting started

To import `MultiBorder`:

```dart
import 'package:multi_border/multi_border.dart';
```

To use `MultiBorder` with the default constructor:

```dart
MultiBorder(
  borders: [
    MBBorder(color: Colors.blue.shade100, width: 8),
    MBBorder(color: Colors.blue.shade200, width: 12),
    MBBorder(color: Colors.blue.shade300, width: 16),
  ],
  child: const Text('Wrap me with colorful borders'),
);
```

Or, to create borders of even widths you can use the `MultiBorder.evenBorders()` constructor:
- This will create a border for each color in [colors] of width [width].

```dart
MultiBorder.evenBorders(
  width: 8,
  colors: [
    Colors.blue.shade100,
    Colors.blue.shade200,
    Colors.blue.shade300,
  ],
  child: const Text('Wrap me with colorful borders'),
);
```

## Usage

### Sharp rectangle with even borders:

<img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/evenBordersSharpRectangle.png?raw=true" alt="Even Borders Sharp Rectangle" width="150"/>

```dart
MultiBorder.evenBorders(
  width: 8,
  colors: const [
    Color(0xFFF14A42),
    Color(0xFFF27D3B),
    Color(0xFFF2A83A),
    Color(0xFFF8C43F),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFF4B3D2F),
    child: const Icon(
      Icons.thumb_up,
      color: Color(0xFFCEC1B6),
    ),
  ),
);
```

### Rounded rectangle with even borders:

<img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/evenBordersRoundedRectangle.png?raw=true" alt="Even Borders Rounded Rectangle" width="150"/>

```dart
MultiBorder.evenBorders(
  width: 8,
  innerRadius: BorderRadius.circular(8),
  colors: const [
    Color(0xFFF14A42),
    Color(0xFFF27D3B),
    Color(0xFFF2A83A),
    Color(0xFFF8C43F),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFF4B3D2F),
    child: const Icon(
      Icons.thumb_up,
      color: Color(0xFFCEC1B6),
    ),
  ),
);
```

### Circle with even borders:

<img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/evenBordersCircle.png?raw=true" alt="Even Borders Circle" width="150"/>

```dart
MultiBorder.evenBorders(
  shape: BoxShape.circle,
  width: 8,
  colors: const [
    Color(0xFFF14A42),
    Color(0xFFF27D3B),
    Color(0xFFF2A83A),
    Color(0xFFF8C43F),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFF4B3D2F),
    child: const Icon(
      Icons.thumb_up,
      color: Color(0xFFCEC1B6),
    ),
  ),
);
```

### Rectangle with custom width borders:

<img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/customBordersRectangle.png?raw=true" alt="Custom Borders Rectangle" width="150"/>

```dart
MultiBorder(
  innerRadius: const BorderRadius.only(
    topLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  ),
  borders: [
    MBBorder(color: const Color(0xFFF14A42), width: 4),
    MBBorder(color: const Color(0xFFF27D3B), width: 8),
    MBBorder(color: const Color(0xFFF2A83A), width: 12),
    MBBorder(color: const Color(0xFFF8C43F), width: 16),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFF4B3D2F),
    child: const Icon(
      Icons.thumb_up,
      color: Color(0xFFCEC1B6),
    ),
  ),
);
```

### Circle with custom width borders:

<img src="https://github.com/benjamin-otto/multi_border/blob/main/screenshots/customBordersCircle.png?raw=true" alt="Custom Borders Circle" width="150"/>

```dart
MultiBorder(
  shape: BoxShape.circle,
  borders: [
    MBBorder(color: const Color(0xFFF14A42), width: 4),
    MBBorder(color: const Color(0xFFF27D3B), width: 8),
    MBBorder(color: const Color(0xFFF2A83A), width: 12),
    MBBorder(color: const Color(0xFFF8C43F), width: 16),
  ],
  child: Container(
    width: 100,
    height: 100,
    color: const Color(0xFF4B3D2F),
    child: const Icon(
      Icons.thumb_up,
      color: Color(0xFFCEC1B6),
    ),
  ),
);
```