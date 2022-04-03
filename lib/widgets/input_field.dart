import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({
    Key? key,
    required this.label,
    this.placeholder,
    this.password = false,
    this.keyboard,
  }) : super(key: key);
  final String label;
  final String? placeholder;
  final bool password;
  final TextInputType? keyboard;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool obs=false;
  @override
  void initState() {
    super.initState();
    setState(() {
      obs = widget.password;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: const TextStyle(
              color: Color(0xff1A1A1A),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: obs,
            keyboardType: widget.keyboard,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              suffixIcon: !widget.password
                  ? null
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          obs = !obs;
                        });
                      },
                      icon: Icon(obs
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
