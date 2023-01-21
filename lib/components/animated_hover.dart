import 'package:flutter/material.dart';

class AnimatedHover extends StatefulWidget {
  const AnimatedHover({
    super.key,
    required this.child,
    this.size = const Size(440, 440),
    this.hoverColor = const Color(0xfffbe851),
    this.bgcolor = const Color(0xffe9eff3),
    this.offset = const Offset(8, -8),
    this.curve = Curves.easeOutBack,
    this.duration = const Duration(milliseconds: 400),
    this.border = const Border(),
  });

  final Widget child;
  final Size size;
  final Color hoverColor, bgcolor;
  final Offset offset;
  final Curve curve;
  final Duration duration;
  final Border border;

  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        AnimatedPositioned(
          duration: widget.duration,
          curve: widget.curve,
          top: isHover ? widget.offset.dy : 0,
          right: isHover ? widget.offset.dx : 0,
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {},
            onHover: (value) {
              setState(() {
                isHover = value;
              });
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: widget.size.height,
              width: widget.size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: widget.border,
                color: isHover ? widget.hoverColor : widget.bgcolor,
              ),
              child: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}
