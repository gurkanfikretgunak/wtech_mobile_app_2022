import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_l10n_en.dart';
import 'app_l10n_tr.dart';

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n? of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  ///
  ///
  /// In en, this message translates to:
  /// **'Flutter Boilerplate'**
  String get appBarTitle;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-Mail'**
  String get email;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @mentor.
  ///
  /// In en, this message translates to:
  /// **'Mentor'**
  String get mentor;

  /// No description provided for @news.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get news;

  /// No description provided for @newsDetail.
  ///
  /// In en, this message translates to:
  /// **'News Detail'**
  String get newsDetail;

  /// No description provided for @videos.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get videos;

  /// No description provided for @jobAndinternship.
  ///
  /// In en, this message translates to:
  /// **'Job and Internship'**
  String get jobAndinternship;

  /// No description provided for @blog.
  ///
  /// In en, this message translates to:
  /// **'Blog'**
  String get blog;

  /// No description provided for @currentTraining.
  ///
  /// In en, this message translates to:
  /// **'Current Training'**
  String get currentTraining;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @trainings.
  ///
  /// In en, this message translates to:
  /// **'Trainings'**
  String get trainings;

  /// No description provided for @educationButton.
  ///
  /// In en, this message translates to:
  /// **'Click for Education'**
  String get educationButton;

  /// No description provided for @aboutEducation.
  ///
  /// In en, this message translates to:
  /// **'About Education'**
  String get aboutEducation;

  /// No description provided for @participationConditions.
  ///
  /// In en, this message translates to:
  /// **'Participation Conditions'**
  String get participationConditions;

  /// No description provided for @gains.
  ///
  /// In en, this message translates to:
  /// **'Gains'**
  String get gains;

  /// No description provided for @workingSpaces.
  ///
  /// In en, this message translates to:
  /// **'Working Spaces'**
  String get workingSpaces;

  /// No description provided for @applyButton.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get applyButton;

  /// No description provided for @terminatedButton.
  ///
  /// In en, this message translates to:
  /// **'Terminated'**
  String get terminatedButton;

  /// No description provided for @internship.
  ///
  /// In en, this message translates to:
  /// **'Internship'**
  String get internship;

  /// No description provided for @career.
  ///
  /// In en, this message translates to:
  /// **'Career'**
  String get career;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get job;

  /// No description provided for @lastPosts.
  ///
  /// In en, this message translates to:
  /// **'Last Posts'**
  String get lastPosts;

  /// No description provided for @views.
  ///
  /// In en, this message translates to:
  /// **'views'**
  String get views;

  /// No description provided for @nameSurnamee.
  ///
  /// In en, this message translates to:
  /// **'Name-Surname'**
  String get nameSurnamee;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @userProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile (choose)'**
  String get userProfile;

  /// No description provided for @inspection.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get inspection;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'APPLY'**
  String get apply;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @continueNow.
  ///
  /// In en, this message translates to:
  /// **'continue Now'**
  String get continueNow;

  /// No description provided for @searchInTheBlog.
  ///
  /// In en, this message translates to:
  /// **'Search In The Blog '**
  String get searchInTheBlog;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @shareThisPost.
  ///
  /// In en, this message translates to:
  /// **'Share This Post'**
  String get shareThisPost;

  /// No description provided for @lastNews.
  ///
  /// In en, this message translates to:
  /// **'Latest News'**
  String get lastNews;

  /// No description provided for @examine.
  ///
  /// In en, this message translates to:
  /// **'Examine'**
  String get examine;

  /// No description provided for @signInGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google.'**
  String get signInGoogle;

  /// No description provided for @signInFacebook.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Facebook.'**
  String get signInFacebook;

  /// No description provided for @signInGithub.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Github.'**
  String get signInGithub;

  /// No description provided for @signInApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple.'**
  String get signInApple;

  /// No description provided for @signInEmail.
  ///
  /// In en, this message translates to:
  /// **'Sign in with E-mail.'**
  String get signInEmail;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// No description provided for @forgotPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Please enter your e-mail or phone number.'**
  String get forgotPasswordDescription;

  /// No description provided for @backLogin.
  ///
  /// In en, this message translates to:
  /// **'Return to login page.'**
  String get backLogin;

  /// No description provided for @emailOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Email or phone'**
  String get emailOrPhone;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @surname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get surname;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'title'**
  String get title;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday (dd/mm/yyyy)'**
  String get birthday;

  /// No description provided for @tcNumber.
  ///
  /// In en, this message translates to:
  /// **'T.C.No'**
  String get tcNumber;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Select Gender'**
  String get selectGender;

  /// No description provided for @findaCause.
  ///
  /// In en, this message translates to:
  /// **'Find a Cause'**
  String get findaCause;

  /// No description provided for @upcomingEvents.
  ///
  /// In en, this message translates to:
  /// **'Upcoming Events'**
  String get upcomingEvents;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @readNews.
  ///
  /// In en, this message translates to:
  /// **'Click to read the news.'**
  String get readNews;

  /// No description provided for @myApplications.
  ///
  /// In en, this message translates to:
  /// **'My Applications'**
  String get myApplications;

  /// No description provided for @myFavorites.
  ///
  /// In en, this message translates to:
  /// **'My Favorites'**
  String get myFavorites;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get userName;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'help'**
  String get help;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logOut;

  /// No description provided for @trainingsIHaveApplied.
  ///
  /// In en, this message translates to:
  /// **'Trainings I Have Applied'**
  String get trainingsIHaveApplied;

  /// No description provided for @activeTrainings.
  ///
  /// In en, this message translates to:
  /// **'Active Trainings'**
  String get activeTrainings;

  /// No description provided for @completedTutorials.
  ///
  /// In en, this message translates to:
  /// **'Completed Tutorials'**
  String get completedTutorials;

  /// No description provided for @mentorshipsIHaveAppliedFor.
  ///
  /// In en, this message translates to:
  /// **'Mentorships I have applied for'**
  String get mentorshipsIHaveAppliedFor;

  /// No description provided for @activeMentorings.
  ///
  /// In en, this message translates to:
  /// **'Active Mentorings'**
  String get activeMentorings;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @foundingMembers.
  ///
  /// In en, this message translates to:
  /// **'Founding Members'**
  String get foundingMembers;

  /// No description provided for @socialMedia.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get socialMedia;

  /// No description provided for @workingHours.
  ///
  /// In en, this message translates to:
  /// **'Working Hours '**
  String get workingHours;

  /// No description provided for @countributingInstitutions.
  ///
  /// In en, this message translates to:
  /// **'Countributing Institutions'**
  String get countributingInstitutions;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @missionVision.
  ///
  /// In en, this message translates to:
  /// **'Mission&Vision'**
  String get missionVision;

  /// No description provided for @university.
  ///
  /// In en, this message translates to:
  /// **' University'**
  String get university;

  /// No description provided for @department.
  ///
  /// In en, this message translates to:
  /// **' Department'**
  String get department;

  /// No description provided for @startingDate.
  ///
  /// In en, this message translates to:
  /// **'Starting Date '**
  String get startingDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @jobStatus.
  ///
  /// In en, this message translates to:
  /// **'Job Status '**
  String get jobStatus;

  /// No description provided for @position.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get position;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get companyName;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @allRightsReserved.
  ///
  /// In en, this message translates to:
  /// **'2022 Wtech Platform. All rights reserved'**
  String get allRightsReserved;

  /// No description provided for @establishmentDate.
  ///
  /// In en, this message translates to:
  /// **'2019'**
  String get establishmentDate;

  /// No description provided for @wtech.
  ///
  /// In en, this message translates to:
  /// **'Woman in Technology Association'**
  String get wtech;

  /// No description provided for @withSignUp.
  ///
  /// In en, this message translates to:
  /// **'By registering'**
  String get withSignUp;

  /// No description provided for @withuserAgree.
  ///
  /// In en, this message translates to:
  /// **'the user agreement'**
  String get withuserAgree;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @clarificationText.
  ///
  /// In en, this message translates to:
  /// **'the clarification Text'**
  String get clarificationText;

  /// No description provided for @youAgree.
  ///
  /// In en, this message translates to:
  /// **'you accept'**
  String get youAgree;

  /// No description provided for @alreadyHave.
  ///
  /// In en, this message translates to:
  /// **'do you Already Have an Account?'**
  String get alreadyHave;

  /// No description provided for @student.
  ///
  /// In en, this message translates to:
  /// **'student'**
  String get student;

  /// No description provided for @teacher.
  ///
  /// In en, this message translates to:
  /// **'instructor'**
  String get teacher;

  /// No description provided for @educationContent.
  ///
  /// In en, this message translates to:
  /// **'Education Content'**
  String get educationContent;

  /// No description provided for @educationLevel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get educationLevel;

  /// No description provided for @educationTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get educationTime;

  /// No description provided for @educationCertificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get educationCertificate;

  /// No description provided for @educationLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get educationLanguage;

  /// No description provided for @notMember.
  ///
  /// In en, this message translates to:
  /// **'Not a member?'**
  String get notMember;

  /// No description provided for @signUpHere.
  ///
  /// In en, this message translates to:
  /// **'Sign up here.'**
  String get signUpHere;

  /// No description provided for @userAgreement.
  ///
  /// In en, this message translates to:
  /// **'User Agreement'**
  String get userAgreement;

  /// No description provided for @illuminationText.
  ///
  /// In en, this message translates to:
  /// **'Illumination Text'**
  String get illuminationText;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @loginBottomDescription.
  ///
  /// In en, this message translates to:
  /// **'By registering you agree to :'**
  String get loginBottomDescription;

  /// No description provided for @mentorAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Mentors'**
  String get mentorAppBarTitle;

  /// No description provided for @mentorDetailViewText.
  ///
  /// In en, this message translates to:
  /// **'times viewed.'**
  String get mentorDetailViewText;

  /// No description provided for @mentorDetailAppliedText.
  ///
  /// In en, this message translates to:
  /// **'applied.'**
  String get mentorDetailAppliedText;

  /// No description provided for @mentorDetailAboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About the Mentor'**
  String get mentorDetailAboutTitle;

  /// No description provided for @mentorDetailExpertTitle.
  ///
  /// In en, this message translates to:
  /// **'Areas of expertise '**
  String get mentorDetailExpertTitle;

  /// No description provided for @mentorDetailContactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get mentorDetailContactUs;

  /// No description provided for @mentorDetailBottomSheetName.
  ///
  /// In en, this message translates to:
  /// **'Your name*'**
  String get mentorDetailBottomSheetName;

  /// No description provided for @mentorDetailBottomSheetEmail.
  ///
  /// In en, this message translates to:
  /// **'E-mail Address*'**
  String get mentorDetailBottomSheetEmail;

  /// No description provided for @mentorDetailBottomSheetMessage.
  ///
  /// In en, this message translates to:
  /// **'Your message*'**
  String get mentorDetailBottomSheetMessage;

  /// No description provided for @mentorDetailBottomSheetUploadFile.
  ///
  /// In en, this message translates to:
  /// **'Upload Attachments(Max 10MB)'**
  String get mentorDetailBottomSheetUploadFile;

  /// No description provided for @mentorDetailBottomSheetSelectFile.
  ///
  /// In en, this message translates to:
  /// **'Select file'**
  String get mentorDetailBottomSheetSelectFile;

  /// No description provided for @mentorDetailBottomSheetNotSelectedFile.
  ///
  /// In en, this message translates to:
  /// **'File not selected'**
  String get mentorDetailBottomSheetNotSelectedFile;

  /// No description provided for @mentorDetailBottomSheetSaveInfo.
  ///
  /// In en, this message translates to:
  /// **'Save my information for the next action.'**
  String get mentorDetailBottomSheetSaveInfo;

  /// No description provided for @mentorDetailBottomSheetWatchVideo.
  ///
  /// In en, this message translates to:
  /// **'Watch the video'**
  String get mentorDetailBottomSheetWatchVideo;

  /// No description provided for @mentorDetailBottomSheetSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get mentorDetailBottomSheetSend;

  /// No description provided for @qualification.
  ///
  /// In en, this message translates to:
  /// **'General Qualifications and job description'**
  String get qualification;

  /// No description provided for @criteria.
  ///
  /// In en, this message translates to:
  /// **'Candidate Criteria'**
  String get criteria;

  /// No description provided for @positionInfo.
  ///
  /// In en, this message translates to:
  /// **'Position Information'**
  String get positionInfo;

  /// No description provided for @endedButton.
  ///
  /// In en, this message translates to:
  /// **'Ended'**
  String get endedButton;

  /// No description provided for @lastUpdatedDate.
  ///
  /// In en, this message translates to:
  /// **'Last Updated Date'**
  String get lastUpdatedDate;

  /// No description provided for @whatMakeUsSpecial.
  ///
  /// In en, this message translates to:
  /// **'What Make Us Special?'**
  String get whatMakeUsSpecial;

  /// No description provided for @whoWe.
  ///
  /// In en, this message translates to:
  /// **'Who are we?'**
  String get whoWe;

  /// No description provided for @whatWeDoing.
  ///
  /// In en, this message translates to:
  /// **'What are we doing?'**
  String get whatWeDoing;

  /// No description provided for @ourGoals.
  ///
  /// In en, this message translates to:
  /// **'Our Goals'**
  String get ourGoals;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return L10nEn();
    case 'tr': return L10nTr();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
