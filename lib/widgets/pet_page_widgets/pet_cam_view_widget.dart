import 'package:flutter/material.dart';

class PetCamViewWidget extends StatefulWidget {
  const PetCamViewWidget({super.key});

  @override
  State<PetCamViewWidget> createState() => _PetCamViewWidgetState();
}

class _PetCamViewWidgetState extends State<PetCamViewWidget> {
  final List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      padding: const EdgeInsets.fromLTRB(16, 5, 16, 15),
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/cat_image.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Stack(
        children: [
          topButtonsWidget(),
          Positioned(bottom: 70, right: 0, child: cameraStatusWidget()),
          // Spacer(),
          bottomRowIcons(),
          const SizedBox(height: 10)
        ],
      ),
    );
  }

  Widget bottomRowIcons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          iconContainer(const Icon(
            Icons.play_arrow_rounded,
            color: Colors.white,
          )),
          iconContainer(
              const Icon(Icons.volume_up_outlined, color: Colors.white)),
          const Spacer(),
          iconContainer(
              const Icon(Icons.fullscreen_rounded, color: Colors.white)),
        ],
      ),
    );
  }

  Widget topButtonsWidget() {
    return Align(
      alignment: Alignment.topRight,
      child: ToggleButtons(
        isSelected: _selections,
        borderColor: Colors.transparent,
        onPressed: (int index) {},
        children: <Widget>[
          toggleButtonContainer('Cam 1', isEnabled: true),
          toggleButtonContainer('Cam 2'),
          toggleButtonContainer('Cam 3')
        ],
      ),
    );
  }

  Widget toggleButtonContainer(String text, {bool isEnabled = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border:
              Border.all(color: isEnabled ? Colors.transparent : Colors.white),
          color: isEnabled ? Colors.white : Colors.white10,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Text(
        text,
        style: TextStyle(color: isEnabled ? Colors.black : Colors.black87),
      ),
    );
  }

  Widget cameraStatusWidget() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dobby',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 2),
              Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(
                  Icons.circle,
                  color: Colors.lightGreenAccent,
                  size: 8,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Feel Good',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '90%',
                  style: TextStyle(color: Colors.grey),
                )
              ])
            ]));
  }

  Widget iconContainer(Widget childIcon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: childIcon,
    );
  }
}
