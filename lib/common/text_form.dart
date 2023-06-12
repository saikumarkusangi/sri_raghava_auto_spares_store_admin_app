import 'package:flutter/material.dart';

class CustomTextFiled extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
   bool isPass;
  CustomTextFiled(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.isPass});

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: TextFormField(
          key: _formKey,
          style: const TextStyle(fontSize: 22),
          controller: widget.controller,
          obscureText: widget.isPass,
          decoration: InputDecoration(
            suffixIcon:widget.hintText == 'Enter password'
                ? widget.isPass
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            widget.isPass = !widget.isPass;
                          });
                        },
                        icon: const Icon(Icons.visibility_off))
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            widget.isPass = !widget.isPass;
                          });
                        },
                        icon: const Icon(Icons.visibility))
                : null,
            prefixIcon: widget.hintText == 'Enter password'
                ? const Icon(Icons.lock)
                : const Icon(Icons.person),
            label: Text(widget.hintText),
            hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}
