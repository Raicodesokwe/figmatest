import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'leadingarrow.dart';

class StudyMaterial extends StatefulWidget {
  StudyMaterial({Key? key}) : super(key: key);

  @override
  State<StudyMaterial> createState() => _StudyMaterialState();
}

class _StudyMaterialState extends State<StudyMaterial> {
  String? selectedValue;
  String selected = 'fast';
  List<String> items = [
    'Study materials',
    'Test',
  ];

  final List<String> genderItems = [
    'chemistry',
    'biology',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: LeadingArrow(size: size),
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Icon(
                      Icons.book,
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'Syllabus',
                        style: TextStyle(
                          fontFamily: 'Gilroy-Semibold',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.grey.withOpacity(0.3)),
                            child: Row(
                              children: [
                                item == 'Test'
                                    ? const Icon(
                                        FontAwesomeIcons.book,
                                        size: 15,
                                        color: Colors.black,
                                      )
                                    : const Icon(
                                        Icons.text_snippet_outlined,
                                        size: 15,
                                        color: Colors.black,
                                      ),
                                const Spacer(),
                                Text(
                                  item,
                                  style: const TextStyle(
                                    fontFamily: 'Gilroy-Semibold',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.white,
                buttonHeight: 50,
                buttonWidth: 160,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.blue,
                ),
                buttonElevation: 2,
                itemHeight: 40,
                itemWidth: 200,
                itemPadding:
                    const EdgeInsets.only(left: 14, right: 14, bottom: 14),
                dropdownMaxHeight: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white,
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              const Text(
                'Figma course',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue),
                child: DropdownButtonFormField2(
                  decoration: InputDecoration(
                    //Add isDense true and zero Padding.
                    //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                    isDense: true,
                    contentPadding: EdgeInsets.zero,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    //Add more decoration as you want here
                    //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Math',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  dropdownElevation: 0,
                  iconSize: 30,
                  buttonHeight: size.height * 0.09,
                  buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                  dropdownDecoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                  },
                  onChanged: (value) {
                    //Do something when changing the item if you want.
                    setState(() {
                      selected = 'second';
                    });
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                ),
              ),
              SizedBox(
                height: size.height * 0.13,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.2)),
                height: size.height * 0.1,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: const [
                      Text(
                        'Topic 01',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 34,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.055,
              ),
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: size.height * 0.11,
                        ),
                        const Text(
                          'Teacher: Hossein Salim Pour',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.withOpacity(0.2)),
                    height: 79,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: const [
                          Text(
                            'Topic 02',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_drop_down,
                            size: 34,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: [
              const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  )),
              const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.text_snippet_outlined,
                    color: Colors.grey,
                  )),
              const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.wallet_membership,
                    color: Colors.grey,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    FontAwesomeIcons.graduationCap,
                    color: selected == 'second' ? Colors.black : Colors.grey,
                  )),
              const BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    FontAwesomeIcons.user,
                    color: Colors.grey,
                  )),
            ]),
      ),
    );
  }
}
