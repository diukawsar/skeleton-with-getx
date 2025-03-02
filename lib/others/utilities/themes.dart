part of '../_others.dart';

// -------------------- Colors Theme
const colorPrimary = Color(0xFF79A78D);
const colorOnPrimary = Color(0xFFFFFFFF);
const colorBackground = Color(0xFF141718);
const colorError = Color(0xFFFF4B4C);
const colorAppBar = Color(0xFF1E1E1E);
const colorBottomBarItemInactive = Color(0xFF777E99);
const colorBottomBarItemActive = colorOnPrimary;
const dialogBackground = Color(0xFF121212);
const colorBlack = Color(0xFF000000);
const colorTextSecondary = Color(0xFFACADB9);
const colorPopupMenu = Color(0xFF5F5F5F);

const colorDialogRed = Color(0xFFFFDDD8);

final dimenContentPadding = 16.h;
final contextMenuWidth = 66.h;

// -------------------- Text Styles
final headingStyle = TextStyle(
  fontSize: 36.sp,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
);
final cardTitleStyle = TextStyle(
  fontSize: 18.sp,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
);
final poppinsStyle = TextStyle(
  fontFamily: 'Poppins',
);

final robotoStyle = TextStyle(fontFamily: 'Roboto', fontSize: 14.sp);

//=========================================================
// App Theme
//=========================================================
final myTheme = ThemeData(
  // -------------------- Global font family
  fontFamily: 'Roboto',
  // -------------------- Define color constants to reuse
  scaffoldBackgroundColor: colorBackground,
  primaryColor: colorPrimary,
  // -------------------- Text theme with common styling for body text
  textTheme: TextTheme(
    bodySmall: TextStyle(color: colorOnPrimary, fontFamily: 'Roboto'),
    bodyMedium: TextStyle(color: colorOnPrimary, fontFamily: 'Roboto'),
    bodyLarge: TextStyle(color: colorOnPrimary, fontFamily: 'Roboto'),
  ),
  // -------------------- AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: colorBackground,
    titleTextStyle: TextStyle(
      color: colorOnPrimary,
      fontFamily: 'Roboto',
      fontSize: 20.sp,
    ),
    iconTheme: IconThemeData(color: colorOnPrimary),
    surfaceTintColor: Colors.transparent,
  ),
  // -------------------- Cursor theme
  textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorPrimary,
      selectionHandleColor: colorPrimary,
      selectionColor: colorPrimary),
  // -------------------- Input Decoration Theme
  inputDecorationTheme: InputDecorationTheme(
    filled: false,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: colorPrimary, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: colorPrimary, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: colorPrimary, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
      borderSide: BorderSide(color: colorPrimary, width: 2.0),
    ),
    hintStyle: TextStyle(
        color: colorOnPrimary.withValues(alpha: 0.5),
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w500,
        fontSize: 18.sp),
  ),
  // -------------------- Checkbox Theme
  checkboxTheme: CheckboxThemeData(
    checkColor: WidgetStatePropertyAll(colorOnPrimary),
    // Color for the check (tick)
    fillColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return colorPrimary;
        }
        return Colors.transparent;
      },
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.r),
    ),
    side: BorderSide(
      color: colorPrimary,
      width: 2,
    ),
  ),
  // -------------------- Radio Theme
  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return colorPrimary; // Color when selected
        }
        return colorOnPrimary; // Default unselected color
      },
    ),

  ),
  // -------------------- Bottom Bar theme (BottomNavigationBar)
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: colorBackground, // Bottom Bar background
    selectedItemColor: colorPrimary, // Selected item color
    unselectedItemColor:
        Colors.white.withValues(alpha: 0.6), // Unselected item color
  ),

  // -------------------- Button theme (using the primary accent color)
  buttonTheme: ButtonThemeData(
    buttonColor: colorPrimary,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.r),
    ),
    minWidth: double.infinity,
  ),
  // -------------------- Dialog Theme
  dialogTheme: DialogThemeData(
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.r),
    ),
    backgroundColor: colorAppBar,
    insetPadding: EdgeInsets.symmetric(horizontal: 0.05.sw),
    titleTextStyle: robotoStyle.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 16.sp,
    ),
    contentTextStyle: robotoStyle.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.sp,
    ),
  ),
);


final taskNameFieldTextStyle = TextStyle(
  fontSize: 16.sp,
  color: colorOnPrimary,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
);
