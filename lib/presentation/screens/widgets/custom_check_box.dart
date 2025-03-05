import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Color? boxColor;
  final Color? svgIconColor;

  const CustomCheckbox({
    super.key,
    required this.isChecked,
    required this.onChanged,
    this.boxColor,
    this.svgIconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: Container(
        height: 20,
        width: 20,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: boxColor ??
              (isChecked ? CustomColors.primary : Colors.transparent),
          border: Border.all(
            color: CustomColors.primary,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: isChecked
            ? SvgPicture.asset(
                MediaConstants.checkBoxIcon,
                width: 12.0,
                height: 12.0,
                colorFilter: ColorFilter.mode(
                  svgIconColor ?? CustomColors.white,
                  BlendMode.srcIn,
                ),
              )
            : null,
      ),
    );
  }
}

class CustomCheckBoxWithText extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;
  final String label;
  const CustomCheckBoxWithText({
    super.key,
    required this.initialValue,
    required this.onChanged,
    required this.label,
  });

  @override
  State<CustomCheckBoxWithText> createState() => _CustomCheckBoxWithTextState();
}

class _CustomCheckBoxWithTextState extends State<CustomCheckBoxWithText> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  void _toggleCheckbox() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCheckbox,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCheckbox(
            isChecked: widget.initialValue,
            onChanged: (value) {
              _toggleCheckbox();
            },
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              widget.label,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: context.font.large.rf(context),
                    letterSpacing: 0.37,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
