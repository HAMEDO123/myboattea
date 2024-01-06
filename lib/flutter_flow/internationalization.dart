import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar', 'bn'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
    String? bnText = '',
  }) =>
      [enText, arText, bnText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Auth2
  {
    '206fduy6': {
      'en': 'welcome to MyBoat team',
      'ar': 'مرحبا بكم في MyBoat',
      'bn': 'মাইবোটে স্বাগতম',
    },
    'hfa8z14k': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
      'bn': 'হিসাব তৈরি কর',
    },
    'k9ak53lt': {
      'en': 'Email',
      'ar': 'رقم القارب',
      'bn': 'নৌকা নম্বর',
    },
    '5fo709ac': {
      'en': 'Password',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'p9shv1dr': {
      'en': 'Create',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    '9p1otym5': {
      'en': 'Log In',
      'ar': 'تسجيل الدخول',
      'bn': 'প্রবেশ করুন',
    },
    'ouoch0dk': {
      'en': 'Welcome Back',
      'ar': 'مرحبًا بعودتك',
      'bn': 'ফিরে আসার জন্য স্বাগতম',
    },
    'l8ph6nsb': {
      'en': 'Email',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'iq2g2p2k': {
      'en': 'Password',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'qr9ahx3a': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'bn': 'পাসওয়ার্ড ভুলে গেছেন?',
    },
    'srb8df0e': {
      'en': 'Sign in',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    '18pzvo1p': {
      'en': 'Home',
      'ar': 'بيت',
      'bn': 'বাড়ি',
    },
  },
  // home
  {
    'hwtpuxpl': {
      'en': 'Welcome, Hamed',
      'ar': 'مرحبًا حامد',
      'bn': 'স্বাগতম, হামেদ',
    },
    'ciyssquz': {
      'en': 'My boats',
      'ar': 'العقارات الحديثة',
      'bn': 'সাম্প্রতিক বৈশিষ্ট্য',
    },
    'agzkq031': {
      'en': 'available',
      'ar': '',
      'bn': '',
    },
    '3f0pu5hf': {
      'en': 'Home',
      'ar': 'بيت',
      'bn': 'বাড়ি',
    },
  },
  // Profile06
  {
    '34v0fcic': {
      'en': 'Name :',
      'ar': '',
      'bn': '',
    },
    'wnhpixmr': {
      'en': 'Hamed Samir',
      'ar': '',
      'bn': '',
    },
    's0lu3k89': {
      'en': 'Email :',
      'ar': '',
      'bn': '',
    },
    'pa6jp2jk': {
      'en': 'ID :',
      'ar': '',
      'bn': '',
    },
    'eyss1kpl': {
      'en': 'MyBoat Team \n',
      'ar': '',
      'bn': '',
    },
    'b98qot5g': {
      'en': 'membership\n',
      'ar': '',
      'bn': '',
    },
    'k81a0b7v': {
      'en': 'General',
      'ar': 'عام',
      'bn': 'সাধারণ',
    },
    'ig1rku7o': {
      'en': 'My account',
      'ar': 'حسابي',
      'bn': 'আমার অ্যাকাউন্ট',
    },
    'c8hqovm0': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
      'bn': 'জীবন বৃত্তান্ত সম্পাদনা',
    },
    '2ju0ls5v': {
      'en': 'Change password',
      'ar': 'تغيير كلمة المرور',
      'bn': 'পাসওয়ার্ড পরিবর্তন করুন',
    },
    'z0du4kjj': {
      'en': 'log out',
      'ar': 'تسجيل خروج',
      'bn': 'প্রস্থান',
    },
    'ybpn68kk': {
      'en': 'Business',
      'ar': 'عمل',
      'bn': 'ব্যবসা',
    },
    '1mzlj3p7': {
      'en': 'Trips history',
      'ar': 'كن جزءًا من فريق MyBoat',
      'bn': 'মাইবোট টিমের একটি অংশ হয়ে উঠুন',
    },
    'nbeikt9a': {
      'en': 'Support',
      'ar': 'يدعم',
      'bn': 'সমর্থন',
    },
    'ls7uq16q': {
      'en': 'Contact Us',
      'ar': 'اتصل بنا',
      'bn': 'যোগাযোগ করুন',
    },
    'cd4gutcg': {
      'en': 'Terms of Service',
      'ar': 'شروط الخدمة',
      'bn': 'সেবা পাবার শর্ত',
    },
    'ra0jgcdw': {
      'en': 'Settings',
      'ar': 'إعدادات',
      'bn': 'সেটিংস',
    },
    'urwtbw4z': {
      'en': 'settings',
      'ar': 'إعدادات',
      'bn': 'সেটিংস',
    },
  },
  // Boatdetails
  {
    'bx8mv5tc': {
      'en': 'Add your boat and start earning money.',
      'ar': 'أضف قاربك وابدأ في كسب المال.',
      'bn': 'আপনার নৌকা যোগ করুন এবং অর্থ উপার্জন শুরু করুন.',
    },
    '8v5llm49': {
      'en': 'Boat name',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'h4e672xh': {
      'en': 'capacity',
      'ar': 'ركاب',
      'bn': 'যাত্রীদের',
    },
    'zbejr0o9': {
      'en': 'Boat location',
      'ar': 'موقع القارب',
      'bn': 'নৌকা অবস্থান',
    },
    '0il06692': {
      'en': 'Boat type',
      'ar': 'نوع القارب',
      'bn': 'নৌকার ধরন',
    },
    'q18bhvwn': {
      'en': 'Boat details',
      'ar': 'تفاصيل القارب',
      'bn': 'নৌকার বিবরণ',
    },
    'l8oomh93': {
      'en': 'Track',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    '8c4n5jkn': {
      'en': 'From',
      'ar': 'من',
      'bn': 'থেকে',
    },
    'xc9f2fox': {
      'en': 'The boat includes :',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    'o7x3jg7m': {
      'en': 'Drinks',
      'ar': '',
      'bn': '',
    },
    'ft8ihh54': {
      'en': 'Kitchen',
      'ar': '',
      'bn': '',
    },
    'mlsav5e6': {
      'en': 'Bathroom',
      'ar': '',
      'bn': '',
    },
    'vn5uevvk': {
      'en': 'Meal',
      'ar': '',
      'bn': '',
    },
    'nveynsrz': {
      'en': 'water games',
      'ar': '',
      'bn': '',
    },
    '73at30c8': {
      'en': 'AC',
      'ar': '',
      'bn': '',
    },
    '5pfm3cg1': {
      'en': 'fishing gear',
      'ar': '',
      'bn': '',
    },
    'w6o80kk0': {
      'en': 'Snaks',
      'ar': '',
      'bn': '',
    },
    'gnoy14s3': {
      'en': 'diving gear',
      'ar': '',
      'bn': '',
    },
    'pzncd33d': {
      'en': 'Ice box',
      'ar': '',
      'bn': '',
    },
    '7rxj0yyi': {
      'en': 'Water',
      'ar': '',
      'bn': '',
    },
    '4xnod2kw': {
      'en': 'Other',
      'ar': 'تفاصيل القارب',
      'bn': 'নৌকার বিবরণ',
    },
    'u9s8rm21': {
      'en': 'Add photos to your boat',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    'kqf0anad': {
      'en': 'Add your boat',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    'frd5ovw4': {
      'en': 'MyBoat team',
      'ar': 'فريق ماي بوت',
      'bn': 'মাইবোট দল',
    },
  },
  // Activeties
  {
    'f6vkiv9m': {
      'en': 'Search listings...',
      'ar': 'قوائم البحث...',
      'bn': 'তালিকা অনুসন্ধান করুন...',
    },
    'ovjskqjj': {
      'en': 'Offers',
      'ar': 'عروض',
      'bn': 'অফার',
    },
    '9sc51h6b': {
      'en': 'Trips',
      'ar': 'رحلات',
      'bn': 'ট্রিপ',
    },
    '9xyewd1t': {
      'en': 'Activites',
      'ar': 'الأنشطة',
      'bn': 'কার্যক্রম',
    },
    'lat95tfw': {
      'en': 'Activites',
      'ar': 'الأنشطة',
      'bn': 'কার্যক্রম',
    },
    'ozu0kafd': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    've4qk1c2': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    '88a8h8b5': {
      'en': 'Jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'lbalj874': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'buasyy20': {
      'en': '\$30',
      'ar': '30 دولارًا',
      'bn': '\$30',
    },
    'mngm9x0h': {
      'en': ' /hour',
      'ar': '/ساعة',
      'bn': '/ঘন্টা',
    },
    '99rcqu07': {
      'en': 'jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'z7k4xa6s': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    '2kf4w6r5': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    '0vvbwdfy': {
      'en': 'KAEC',
      'ar': 'مدينة الملك عبدالله الاقتصادية',
      'bn': 'KAEC',
    },
    'g2rdljgr': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'l0x6flen': {
      'en': '\$250',
      'ar': '250 دولارًا',
      'bn': '\$250',
    },
    'ai0jkzag': {
      'en': '/ trip',
      'ar': '/ رحلة',
      'bn': '/ ট্রিপ',
    },
    'rmjbfgru': {
      'en': 'KAEC',
      'ar': 'مدينة الملك عبدالله الاقتصادية',
      'bn': 'KAEC',
    },
    'ovy0q13h': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    '5dxru6uk': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    'rprzuf4b': {
      'en': 'Jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'uk9eo5sg': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'gw0be4gd': {
      'en': '\$30',
      'ar': '30 دولارًا',
      'bn': '\$30',
    },
    'v7xso6yb': {
      'en': ' /hour',
      'ar': '/ساعة',
      'bn': '/ঘন্টা',
    },
    'jb8ijqyr': {
      'en': 'jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'mf2k6q76': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    '1jujkkg2': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    '7fjy33g8': {
      'en': 'Jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'v14yftih': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'd6xs41zy': {
      'en': '\$30',
      'ar': '30 دولارًا',
      'bn': '\$30',
    },
    'vn2420dz': {
      'en': ' /hour',
      'ar': '/ساعة',
      'bn': '/ঘন্টা',
    },
    '5uu6zg9d': {
      'en': 'jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'pavinl9l': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    'kn2832i3': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    'iajaxatn': {
      'en': 'Jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    '77w0hpn4': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'trzioaqk': {
      'en': '\$30',
      'ar': '30 دولارًا',
      'bn': '\$30',
    },
    'tevtq8zl': {
      'en': ' /hour',
      'ar': '/ساعة',
      'bn': '/ঘন্টা',
    },
    'esgvqk6a': {
      'en': 'jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'tl9l6lqj': {
      'en': 'available',
      'ar': 'متاح',
      'bn': 'উপলব্ধ',
    },
    'ql3fo2gf': {
      'en': 'thunder boat',
      'ar': 'قارب الرعد',
      'bn': 'বজ্র নৌকা',
    },
    'a5i0o6xr': {
      'en': 'Jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'bjmg0o5g': {
      'en': '5',
      'ar': '5',
      'bn': '5',
    },
    'vbja1xb6': {
      'en': '\$30',
      'ar': '30 دولارًا',
      'bn': '\$30',
    },
    '169vx180': {
      'en': ' /hour',
      'ar': '/ساعة',
      'bn': '/ঘন্টা',
    },
    'ofbulnhv': {
      'en': 'jeddah',
      'ar': 'جدة',
      'bn': 'জেদ্দা',
    },
    'tjsd4waf': {
      'en': 'Home',
      'ar': 'بيت',
      'bn': 'বাড়ি',
    },
  },
  // Ownerdetails
  {
    'msfr3w2w': {
      'en': 'Add your boat and start earning money.',
      'ar': 'أضف قاربك وابدأ في كسب المال.',
      'bn': 'আপনার নৌকা যোগ করুন এবং অর্থ উপার্জন শুরু করুন.',
    },
    'o9jvnelw': {
      'en': 'Boat owner details :',
      'ar': 'أضف قاربك وابدأ في كسب المال.',
      'bn': 'আপনার নৌকা যোগ করুন এবং অর্থ উপার্জন শুরু করুন.',
    },
    '8u8i8ltn': {
      'en': 'Name',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    '86rp9xri': {
      'en': 'Nationality',
      'ar': 'نوع القارب',
      'bn': 'নৌকার ধরন',
    },
    'kqnfldhd': {
      'en': 'Address',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    '8b3w677d': {
      'en': 'Bank information',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    '4gl35crt': {
      'en': 'Bank name',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'c0tu4igk': {
      'en': 'Bank account number',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'uawn669q': {
      'en': 'IBAN',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'pi1kajdp': {
      'en': 'Save',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    'lhzkfj07': {
      'en': 'MyBoat team',
      'ar': 'فريق ماي بوت',
      'bn': 'মাইবোট দল',
    },
  },
  // boatdeteailedit
  {
    'wdee1sus': {
      'en': 'Your boat :',
      'ar': '',
      'bn': '',
    },
    'h6mflslu': {
      'en': 'Available',
      'ar': '',
      'bn': '',
    },
    'j3d5eti1': {
      'en': 'Boat name',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'euhf1zlq': {
      'en': 'Boat number',
      'ar': 'رقم القارب',
      'bn': 'নৌকা নম্বর',
    },
    '6dwr106p': {
      'en': 'Passengers',
      'ar': 'ركاب',
      'bn': 'যাত্রীদের',
    },
    'homcdwde': {
      'en': 'Boat location',
      'ar': 'موقع القارب',
      'bn': 'নৌকা অবস্থান',
    },
    'b5o8ktzy': {
      'en': 'Boat type',
      'ar': 'نوع القارب',
      'bn': 'নৌকার ধরন',
    },
    'wb6lwwc0': {
      'en': 'Boat details',
      'ar': 'تفاصيل القارب',
      'bn': 'নৌকার বিবরণ',
    },
    'z4dehny6': {
      'en': 'Track',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    'u9arx2vc': {
      'en': 'From',
      'ar': 'من',
      'bn': 'থেকে',
    },
    '99yoteuj': {
      'en': 'To',
      'ar': 'ل',
      'bn': 'প্রতি',
    },
    'y6643l9k': {
      'en': 'The boat includes :',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    'pjn10pxk': {
      'en': 'Drinks',
      'ar': '',
      'bn': '',
    },
    'igbr4jvk': {
      'en': 'Kitchen',
      'ar': '',
      'bn': '',
    },
    'z84jnskj': {
      'en': 'Bathroom',
      'ar': '',
      'bn': '',
    },
    '388ovesd': {
      'en': 'Meal',
      'ar': '',
      'bn': '',
    },
    't7ywayeb': {
      'en': 'water games',
      'ar': '',
      'bn': '',
    },
    '8vkrssrx': {
      'en': 'AC',
      'ar': '',
      'bn': '',
    },
    'kncypx3d': {
      'en': 'fishing gear',
      'ar': '',
      'bn': '',
    },
    '7i3jymy7': {
      'en': 'Snaks',
      'ar': '',
      'bn': '',
    },
    '7xcl24jc': {
      'en': 'diving gear',
      'ar': '',
      'bn': '',
    },
    '1ntx0i2c': {
      'en': 'Snaks',
      'ar': '',
      'bn': '',
    },
    'c0s7tx8p': {
      'en': 'Ice box',
      'ar': '',
      'bn': '',
    },
    '6l6xo5yq': {
      'en': 'Water',
      'ar': '',
      'bn': '',
    },
    'id5bvx45': {
      'en': 'Other',
      'ar': 'تفاصيل القارب',
      'bn': 'নৌকার বিবরণ',
    },
    'h9ikixqn': {
      'en': 'Save changes',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    'z2xoyc8j': {
      'en': 'MyBoat team',
      'ar': 'فريق ماي بوت',
      'bn': 'মাইবোট দল',
    },
  },
  // tripdetails
  {
    'mz99jb22': {
      'en': 'Add your boat and start earning money.',
      'ar': 'أضف قاربك وابدأ في كسب المال.',
      'bn': 'আপনার নৌকা যোগ করুন এবং অর্থ উপার্জন শুরু করুন.',
    },
    'lok2cbwj': {
      'en': 'Boat name',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'xquhkpn0': {
      'en': 'capacity',
      'ar': 'ركاب',
      'bn': 'যাত্রীদের',
    },
    'pvtadkil': {
      'en': 'Boat location',
      'ar': 'موقع القارب',
      'bn': 'নৌকা অবস্থান',
    },
    'qmq023kf': {
      'en': 'Trip track',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    'f1d3ns49': {
      'en': 'From  ,To',
      'ar': 'من',
      'bn': 'থেকে',
    },
    's057vufm': {
      'en': 'The boat includes :',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    'l24myb0v': {
      'en': 'Drinks',
      'ar': '',
      'bn': '',
    },
    't8akmqog': {
      'en': 'Kitchen',
      'ar': '',
      'bn': '',
    },
    'xb1xnh8q': {
      'en': 'Bathroom',
      'ar': '',
      'bn': '',
    },
    '87e6od6m': {
      'en': 'Meal',
      'ar': '',
      'bn': '',
    },
    'lewv04h8': {
      'en': 'water games',
      'ar': '',
      'bn': '',
    },
    'q56um7vl': {
      'en': 'AC',
      'ar': '',
      'bn': '',
    },
    'mlsle1sx': {
      'en': 'fishing gear',
      'ar': '',
      'bn': '',
    },
    'wm37dfgj': {
      'en': 'Snaks',
      'ar': '',
      'bn': '',
    },
    'wjapeb3g': {
      'en': 'diving gear',
      'ar': '',
      'bn': '',
    },
    'shfzo14c': {
      'en': 'Ice box',
      'ar': '',
      'bn': '',
    },
    'qytos3n1': {
      'en': 'Water',
      'ar': '',
      'bn': '',
    },
    'ivweul1j': {
      'en': 'Other',
      'ar': 'تفاصيل القارب',
      'bn': 'নৌকার বিবরণ',
    },
    'o1zlwna8': {
      'en': 'Pricing',
      'ar': 'مسار',
      'bn': 'ট্র্যাক',
    },
    '5113pksl': {
      'en': 'Per hour ',
      'ar': '',
      'bn': '',
    },
    '3zezp456': {
      'en': 'price',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    'yj9hh659': {
      'en': 'Per Person ',
      'ar': '',
      'bn': '',
    },
    '5gkqt0gv': {
      'en': 'price',
      'ar': 'اسم القارب',
      'bn': 'নৌকার নাম',
    },
    's7gpea6a': {
      'en': 'Add your trip',
      'ar': 'أضف القارب الخاص بك',
      'bn': 'আপনার নৌকা যোগ করুন',
    },
    'll39rsp3': {
      'en': 'Add trip',
      'ar': '',
      'bn': '',
    },
  },
  // trips
  {
    'yvx0pvv2': {
      'en': 'Welcome, Hamed',
      'ar': 'مرحبًا حامد',
      'bn': 'স্বাগতম, হামেদ',
    },
    'w77v882c': {
      'en': 'My trips',
      'ar': 'العقارات الحديثة',
      'bn': 'সাম্প্রতিক বৈশিষ্ট্য',
    },
    'zoaatstm': {
      'en': 'available',
      'ar': '',
      'bn': '',
    },
    '9u79vx4g': {
      'en': 'Home',
      'ar': 'بيت',
      'bn': 'বাড়ি',
    },
  },
  // activetis
  {
    'ttjdvyis': {
      'en': 'Welcome, Hamed',
      'ar': 'مرحبًا حامد',
      'bn': 'স্বাগতম, হামেদ',
    },
    'jse69gc2': {
      'en': 'My Activeties',
      'ar': 'العقارات الحديثة',
      'bn': 'সাম্প্রতিক বৈশিষ্ট্য',
    },
    'gotqfa8t': {
      'en': 'available',
      'ar': '',
      'bn': '',
    },
    '7v2omep8': {
      'en': 'Home',
      'ar': 'بيت',
      'bn': 'বাড়ি',
    },
  },
  // Miscellaneous
  {
    '8bseucuo': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'ruenn0t4': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'ns3nmqdi': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'gtblrw5v': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'v6z6o2jz': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'a432pqk5': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'm0u175je': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '10drlv04': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'p3p2fl02': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'bsz5wozg': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'hz90kvag': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '0la184rp': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '2uwth827': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'otca3r3m': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'n3stbhfp': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '6caacasf': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'dc65bijp': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'h0vdsx8g': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '4wc8gfo6': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'ywufjkhp': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '58mg02f0': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'uahxcgf5': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'ql88d5ac': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'c6p3z61v': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    'ewu71xb4': {
      'en': '',
      'ar': '',
      'bn': '',
    },
    '6wkltrwm': {
      'en': '',
      'ar': '',
      'bn': '',
    },
  },
].reduce((a, b) => a..addAll(b));
