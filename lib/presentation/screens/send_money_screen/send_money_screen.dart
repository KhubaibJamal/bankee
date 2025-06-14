import 'package:bankee/presentation/core/constants/constants.dart';
import 'package:bankee/presentation/core/constants/media_constants.dart';
import 'package:bankee/presentation/core/theme/theme.dart';
import 'package:bankee/presentation/screens/send_money_screen/widgets/send_money_card_widget.dart';
import 'package:bankee/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bankee/presentation/screens/widgets/custom_svg.dart';
import 'package:bankee/presentation/screens/widgets/custom_text_form_field.dart';
import 'package:bankee/presentation/utils/responsiveSize.dart';
import 'package:flutter/material.dart';

class SendMoneyScreen extends StatefulWidget {
  const SendMoneyScreen({super.key});

  @override
  State<SendMoneyScreen> createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  final TextEditingController _searchController = TextEditingController();
  int selectedIndex = 0;
  String selectedTab = "All";
  final bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Constants.sendMoney,
        showBackButton: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: CustomColors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFF2F2F5),
                  width: 2,
                ),
              ),
              child: Center(
                child: CustomSvg(
                  assetName: MediaConstants.add,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              radius: 8,
              hintText: Constants.searchContacts,
              controller: _searchController,
            ),
            SizedBox(height: 10.rh(context)),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFFE2E0E4),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  Constants.tabs.length,
                  (index) {
                    final bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                          selectedTab = Constants.tabs[index];
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? CustomColors.textFieldFillColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          Constants.tabs[index],
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    color: isSelected
                                        ? CustomColors.primaryTextColor
                                        : Colors.grey,
                                  ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10.rh(context)),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return SendMoneyCardWidget(
                    isFavorite:
                        index == 2 || index == 5 || index == 7 ? true : false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
