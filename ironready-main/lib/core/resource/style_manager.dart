import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
  double fontSize,
  FontWeight fontWeight,
  Color color, {
  String? fontFamily,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily ?? FontConstants.fontFamilyBebasNeue,
    color: color,
    fontWeight: fontWeight,
  );
}


//light text style
TextStyle getLight300Style12({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.light300,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
   fontFamily: FontConstants.fontFamily,
);

}

TextStyle getRegular400Style10({
  double fontSize = FontSize.s10,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

//regular  text style
TextStyle getRegular400Style12({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getRegular400Style14({
  double fontSize = FontSize.s14,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
   fontFamily: FontConstants.fontFamily,
);

}


TextStyle getRegular400Style13({
  double fontSize = FontSize.s13,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
   fontFamily: FontConstants.fontFamily,
);

}



TextStyle getRegular400Style15({
  double fontSize = FontSize.s15,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}



TextStyle getRegular400Style16({
  double fontSize = FontSize.s16,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getRegular400Style18({
  double fontSize = FontSize.s18,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getRegular400Style17({
  double fontSize = FontSize.s17,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
    fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getRegular400Style20({
  double fontSize = FontSize.s20,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}
TextStyle getRegular400Style24({
  double fontSize = FontSize.s24,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getRegular400Style25({
  double fontSize = FontSize.s25,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}


TextStyle getRegular400Style32({
  double fontSize = FontSize.s32,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getRegular400Style96({
  double fontSize = FontSize.s96,
  FontWeight fontWeight = FontWeightManager.regural400,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getMedium500Style10({
  double fontSize = FontSize.s10,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamily,
);

}

//mediun text style
TextStyle getMedium500Style12({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getMedium500Style14({
  double fontSize = FontSize.s14,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamily,
);

}

TextStyle getMedium500Style16({
  double fontSize = FontSize.s16,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getMedium500Style18({
  double fontSize = FontSize.s18,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamilyBebasNeue,
);

}
TextStyle getMedium500Style19({
  double fontSize = FontSize.s19,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamily,
);

}

TextStyle getMedium500Style20({
  double fontSize = FontSize.s20,
  FontWeight fontWeight = FontWeightManager.medium500,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style10({
  double fontSize = FontSize.s10,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

//semi bold text style
TextStyle getSemiBold600Style12({
  double fontSize = FontSize.s12,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style15({
  double fontSize = FontSize.s15,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getSemiBold600Style14({
  double fontSize = FontSize.s14,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
   fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style16({
  double fontSize = FontSize.s16,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style18({
  double fontSize = FontSize.s18,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style20({
  double fontSize = FontSize.s20,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamily,
);

}

TextStyle getSemiBold600Style24({
  double fontSize = FontSize.s24,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);
}


TextStyle getSemiBold600Style25({
  double fontSize = FontSize.s25,
  FontWeight fontWeight = FontWeightManager.semiBold600,
  required Color color,
}) {
return _getTextStyle(
  fontSize,
  fontWeight,
  color,
   fontFamily: FontConstants.fontFamily,
);
}



TextStyle getBold700Style16({
  double fontSize = FontSize.s16,
  FontWeight fontWeight = FontWeightManager.bold700,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamily,
);

}

//large text style

TextStyle getBold700Style28({
  double fontSize = FontSize.s28,
  FontWeight fontWeight = FontWeightManager.bold700,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

TextStyle getBold700Style39({
  double fontSize = FontSize.s39,
  FontWeight fontWeight = FontWeightManager.bold700,
  required Color color,
}) {
 return _getTextStyle(
  fontSize,
  fontWeight,
  color,
  fontFamily: FontConstants.fontFamilyBebasNeue,
);

}

// text_styles.dart
TextStyle customTextStyle({
  required String fontFamily,
  required FontWeight fontWeight,
  required double fontSize,
  required Color color,
}) {
  return TextStyle(
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
  );
}

//bold text style
TextStyle getBold700Style18({
  double fontSize = FontSize.s18,
  FontWeight fontWeight = FontWeightManager.bold700,
  required Color color,
}) {
  return _getTextStyle(
  fontSize,
  fontWeight,
  color,
 fontFamily: FontConstants.fontFamily,
);

}

