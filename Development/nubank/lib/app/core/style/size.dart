import 'package:flutter/material.dart';

double width(BuildContext context, double value) => MediaQuery.of(context).size.width * value;

double height(BuildContext context, double value) => MediaQuery.of(context).size.height * value;

double heightAll(context) => MediaQuery.of(context).size.height;
double widthAll(context) => MediaQuery.of(context).size.width;

double statusBarHeight(context) => MediaQuery.of(context).padding.top;
