///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsAr = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsHomeAr home = TranslationsHomeAr.internal(_root);
	late final TranslationsNotificationsAr notifications = TranslationsNotificationsAr.internal(_root);
	late final TranslationsProjectsAr projects = TranslationsProjectsAr.internal(_root);
	late final TranslationsProfileAr profile = TranslationsProfileAr.internal(_root);
	late final TranslationsTransferAr transfer = TranslationsTransferAr.internal(_root);
	late final TranslationsMessageTypeAr message_type = TranslationsMessageTypeAr.internal(_root);
	late final TranslationsMessageStatusAr message_status = TranslationsMessageStatusAr.internal(_root);
	late final TranslationsProjectMessagesDAr project_Messages_D = TranslationsProjectMessagesDAr.internal(_root);
	late final TranslationsCommonAr common = TranslationsCommonAr.internal(_root);
	late final TranslationsBalanceCardAr balance_card = TranslationsBalanceCardAr.internal(_root);
	late final TranslationsTransactionDetailsAr transaction_details = TranslationsTransactionDetailsAr.internal(_root);
	late final TranslationsFullTransferDetailsAr full_transfer_details = TranslationsFullTransferDetailsAr.internal(_root);
	late final TranslationsMessageDialogAr message_dialog = TranslationsMessageDialogAr.internal(_root);
	late final TranslationsTransferPageAr transfer_page = TranslationsTransferPageAr.internal(_root);
	late final TranslationsRegisterAr register = TranslationsRegisterAr.internal(_root);
	late final TranslationsLoginAr login = TranslationsLoginAr.internal(_root);
}

// Path: home
class TranslationsHomeAr {
	TranslationsHomeAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'الرئيسية';
	String get hello => 'مرحبًا ';
	String get username => 'محمد شكري';
	String get balance => 'الرصيد';
	String get transfers => 'التحويلات المالية';
	String get view_all => 'عرض الكل';
	String get account_balance => 'رصيد حسابك';
	String get transaction_bexy_title => 'تحويل إلى مشروع Bexy';
	String get transaction_bexy_date => '2024-07-01 12:00';
	String get transaction_bexy_amount => '- 250,000 د.ع';
	String get transaction_alpha_title => 'تحويل إلى مشروع Alpha';
	String get transaction_alpha_date => '2024-07-02 14:30';
	String get transaction_alpha_amount => '- 180,000 د.ع';
	late final TranslationsHomeTransferButtonsAr transfer_buttons = TranslationsHomeTransferButtonsAr.internal(_root);
}

// Path: notifications
class TranslationsNotificationsAr {
	TranslationsNotificationsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'الإشعارات';
	String get empty => 'لا توجد إشعارات حالياً';
	late final TranslationsNotificationsTypesAr types = TranslationsNotificationsTypesAr.internal(_root);
}

// Path: projects
class TranslationsProjectsAr {
	TranslationsProjectsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'المشاريع';
	String get list => 'قائمة';
	String get bexy => 'بيكسي';
	String get texa => 'تيكسا';
	late final TranslationsProjectsProjectDetailsAr project_details = TranslationsProjectsProjectDetailsAr.internal(_root);
}

// Path: profile
class TranslationsProfileAr {
	TranslationsProfileAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'الملف الشخصي';
	String get name => 'كريم عامر';
	String get phone => '07800000000';
	String get notifications => 'الإشعارات';
	String get language => 'اللغة';
	String get logout => 'تسجيل خروج';
	String get arabic => 'العربية';
	String get english => 'الإنجليزية';
	String get theme => 'الوضع';
	String get system => 'النظام';
	String get light_mode => 'الوضع الفاتح';
	String get dark_mode => 'الوضع الداكن';
	late final TranslationsProfileNotificationSettingsAr notification_settings = TranslationsProfileNotificationSettingsAr.internal(_root);
}

// Path: transfer
class TranslationsTransferAr {
	TranslationsTransferAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get filter_title => 'فلترة التحويلات';
	String get operation_type => 'نوع العملية';
	String get type_transfer => 'تحويل';
	String get type_deposit => 'إيداع';
	String get apply_filter => 'تطبيق الفلتر';
}

// Path: message_type
class TranslationsMessageTypeAr {
	TranslationsMessageTypeAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get whatsapp => 'واتساب';
	String get insideIraq => 'داخل العراق';
	String get outsideIraq => 'خارج العراق';
}

// Path: message_status
class TranslationsMessageStatusAr {
	TranslationsMessageStatusAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sent => 'تم الإرسال';
	String get failed => 'فشل';
	String get pending => 'معلق';
}

// Path: project_Messages_D
class TranslationsProjectMessagesDAr {
	TranslationsProjectMessagesDAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get messageDetails => 'تفاصيل الرسالة';
}

