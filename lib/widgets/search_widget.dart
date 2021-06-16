import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
    this.controller,
    this.prefix,
    this.onTap,
    this.enabled = true,
    this.readOnly = false,
  }) : super(key: key);

  final TextEditingController controller;
  final Widget prefix;
  final VoidCallback onTap;
  final bool enabled;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefix,
          SizedBox(width: 8),
          Flexible(
            child: TextField(
              readOnly: readOnly,
              enabled: enabled,
              onTap: onTap,
              decoration: InputDecoration.collapsed(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
