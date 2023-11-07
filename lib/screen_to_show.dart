import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Map> screenToShow( BuildContext context)async

{
   final Future<SharedPreferences> preference = SharedPreferences.getInstance();
    final SharedPreferences prefs = await preference;

String? screenToShow=prefs.getString("")??"onBoarding";

return {"screenToShow":screenToShow};


}