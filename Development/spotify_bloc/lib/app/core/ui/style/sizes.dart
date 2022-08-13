
import 'package:flutter/cupertino.dart';

double fillHeight(BuildContext context) => MediaQuery.of(context).size.height;
double fillWidth(BuildContext context) => MediaQuery.of(context).size.width;

double height(BuildContext context, double height) => MediaQuery.of(context).size.height * height;
double width(BuildContext context, double width) => MediaQuery.of(context).size.height * width;