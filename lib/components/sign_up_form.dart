import 'package:flutter/material.dart';

import 'animated_hover.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AnimatedHover(
            hoverColor: Colors.white,
            bgcolor: Colors.white,
            border: Border.all(),
            offset: const Offset(6, -6),
            size: const Size(360, 56),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              child: TextFormField(
                onSaved: (name) {},
                cursorColor: Colors.grey,
                cursorHeight: 22,
                decoration: const InputDecoration(
                  filled: true,
                  hintText: 'Full name',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: AnimatedHover(
              hoverColor: Colors.white,
              bgcolor: Colors.white,
              border: Border.all(),
              offset: const Offset(6, -6),
              size: const Size(360, 56),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                child: TextFormField(
                  cursorColor: Colors.grey,
                  cursorHeight: 22,
                  onSaved: (email) {},
                  decoration: const InputDecoration(
                    filled: true,
                    hintText: 'Enter email',
                  ),
                ),
              ),
            ),
          ),
          AnimatedHover(
            hoverColor: Colors.white,
            bgcolor: Colors.white,
            border: Border.all(),
            offset: const Offset(6, -6),
            size: const Size(360, 56),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              child: TextFormField(
                cursorColor: Colors.grey,
                cursorHeight: 22,
                obscureText: true,
                onSaved: (password) {},
                decoration: const InputDecoration(
                  filled: true,
                  hintText: 'Enter password',
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          AnimatedHover(
            size: const Size(88, 44),
            offset: const Offset(6, -6),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  minimumSize: const Size(88, 48),
                  backgroundColor: const Color(0xff556124),
                  foregroundColor: const Color(0xffd9e18e),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  )),
              child: Text('Sign Up'),
            ),
          )
        ],
      )),
    );
  }
}