// Path: common
class TranslationsCommonAr {
	TranslationsCommonAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get confirm => 'تأكيد';
	String get cancel => 'إلغاء';
	String get yes => 'نعم';
	String get no => 'لا';
}

// Path: balance_card
class TranslationsBalanceCardAr {
	TranslationsBalanceCardAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get hidden => ' ******';
	String get visible => 'د.ع 1,200,000';
	String get account_balance => 'رصيد حسابك';
}

// Path: transaction_details
class TranslationsTransactionDetailsAr {
	TranslationsTransactionDetailsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'عملية التحويل ';
	String get project => 'المشروع';
	String get amount => 'المبلغ';
	String get date => 'التاريخ';
	String get transfer_amount => '180,000 د.ع';
	String get transfer_status => 'تم بنجاح';
	String get transfer_date => '2024-07-02 14:30';
	String get to => 'الى';
	String get from => 'من';
	String get sender => 'محمد كامل';
	String get receiver => 'بيكسي ';
	String get extra_info => 'معلومات اضافية';
	String get transaction_id => 'رمز المعاملة';
	String get invoice => 'فاتورة';
	String get id => '#421451';
}

// Path: full_transfer_details
class TranslationsFullTransferDetailsAr {
	TranslationsFullTransferDetailsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'تفاصيل التحويل';
	String get bexy => 'Bexy';
	String get alpha => 'Alpha';
	String get sport_app => 'تطبيق للتمارين الرياضية';
	String get sport_app_date => '2024-07-02 14:30';
	String get sport_app_amount => '- 180,000 IQD';
	String get sport_app_manager => 'أحمد كريم';
	String get sport_app_created_at => '2023-11-10';
}

// Path: message_dialog
class TranslationsMessageDialogAr {
	TranslationsMessageDialogAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'عذرا, لم يتمكن النظام من اتمام عملية تحويل الاموال . يرجى التحقق من رصيد المحفظة او اعادة المحاولة لاحقا';
}

// Path: transfer_page
class TranslationsTransferPageAr {
	TranslationsTransferPageAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'تحويل مالي';
	String get trnsfer_money_easly => 'تحويل الاموال بسهولة';
	String get transfer_money_to_project => 'انقل الاموال من محفظتك الى مشاريعك بكل سهولة لضمان استمرارية العمل وادارة سلسة';
	String get from => 'من';
	String get to => 'الى';
	String get amount => 'المبلغ';
	String get texa => 'تيكسا';
	String get bexy => 'بيكسي';
	String get mohammed_shakeri => 'محمد شكري';
	String get mohammed_kamel => 'محمد كامل';
	String get transfer => 'تحويل';
}

// Path: register
class TranslationsRegisterAr {
	TranslationsRegisterAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'تسجيل دخول';
	String get full_name => 'اسمك الكامل';
	String get phone_number => 'رقم الهاتف';
	String get password => 'كلمة المرور';
	String get confirm_password => 'تأكيد كلمة المرور';
	String get fill_info => 'املأ المعلومات أدناه لبدء رحلتك معنا.';
	String get terms_and_conditions => 'من خلال تحديد المربع فإنك توافق على الشروط والأحكام الخاصة بنا.';
}

// Path: login
class TranslationsLoginAr {
	TranslationsLoginAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get login => 'تسجيل الدخول';
	String get password => 'كلمة السر ';
	String get  phone_number => 'رقم الهاتف';
}

// Path: home.transfer_buttons
class TranslationsHomeTransferButtonsAr {
	TranslationsHomeTransferButtonsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get transfer => 'تحويل';
	String get deposit => 'إيداع';
}

// Path: notifications.types
class TranslationsNotificationsTypesAr {
	TranslationsNotificationsTypesAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNotificationsTypesTransferSuccessAr transfer_success = TranslationsNotificationsTypesTransferSuccessAr.internal(_root);
	late final TranslationsNotificationsTypesNewProjectAr new_project = TranslationsNotificationsTypesNewProjectAr.internal(_root);
	late final TranslationsNotificationsTypesBalanceUsageAr balance_usage = TranslationsNotificationsTypesBalanceUsageAr.internal(_root);
}

// Path: projects.project_details
class TranslationsProjectsProjectDetailsAr {
	TranslationsProjectsProjectDetailsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'تفاصيل المشروع';
	String get name => 'اسم المشروع';
	String get description => 'الوصف';
	String get manager => 'مدير المشروع';
	String get created_at => 'تاريخ الإنشاء';
}

