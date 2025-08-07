///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	@override late final _TranslationsNotificationsEn notifications = _TranslationsNotificationsEn._(_root);
	@override late final _TranslationsProjectsEn projects = _TranslationsProjectsEn._(_root);
	@override late final _TranslationsProfileEn profile = _TranslationsProfileEn._(_root);
	@override late final _TranslationsTransferEn transfer = _TranslationsTransferEn._(_root);
	@override late final _TranslationsMessageTypeEn message_type = _TranslationsMessageTypeEn._(_root);
	@override late final _TranslationsMessageStatusEn message_status = _TranslationsMessageStatusEn._(_root);
	@override late final _TranslationsProjectMessagesDEn project_Messages_D = _TranslationsProjectMessagesDEn._(_root);
	@override late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	@override late final _TranslationsBalanceCardEn balance_card = _TranslationsBalanceCardEn._(_root);
	@override late final _TranslationsTransactionDetailsEn transaction_details = _TranslationsTransactionDetailsEn._(_root);
	@override late final _TranslationsFullTransferDetailsEn full_transfer_details = _TranslationsFullTransferDetailsEn._(_root);
	@override late final _TranslationsMessageDialogEn message_dialog = _TranslationsMessageDialogEn._(_root);
	@override late final _TranslationsTransferPageEn transfer_page = _TranslationsTransferPageEn._(_root);
	@override late final _TranslationsRegisterEn register = _TranslationsRegisterEn._(_root);
	@override late final _TranslationsLoginEn login = _TranslationsLoginEn._(_root);
	@override late final _TranslationsDateEn date = _TranslationsDateEn._(_root);
}

// Path: home
class _TranslationsHomeEn extends TranslationsHomeAr {
	_TranslationsHomeEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Home';
	@override String get hello => 'Hello ';
	@override String get username => 'Mohammed Shukri';
	@override String get balance => 'Balance';
	@override String get transfers => 'Transactions';
	@override String get view_all => 'View All';
	@override String get account_balance => 'Your account balance';
	@override String get transaction_bexy_title => 'Transfer to project Bexy';
	@override String get transaction_bexy_date => '2024-07-01 12:00';
	@override String get transaction_bexy_amount => '- 250,000 IQD';
	@override String get transaction_alpha_title => 'Transfer to project Alpha';
	@override String get transaction_alpha_date => '2024-07-02 14:30';
	@override String get transaction_alpha_amount => '- 180,000 IQD';
	@override late final _TranslationsHomeTransferButtonsEn transfer_buttons = _TranslationsHomeTransferButtonsEn._(_root);
}

// Path: notifications
class _TranslationsNotificationsEn extends TranslationsNotificationsAr {
	_TranslationsNotificationsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notifications';
	@override String get empty => 'No notifications available';
	@override late final _TranslationsNotificationsTypesEn types = _TranslationsNotificationsTypesEn._(_root);
}

// Path: projects
class _TranslationsProjectsEn extends TranslationsProjectsAr {
	_TranslationsProjectsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Projects';
	@override String get list => 'List';
	@override String get bexy => 'Bexy';
	@override String get texa => 'Texa';
	@override late final _TranslationsProjectsProjectDetailsEn project_details = _TranslationsProjectsProjectDetailsEn._(_root);
}

// Path: profile
class _TranslationsProfileEn extends TranslationsProfileAr {
	_TranslationsProfileEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile';
	@override String get name => 'Kareem Amer';
	@override String get phone => '07800000000';
	@override String get notifications => 'Notifications';
	@override String get language => 'Language';
	@override String get logout => 'Logout';
	@override String get arabic => 'Arabic';
	@override String get english => 'English';
	@override String get theme => 'Theme';
	@override String get system => 'System';
	@override String get light_mode => 'Light Mode';
	@override String get dark_mode => 'Dark Mode';
	@override late final _TranslationsProfileNotificationSettingsEn notification_settings = _TranslationsProfileNotificationSettingsEn._(_root);
}

// Path: transfer
class _TranslationsTransferEn extends TranslationsTransferAr {
	_TranslationsTransferEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get filter_title => 'Transfer Filter';
	@override String get operation_type => 'Operation Type';
	@override String get type_transfer => 'Transfer';
	@override String get type_deposit => 'Deposit';
	@override String get apply_filter => 'Apply Filter';
}

// Path: message_type
class _TranslationsMessageTypeEn extends TranslationsMessageTypeAr {
	_TranslationsMessageTypeEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get whatsapp => 'Whatsapp';
	@override String get insideIraq => 'Inside Iraq';
	@override String get outsideIraq => 'Outside Iraq';
}

// Path: message_status
class _TranslationsMessageStatusEn extends TranslationsMessageStatusAr {
	_TranslationsMessageStatusEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get sent => 'Sent';
	@override String get failed => 'Failed';
	@override String get pending => 'Pending';
}

