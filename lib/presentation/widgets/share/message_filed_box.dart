import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final focusNode = FocusNode();

    final textController = TextEditingController();

    return TextFormField(
      controller: textController,
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      decoration: InputDecoration(
          hintText: "end your message with ?",
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          filled: true,
          suffixIcon: IconButton(
              icon: const Icon(Icons.send_outlined),
              onPressed: () {
                final textValue = textController.value.text;
                print("el valor es : $textValue");
                textController.clear();
              })),
      onFieldSubmitted: (value) {
        print("texto : $value");
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
