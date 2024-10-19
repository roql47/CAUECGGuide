import 'package:flutter/material.dart';
import 'dart:math'; // Random 클래스 사용

class FullScreenImage extends StatefulWidget {
  final String imageAssetPath;

  FullScreenImage({required this.imageAssetPath});

  @override
  _FullScreenImageState createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  final double rotationAngle = 90; // 초기 회전 각도 (90도)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 전체 화면 배경을 검은색으로 설정
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context); // 이미지 클릭 시 이전 화면으로 돌아감
        },
        child: InteractiveViewer(
          panEnabled: true, // 드래그 가능
          scaleEnabled: true, // 확대/축소 가능
          minScale: 1.0, // 최소 배율
          maxScale: 4.0, // 최대 배율
          child: Center(
            child: Hero(
              tag: widget.imageAssetPath, // Hero 애니메이션을 위한 태그
              child: Transform.rotate(
                angle: rotationAngle * (pi / 180), // 90도로 회전
                child: Image.asset(
                  widget.imageAssetPath,
                  fit: BoxFit.contain, // 이미지가 화면에 맞게 조정됨
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey,
                      child: Center(
                        child: Text(
                          'Image not found',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
