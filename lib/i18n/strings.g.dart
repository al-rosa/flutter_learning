/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 32 (16 per locale)
///
/// Built on 2023-10-26 at 02:33 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ja;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ja) // set locale
/// - Locale locale = AppLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ja) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsJa> {
	ja(languageCode: 'ja', build: _StringsJa.build),
	en(languageCode: 'en', build: _StringsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsJa> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsJa get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of i18n).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = i18n.someKey.anotherKey;
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
_StringsJa get i18n => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final i18n = Translations.of(context); // Get i18n variable.
/// String a = i18n.someKey.anotherKey; // Use i18n variable.
/// String b = i18n['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsJa of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsJa>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsJa> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsJa> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsJa>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.i18n.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsJa get i18n => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsJa> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsJa> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _StringsJa implements BaseTranslations<AppLocale, _StringsJa> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsJa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, _StringsJa> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsJa _root = this; // ignore: unused_field

	// Translations
	late final _StringsStringsJa strings = _StringsStringsJa._(_root);
}

// Path: strings
class _StringsStringsJa {
	_StringsStringsJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
	late final _StringsStringsMainScreenJa mainScreen = _StringsStringsMainScreenJa._(_root);
	Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
	};
	List<String> get evaluation => [
		'大変良い',
		'良い',
		'普通',
		'悪い',
		'大変悪い',
	];
	late final _StringsStringsGeoTableJa geoTable = _StringsStringsGeoTableJa._(_root);
}

// Path: strings.mainScreen
class _StringsStringsMainScreenJa {
	_StringsStringsMainScreenJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
	String get title => 'タイトル';
	String get signIn => '新規登録';
	String get signOut => 'ログアウト';
}

// Path: strings.geoTable
class _StringsStringsGeoTableJa {
	_StringsStringsGeoTableJa._(this._root);

	final _StringsJa _root; // ignore: unused_field

	// Translations
	String get title => '国と首都';
	String get country => '国';
	String get capital => '首都';
	Map<String, String> get nationCityPairs => {
		'アメリカ': 'ワシントン D.C.',
		'日本': '東京',
		'フランス': 'パリ',
	};
}

// Path: <root>
class _StringsEn implements _StringsJa {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsJa> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsStringsEn strings = _StringsStringsEn._(_root);
}

// Path: strings
class _StringsStringsEn implements _StringsStringsJa {
	_StringsStringsEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override late final _StringsStringsMainScreenEn mainScreen = _StringsStringsMainScreenEn._(_root);
	@override Map<String, String> get locales => {
		'en': 'en',
		'ja': 'ja',
	};
	@override List<String> get evaluation => [
		'Excellent',
		'Good',
		'Fair',
		'Poor',
		'Very Poor',
	];
	@override late final _StringsStringsGeoTableEn geoTable = _StringsStringsGeoTableEn._(_root);
}

// Path: strings.mainScreen
class _StringsStringsMainScreenEn implements _StringsStringsMainScreenJa {
	_StringsStringsMainScreenEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'title';
	@override String get signIn => 'sign in';
	@override String get signOut => 'sign out';
}

// Path: strings.geoTable
class _StringsStringsGeoTableEn implements _StringsStringsGeoTableJa {
	_StringsStringsGeoTableEn._(this._root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nation and City';
	@override String get country => 'country';
	@override String get capital => 'capital';
	@override Map<String, String> get nationCityPairs => {
		'USA': 'Washington, D.C.',
		'Japan': 'Tokyo',
		'France': 'Paris',
	};
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.mainScreen.title': return 'タイトル';
			case 'strings.mainScreen.signIn': return '新規登録';
			case 'strings.mainScreen.signOut': return 'ログアウト';
			case 'strings.locales.en': return '英語';
			case 'strings.locales.ja': return '日本語';
			case 'strings.evaluation.0': return '大変良い';
			case 'strings.evaluation.1': return '良い';
			case 'strings.evaluation.2': return '普通';
			case 'strings.evaluation.3': return '悪い';
			case 'strings.evaluation.4': return '大変悪い';
			case 'strings.geoTable.title': return '国と首都';
			case 'strings.geoTable.country': return '国';
			case 'strings.geoTable.capital': return '首都';
			case 'strings.geoTable.nationCityPairs.アメリカ': return 'ワシントン D.C.';
			case 'strings.geoTable.nationCityPairs.日本': return '東京';
			case 'strings.geoTable.nationCityPairs.フランス': return 'パリ';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.mainScreen.title': return 'title';
			case 'strings.mainScreen.signIn': return 'sign in';
			case 'strings.mainScreen.signOut': return 'sign out';
			case 'strings.locales.en': return 'en';
			case 'strings.locales.ja': return 'ja';
			case 'strings.evaluation.0': return 'Excellent';
			case 'strings.evaluation.1': return 'Good';
			case 'strings.evaluation.2': return 'Fair';
			case 'strings.evaluation.3': return 'Poor';
			case 'strings.evaluation.4': return 'Very Poor';
			case 'strings.geoTable.title': return 'Nation and City';
			case 'strings.geoTable.country': return 'country';
			case 'strings.geoTable.capital': return 'capital';
			case 'strings.geoTable.nationCityPairs.USA': return 'Washington, D.C.';
			case 'strings.geoTable.nationCityPairs.Japan': return 'Tokyo';
			case 'strings.geoTable.nationCityPairs.France': return 'Paris';
			default: return null;
		}
	}
}
