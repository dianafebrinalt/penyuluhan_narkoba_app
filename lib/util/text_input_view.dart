import 'package:flutter/material.dart';

class TextInputView extends StatelessWidget {
  final String name;
  final String placeholder;
  final TextEditingController controller;
  final Widget? image;
  final Widget? suffixImage;
  final VoidCallback? suffixTapped;
  final VoidCallback? onEditingComplete;
  final bool? isSecureText;
  final Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final Function(String?)? validator;
  final String? prefixText;
  final String? value;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool isOptional;
  final int? maxLines;
  final int? minLines;
  final bool isCenterText;
  const TextInputView(
      {Key? key,
      this.value,
      this.name = "",
      this.placeholder = "",
      required this.controller,
      this.image,
      this.suffixImage,
      this.onEditingComplete,
      this.suffixTapped,
      this.isSecureText = false,
      this.onSaved,
      this.validator,
      this.keyboardType,
      this.onTap,
      this.prefixText,
      this.onChanged,
      this.isOptional = false,
      this.maxLines,
      this.minLines,
      this.isCenterText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: isCenterText ? Alignment.center : null,
          child: Text(
            name,
            textAlign: isCenterText ? TextAlign.center : null,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            TextFormField(
              controller: controller,
              textAlign: isCenterText ? TextAlign.center : TextAlign.start,
              onTap: onTap,
              maxLines: maxLines,
              minLines: minLines,
              onEditingComplete: onEditingComplete,
              style: const TextStyle(
                fontSize: 15,
                // color: CustomColor.c61867a(),
                // fontWeight: FontWeight.w500
              ),
              obscureText: isSecureText ?? false,
              initialValue: value,
              keyboardType: keyboardType,
              validator: (val) {
                if (isOptional) {
                  if (validator != null) {
                    return validator!(val);
                  } else {
                    return null;
                  }
                }
                if ((val?.length ?? 0) < 2) {
                  return 'Please Insert $name';
                } else if (validator != null) {
                  return validator!(val);
                } else {
                  return null;
                }
              },
              onSaved: (text) {
                if (onSaved != null) onSaved!(text);
              },
              onChanged: onChanged,
              decoration: InputDecoration(
                  prefix: prefixText == null
                      ? (image != null
                          ? Container(
                              width: 40,
                            )
                          : null)
                      : null,
                  prefixStyle: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
                  hintText: placeholder,
                  hintStyle: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),
                  suffix: suffixImage != null
                      ? Container(
                          width: 40,
                        )
                      : null,
                  prefixText: prefixText != null ? "       $prefixText  " : null),
            ),
            image != null
                ? Positioned(
                    top: 17,
                    left: 5,
                    child: image!,
                  )
                : const SizedBox.shrink(),
            suffixImage != null
                ? Positioned(
                    top: 10,
                    right: 5,
                    child: GestureDetector(
                        onTap: () {
                          if (suffixTapped != null) suffixTapped!();
                        },
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: suffixImage,
                          // color: Colors.red,
                        )),
                  )
                : const SizedBox.shrink(),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