// Path: project_Messages_D
class _TranslationsProjectMessagesDEn extends TranslationsProjectMessagesDAr {
	_TranslationsProjectMessagesDEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get messageDetails => 'Message Details';
}

// Path: common
class _TranslationsCommonEn extends TranslationsCommonAr {
	_TranslationsCommonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get confirm => 'Confirm';
	@override String get cancel => 'Cancel';
	@override String get yes => 'Yes';
	@override String get no => 'No';
}

// Path: balance_card
class _TranslationsBalanceCardEn extends TranslationsBalanceCardAr {
	_TranslationsBalanceCardEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hidden => ' *******';
	@override String get visible => 'IQD 1,200,000';
	@override String get account_balance => ' account balance';
}

// Path: transaction_details
class _TranslationsTransactionDetailsEn extends TranslationsTransactionDetailsAr {
	_TranslationsTransactionDetailsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Transfer Process';
	@override String get project => 'Project';
	@override String get amount => 'Amount';
	@override String get date => 'Date';
	@override String get transfer_amount => '180,000 IQD';
	@override String get transfer_status => 'Success';
	@override String get transfer_date => '2024-07-02 14:30';
	@override String get to => 'To';
	@override String get from => 'From';
	@override String get sender => 'Mohammed Kamel';
	@override String get receiver => 'Bexy';
	@override String get extra_info => 'Extra Info';
	@override String get transaction_id => 'Transaction ID';
	@override String get invoice => 'Invoice';
	@override String get id => '#421451';
}

// Path: full_transfer_details
class _TranslationsFullTransferDetailsEn extends TranslationsFullTransferDetailsAr {
	_TranslationsFullTransferDetailsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Transfer Details';
	@override String get bexy => 'Bexy';
	@override String get alpha => 'Alpha';
	@override String get sport_app => 'Sport App';
	@override String get sport_app_date => '2024-07-02 14:30';
	@override String get sport_app_amount => '- 180,000 IQD';
	@override String get sport_app_manager => 'Ahmed Kareem';
	@override String get sport_app_created_at => '2023-11-10';
}

// Path: message_dialog
class _TranslationsMessageDialogEn extends TranslationsMessageDialogAr {
	_TranslationsMessageDialogEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get message => 'Sorry, the system was unable to complete the transfer. Please check your wallet balance or try again later.';
}

// Path: transfer_page
class _TranslationsTransferPageEn extends TranslationsTransferPageAr {
	_TranslationsTransferPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Money Transfer';
	@override String get trnsfer_money_easly => 'Transfer money easily';
	@override String get transfer_money_to_project => 'Transfer money from your wallet to your projects easily to ensure continuous work and smooth management';
	@override String get from => 'From';
	@override String get to => 'To';
	@override String get amount => 'Amount';
	@override String get texa => 'Texa';
	@override String get bexy => 'Bexy';
	@override String get mohammed_shakeri => 'Mohammed Shakeri';
	@override String get mohammed_kamel => 'Mohammed Kamel';
	@override String get transfer => 'Transfer';
}

// Path: register
class _TranslationsRegisterEn extends TranslationsRegisterAr {
	_TranslationsRegisterEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'login';
	@override String get full_name => 'Full Name';
	@override String get phone_number => 'Phone Number';
	@override String get password => 'Password';
	@override String get confirm_password => 'Confirm Password';
	@override String get fill_info => 'Fill in the information below to start your journey with us.';
	@override String get terms_and_conditions => 'By checking the box, you agree to our terms and conditions.';
}

// Path: login
class _TranslationsLoginEn extends TranslationsLoginAr {
	_TranslationsLoginEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get login => ' Login';
	@override String get password => ' Password ';
	@override String get  phone_number => ' Phonenumber';
}

// Path: date
class _TranslationsDateEn extends TranslationsDateAr {
	_TranslationsDateEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get today => 'Today';
	@override String get yesterday => 'Yesterday';
	@override String daysAgo({required Object n}) => '${n} days ago';
}

// Path: home.transfer_buttons
class _TranslationsHomeTransferButtonsEn extends TranslationsHomeTransferButtonsAr {
	_TranslationsHomeTransferButtonsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get transfer => 'Transfer';
	@override String get deposit => 'Deposit';
}

// Path: notifications.types
class _TranslationsNotificationsTypesEn extends TranslationsNotificationsTypesAr {
	_TranslationsNotificationsTypesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNotificationsTypesTransferSuccessEn transfer_success = _TranslationsNotificationsTypesTransferSuccessEn._(_root);
	@override late final _TranslationsNotificationsTypesNewProjectEn new_project = _TranslationsNotificationsTypesNewProjectEn._(_root);
	@override late final _TranslationsNotificationsTypesBalanceUsageEn balance_usage = _TranslationsNotificationsTypesBalanceUsageEn._(_root);
}

