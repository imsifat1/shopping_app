import '../localization/localization_constrants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreference {

  Future<SharedPreferences>? _prefs;

  static const String LANGUAGE_CODE = "buecy6r54";
  static const String CURRENT_USER = "m8x37489b";

  MySharedPreference() {
    _prefs = SharedPreferences.getInstance();
  }


  Future<Locale> saveLanguageCode(String languageCode) async {

    final SharedPreferences? prefs = await _prefs;
    await prefs?.setString(LANGUAGE_CODE, languageCode);

    return getLocale(languageCode);
  }


  Future<Locale> getLanguageCode() async {

    final SharedPreferences? prefs = await _prefs;
    String languageCode = prefs?.getString(LANGUAGE_CODE) ?? ENGLISH;

    return getLocale(languageCode);
  }


  Future<Set<String>?> getAllKeys() async {

    final SharedPreferences? prefs = await _prefs;
    return prefs?.getKeys();
  }


  Future<Future<bool>?> clearAllData() async {

    final SharedPreferences? prefs = await _prefs;
    return prefs?.clear();
  }


  Future remove(String key) async {

    final SharedPreferences? prefs = await _prefs;

    if(prefs!.containsKey(key)) {
      await prefs.remove(key);
    }
  }
}