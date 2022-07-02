import 'package:flutter/material.dart';
import 'package:pro_konnect/utils/dimensions.dart';

class CirleAvatarProfile extends StatelessWidget {
  final String avatarTitle;
  final ImageProvider? imagePath;
  final VoidCallback? imagepick;
  final Widget? clipImage;
  const CirleAvatarProfile(
      {Key? key,
      this.avatarTitle = "",
      this.imagePath,
      this.imagepick,
      this.clipImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: Dimensions.height150,
          width: Dimensions.width150,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(blurRadius: 2, color: Colors.blue)],
                    borderRadius: BorderRadius.circular(81),
                    border: Border.all(color: Colors.blue, width: 2)),
                child:
                    CircleAvatar(backgroundImage: imagePath, child: clipImage),
              ),
              Positioned(
                  top: -20,
                  right: 0,
                  child: RawMaterialButton(
                    onPressed: imagepick,
                    child: Icon(Icons.edit),
                    shape: CircleBorder(),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Text(avatarTitle)
      ],
    );
  }
}