// Path: projects.project_details
class _TranslationsProjectsProjectDetailsEn extends TranslationsProjectsProjectDetailsAr {
	_TranslationsProjectsProjectDetailsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Project Details';
	@override String get name => 'Project Name';
	@override String get description => 'Description';
	@override String get manager => 'Project Manager';
	@override String get created_at => 'Created At';
}

// Path: profile.notification_settings
class _TranslationsProfileNotificationSettingsEn extends TranslationsProfileNotificationSettingsAr {
	_TranslationsProfileNotificationSettingsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notification Settings';
	@override String get all => 'All Notifications Enable';
	@override String get transfers => 'Transfers';
	@override String get invoices => 'Invoices';
	@override String get messages => 'Messages';
	@override String get notifications => 'Notifications';
	@override String get transfers_only => 'Transfers Notifications Only';
	@override String get invoices_only => 'Invoices Notifications Only';
}

// Path: notifications.types.transfer_success
class _TranslationsNotificationsTypesTransferSuccessEn extends TranslationsNotificationsTypesTransferSuccessAr {
	_TranslationsNotificationsTypesTransferSuccessEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Transfer Successful';
	@override String get body => 'An amount of 250,000 IQD has been transferred from your wallet to project Bexy. Thank you for using our system.';
}

// Path: notifications.types.new_project
class _TranslationsNotificationsTypesNewProjectEn extends TranslationsNotificationsTypesNewProjectAr {
	_TranslationsNotificationsTypesNewProjectEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'New Project Added';
	@override String get body => 'A new project has been successfully added. Project name: Texa.';
}