// Path: profile.notification_settings
class TranslationsProfileNotificationSettingsAr {
	TranslationsProfileNotificationSettingsAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'إعدادات الإشعارات';
	String get all => 'تفعيل كل الإشعارات';
	String get transfers => 'التحويلات';
	String get invoices => 'الفواتير';
	String get messages => 'الرسائل';
	String get notifications => 'الإشعارات';
	String get transfers_only => ' اشعارات التحويلات فقط';
	String get invoices_only => ' اشعارات الفواتير فقط';
}

// Path: notifications.types.transfer_success
class TranslationsNotificationsTypesTransferSuccessAr {
	TranslationsNotificationsTypesTransferSuccessAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'تم تحويل الأموال بنجاح';
	String get body => 'تم تحويل مبلغ 250,000 د.ع من محفظتك إلى مشروع Bexy. شكرًا لاستخدامك نظامنا.';
}

// Path: notifications.types.new_project
class TranslationsNotificationsTypesNewProjectAr {
	TranslationsNotificationsTypesNewProjectAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'مشروع جديد مضاف';
	String get body => 'تم إضافة مشروع جديد بنجاح. اسم المشروع: Texa.';
}

// Path: notifications.types.balance_usage
class TranslationsNotificationsTypesBalanceUsageAr {
	TranslationsNotificationsTypesBalanceUsageAr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'استهلاك الرصيد';
	String get body => 'تم خصم مبلغ 250,000 د.ع من محفظتك بسبب إرسال 1512 رسالة عبر مشروع Bexy.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.title': return 'الرئيسية';
			case 'home.hello': return 'مرحبًا ';
			case 'home.username': return 'محمد شكري';
			case 'home.balance': return 'الرصيد';
			case 'home.transfers': return 'التحويلات المالية';
			case 'home.view_all': return 'عرض الكل';
			case 'home.account_balance': return 'رصيد حسابك';
			case 'home.transaction_bexy_title': return 'تحويل إلى مشروع Bexy';
			case 'home.transaction_bexy_date': return '2024-07-01 12:00';
			case 'home.transaction_bexy_amount': return '- 250,000 د.ع';
			case 'home.transaction_alpha_title': return 'تحويل إلى مشروع Alpha';
			case 'home.transaction_alpha_date': return '2024-07-02 14:30';
			case 'home.transaction_alpha_amount': return '- 180,000 د.ع';
			case 'home.transfer_buttons.transfer': return 'تحويل';
			case 'home.transfer_buttons.deposit': return 'إيداع';
			case 'notifications.title': return 'الإشعارات';
			case 'notifications.empty': return 'لا توجد إشعارات حالياً';
			case 'notifications.types.transfer_success.title': return 'تم تحويل الأموال بنجاح';
			case 'notifications.types.transfer_success.body': return 'تم تحويل مبلغ 250,000 د.ع من محفظتك إلى مشروع Bexy. شكرًا لاستخدامك نظامنا.';
			case 'notifications.types.new_project.title': return 'مشروع جديد مضاف';
			case 'notifications.types.new_project.body': return 'تم إضافة مشروع جديد بنجاح. اسم المشروع: Texa.';
			case 'notifications.types.balance_usage.title': return 'استهلاك الرصيد';
			case 'notifications.types.balance_usage.body': return 'تم خصم مبلغ 250,000 د.ع من محفظتك بسبب إرسال 1512 رسالة عبر مشروع Bexy.';
			case 'projects.title': return 'المشاريع';
			case 'projects.list': return 'قائمة';
			case 'projects.bexy': return 'بيكسي';
			case 'projects.texa': return 'تيكسا';
			case 'projects.project_details.title': return 'تفاصيل المشروع';
			case 'projects.project_details.name': return 'اسم المشروع';
			case 'projects.project_details.description': return 'الوصف';
			case 'projects.project_details.manager': return 'مدير المشروع';
			case 'projects.project_details.created_at': return 'تاريخ الإنشاء';
			case 'profile.title': return 'الملف الشخصي';
			case 'profile.name': return 'كريم عامر';
			case 'profile.phone': return '07800000000';
			case 'profile.notifications': return 'الإشعارات';
			case 'profile.language': return 'اللغة';
			case 'profile.logout': return 'تسجيل خروج';
			case 'profile.arabic': return 'العربية';
			case 'profile.english': return 'الإنجليزية';
			case 'profile.theme': return 'الوضع';
			case 'profile.system': return 'النظام';
			case 'profile.light_mode': return 'الوضع الفاتح';
			case 'profile.dark_mode': return 'الوضع الداكن';
			case 'profile.notification_settings.title': return 'إعدادات الإشعارات';
			case 'profile.notification_settings.all': return 'تفعيل كل الإشعارات';
			case 'profile.notification_settings.transfers': return 'التحويلات';
			case 'profile.notification_settings.invoices': return 'الفواتير';
			case 'profile.notification_settings.messages': return 'الرسائل';
			case 'profile.notification_settings.notifications': return 'الإشعارات';
			case 'profile.notification_settings.transfers_only': return ' اشعارات التحويلات فقط';
			case 'profile.notification_settings.invoices_only': return ' اشعارات الفواتير فقط';
			case 'transfer.filter_title': return 'فلترة التحويلات';
			case 'transfer.operation_type': return 'نوع العملية';
			case 'transfer.type_transfer': return 'تحويل';
			case 'transfer.type_deposit': return 'إيداع';
			case 'transfer.apply_filter': return 'تطبيق الفلتر';
			case 'message_type.whatsapp': return 'واتساب';
			case 'message_type.insideIraq': return 'داخل العراق';
			case 'message_type.outsideIraq': return 'خارج العراق';
			case 'message_status.sent': return 'تم الإرسال';
			case 'message_status.failed': return 'فشل';
			case 'message_status.pending': return 'معلق';
			case 'project_Messages_D.messageDetails': return 'تفاصيل الرسالة';
			case 'common.confirm': return 'تأكيد';
			case 'common.cancel': return 'إلغاء';
			case 'common.yes': return 'نعم';
			case 'common.no': return 'لا';
			case 'balance_card.hidden': return ' ******';
			case 'balance_card.visible': return 'د.ع 1,200,000';
			case 'balance_card.account_balance': return 'رصيد حسابك';
			case 'transaction_details.title': return 'عملية التحويل ';
			case 'transaction_details.project': return 'المشروع';
			case 'transaction_details.amount': return 'المبلغ';
			case 'transaction_details.date': return 'التاريخ';
			case 'transaction_details.transfer_amount': return '180,000 د.ع';
			case 'transaction_details.transfer_status': return 'تم بنجاح';
			case 'transaction_details.transfer_date': return '2024-07-02 14:30';
			case 'transaction_details.to': return 'الى';
			case 'transaction_details.from': return 'من';
			case 'transaction_details.sender': return 'محمد كامل';
			case 'transaction_details.receiver': return 'بيكسي ';
			case 'transaction_details.extra_info': return 'معلومات اضافية';
			case 'transaction_details.transaction_id': return 'رمز المعاملة';
			case 'transaction_details.invoice': return 'فاتورة';
			case 'transaction_details.id': return '#421451';
			case 'full_transfer_details.title': return 'تفاصيل التحويل';
			case 'full_transfer_details.bexy': return 'Bexy';
			case 'full_transfer_details.alpha': return 'Alpha';
			case 'full_transfer_details.sport_app': return 'تطبيق للتمارين الرياضية';
			case 'full_transfer_details.sport_app_date': return '2024-07-02 14:30';
			case 'full_transfer_details.sport_app_amount': return '- 180,000 IQD';
			case 'full_transfer_details.sport_app_manager': return 'أحمد كريم';
			case 'full_transfer_details.sport_app_created_at': return '2023-11-10';
			case 'message_dialog.message': return 'عذرا, لم يتمكن النظام من اتمام عملية تحويل الاموال . يرجى التحقق من رصيد المحفظة او اعادة المحاولة لاحقا';
			case 'transfer_page.title': return 'تحويل مالي';
			case 'transfer_page.trnsfer_money_easly': return 'تحويل الاموال بسهولة';
			case 'transfer_page.transfer_money_to_project': return 'انقل الاموال من محفظتك الى مشاريعك بكل سهولة لضمان استمرارية العمل وادارة سلسة';
			case 'transfer_page.from': return 'من';
			case 'transfer_page.to': return 'الى';
			case 'transfer_page.amount': return 'المبلغ';
			case 'transfer_page.texa': return 'تيكسا';
			case 'transfer_page.bexy': return 'بيكسي';
			case 'transfer_page.mohammed_shakeri': return 'محمد شكري';
			case 'transfer_page.mohammed_kamel': return 'محمد كامل';
			case 'transfer_page.transfer': return 'تحويل';
			case 'register.title': return 'تسجيل دخول';
			case 'register.full_name': return 'اسمك الكامل';
			case 'register.phone_number': return 'رقم الهاتف';
			case 'register.password': return 'كلمة المرور';
			case 'register.confirm_password': return 'تأكيد كلمة المرور';
			case 'register.fill_info': return 'املأ المعلومات أدناه لبدء رحلتك معنا.';
			case 'register.terms_and_conditions': return 'من خلال تحديد المربع فإنك توافق على الشروط والأحكام الخاصة بنا.';
			case 'login.login': return 'تسجيل الدخول';
			case 'login.password': return 'كلمة السر ';
			case 'login. phone_number': return 'رقم الهاتف';
			default: return null;
		}
	}
}

