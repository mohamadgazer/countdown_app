enum MonthName {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december,
}

String getMonthName(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return MonthName.january.name;
    case 2:
      return MonthName.february.name;
    case 3:
      return MonthName.march.name;
    case 4:
      return MonthName.april.name;
    case 5:
      return MonthName.may.name;
    case 6:
      return MonthName.june.name;
    case 7:
      return MonthName.july.name;
    case 8:
      return MonthName.august.name;
    case 9:
      return MonthName.september.name;
    case 10:
      return MonthName.october.name;
    case 11:
      return MonthName.november.name;
    case 12:
      return MonthName.december.name;
    default:
      return '';
  }
}