// Path: notifications.types.balance_usage
class _TranslationsNotificationsTypesBalanceUsageEn extends TranslationsNotificationsTypesBalanceUsageAr {
	_TranslationsNotificationsTypesBalanceUsageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Balance Usage';
	@override String get body => 'An amount of 250,000 IQD has been deducted from your wallet due to sending 1512 messages via project Bexy.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.title': return 'Home';
			case 'home.hello': return 'Hello ';
			case 'home.username': return 'Mohammed Shukri';
			case 'home.balance': return 'Balance';
			case 'home.transfers': return 'Transactions';
			case 'home.view_all': return 'View All';
			case 'home.account_balance': return 'Your account balance';
			case 'home.transaction_bexy_title': return 'Transfer to project Bexy';
			case 'home.transaction_bexy_date': return '2024-07-01 12:00';
			case 'home.transaction_bexy_amount': return '- 250,000 IQD';
			case 'home.transaction_alpha_title': return 'Transfer to project Alpha';
			case 'home.transaction_alpha_date': return '2024-07-02 14:30';
			case 'home.transaction_alpha_amount': return '- 180,000 IQD';
			case 'home.transfer_buttons.transfer': return 'Transfer';
			case 'home.transfer_buttons.deposit': return 'Deposit';
			case 'notifications.title': return 'Notifications';
			case 'notifications.empty': return 'No notifications available';
			case 'notifications.types.transfer_success.title': return 'Transfer Successful';
			case 'notifications.types.transfer_success.body': return 'An amount of 250,000 IQD has been transferred from your wallet to project Bexy. Thank you for using our system.';
			case 'notifications.types.new_project.title': return 'New Project Added';
			case 'notifications.types.new_project.body': return 'A new project has been successfully added. Project name: Texa.';
			case 'notifications.types.balance_usage.title': return 'Balance Usage';
			case 'notifications.types.balance_usage.body': return 'An amount of 250,000 IQD has been deducted from your wallet due to sending 1512 messages via project Bexy.';
			case 'projects.title': return 'Projects';
			case 'projects.list': return 'List';
			case 'projects.bexy': return 'Bexy';
			case 'projects.texa': return 'Texa';
			case 'projects.project_details.title': return 'Project Details';
			case 'projects.project_details.name': return 'Project Name';
			case 'projects.project_details.description': return 'Description';
			case 'projects.project_details.manager': return 'Project Manager';
			case 'projects.project_details.created_at': return 'Created At';
			case 'profile.title': return 'Profile';
			case 'profile.name': return 'Kareem Amer';
			case 'profile.phone': return '07800000000';
			case 'profile.notifications': return 'Notifications';
			case 'profile.language': return 'Language';
			case 'profile.logout': return 'Logout';
			case 'profile.arabic': return 'Arabic';
			case 'profile.english': return 'English';
			case 'profile.theme': return 'Theme';
			case 'profile.system': return 'System';
			case 'profile.light_mode': return 'Light Mode';
			case 'profile.dark_mode': return 'Dark Mode';
			case 'profile.notification_settings.title': return 'Notification Settings';
			case 'profile.notification_settings.all': return 'All Notifications Enable';
			case 'profile.notification_settings.transfers': return 'Transfers';
			case 'profile.notification_settings.invoices': return 'Invoices';
			case 'profile.notification_settings.messages': return 'Messages';
			case 'profile.notification_settings.notifications': return 'Notifications';
			case 'profile.notification_settings.transfers_only': return 'Transfers Notifications Only';
			case 'profile.notification_settings.invoices_only': return 'Invoices Notifications Only';
			case 'transfer.filter_title': return 'Transfer Filter';
			case 'transfer.operation_type': return 'Operation Type';
			case 'transfer.type_transfer': return 'Transfer';
			case 'transfer.type_deposit': return 'Deposit';
			case 'transfer.apply_filter': return 'Apply Filter';
			case 'message_type.whatsapp': return 'Whatsapp';
			case 'message_type.insideIraq': return 'Inside Iraq';
			case 'message_type.outsideIraq': return 'Outside Iraq';
			case 'message_status.sent': return 'Sent';
			case 'message_status.failed': return 'Failed';
			case 'message_status.pending': return 'Pending';
			case 'project_Messages_D.messageDetails': return 'Message Details';
			case 'common.confirm': return 'Confirm';
			case 'common.cancel': return 'Cancel';
			case 'common.yes': return 'Yes';
			case 'common.no': return 'No';
			case 'balance_card.hidden': return ' *******';
			case 'balance_card.visible': return 'IQD 1,200,000';
			case 'balance_card.account_balance': return ' account balance';
			case 'transaction_details.title': return 'Transfer Process';
			case 'transaction_details.project': return 'Project';
			case 'transaction_details.amount': return 'Amount';
			case 'transaction_details.date': return 'Date';
			case 'transaction_details.transfer_amount': return '180,000 IQD';
			case 'transaction_details.transfer_status': return 'Success';
			case 'transaction_details.transfer_date': return '2024-07-02 14:30';
			case 'transaction_details.to': return 'To';
			case 'transaction_details.from': return 'From';
			case 'transaction_details.sender': return 'Mohammed Kamel';
			case 'transaction_details.receiver': return 'Bexy';
			case 'transaction_details.extra_info': return 'Extra Info';
			case 'transaction_details.transaction_id': return 'Transaction ID';
			case 'transaction_details.invoice': return 'Invoice';
			case 'transaction_details.id': return '#421451';
			case 'full_transfer_details.title': return 'Transfer Details';
			case 'full_transfer_details.bexy': return 'Bexy';
			case 'full_transfer_details.alpha': return 'Alpha';
			case 'full_transfer_details.sport_app': return 'Sport App';
			case 'full_transfer_details.sport_app_date': return '2024-07-02 14:30';
			case 'full_transfer_details.sport_app_amount': return '- 180,000 IQD';
			case 'full_transfer_details.sport_app_manager': return 'Ahmed Kareem';
			case 'full_transfer_details.sport_app_created_at': return '2023-11-10';
			case 'message_dialog.message': return 'Sorry, the system was unable to complete the transfer. Please check your wallet balance or try again later.';
			case 'transfer_page.title': return 'Money Transfer';
			case 'transfer_page.trnsfer_money_easly': return 'Transfer money easily';
			case 'transfer_page.transfer_money_to_project': return 'Transfer money from your wallet to your projects easily to ensure continuous work and smooth management';
			case 'transfer_page.from': return 'From';
			case 'transfer_page.to': return 'To';
			case 'transfer_page.amount': return 'Amount';
			case 'transfer_page.texa': return 'Texa';
			case 'transfer_page.bexy': return 'Bexy';
			case 'transfer_page.mohammed_shakeri': return 'Mohammed Shakeri';
			case 'transfer_page.mohammed_kamel': return 'Mohammed Kamel';
			case 'transfer_page.transfer': return 'Transfer';
			case 'register.title': return 'login';
			case 'register.full_name': return 'Full Name';
			case 'register.phone_number': return 'Phone Number';
			case 'register.password': return 'Password';
			case 'register.confirm_password': return 'Confirm Password';
			case 'register.fill_info': return 'Fill in the information below to start your journey with us.';
			case 'register.terms_and_conditions': return 'By checking the box, you agree to our terms and conditions.';
			case 'login.login': return ' Login';
			case 'login.password': return ' Password ';
			case 'login. phone_number': return ' Phonenumber';
			case 'date.today': return 'Today';
			case 'date.yesterday': return 'Yesterday';
			case 'date.daysAgo': return ({required Object n}) => '${n} days ago';
			default: return null;
		}
	}
}

