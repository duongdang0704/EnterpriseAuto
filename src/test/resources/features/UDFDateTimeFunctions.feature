@UDFFunctions
Feature: UDF DateTime Functions
  Scenario Outline: Check UDF Datetime Functions
    Given I go to UDF DateTime Line Screen
    When I want to test Datetime function id "<Testcase_ID>"
    And I enter datetime para value "<Date_Para1>", "<Date_Para2>", "<Date_Para3>" and select UDF DateTime function "<DateTime_Function>"
    Then I should see the correct DateTime result "<Date_Result>" from "<DateTime_Function>"
    Examples:
      | Testcase_ID | Date_Para1 | Date_Para2 | Date_Para3 | DateTime_Function | Date_Result |
      | TC1 | 6/18/2021 9:30:00 AM | (UTC+00:00) Dublin, Edinburgh, Lisbon, London | NA | DateTimeToUTC(dateTime; timeZone) | 6/18/2021 8:30:00 AM |
      | TC2 | Friday, 18 June 2021 09:30 AM | (UTC-06:00) Central Time (US & Canada) | NA | DateTimeToUTC(dateTime; timeZone) | 6/18/2021 2:30:00 PM |
#      | TC3 | Friday, 18 June 2021 09:30:00 | (UTC+09:00) Osaka, Sapporo, Tokyo | NA | DateTimeToUTC(dateTime; timeZone) | 6/18/2021 12:30:00 AM |
#      | TC4 | 6.18.2021 09:30:20 | (UTC-12:00) International Date Line West | NA | DateTimeToUTC(dateTime; timeZone) | 6/18/2021 9:30:20 PM |
#      | TC5 | 18-Jul-2021 17:23:30 | (UTC+00:00) Dublin, Edinburgh, Lisbon, London | NA | DateTimeToUTC(dateTime; timeZone) | 7/18/2021 4:23:30 PM |
#      | TC6 | 6-18-2021 9:30:20 AM |  | NA | DateTimeToUTC(dateTime; timeZone) | 6/18/2021 2:30:20 AM |
#      | TC7 |  | (UTC+00:00) Dublin, Edinburgh, Lisbon, London | NA | DateTimeToUTC(dateTime; timeZone) |  |
#      | TC8 | aa | (UTC+00:00) Dublin, Edinburgh, Lisbon, London | NA | DateTimeToUTC(dateTime; timeZone) |  |
#      | TC9 | Friday, 18 June 2021 09:30:00 | aa | NA | DateTimeToUTC(dateTime; timeZone) |  |
#      | TC10 | 6-18-2021 9:30:20 AM |  | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 9:30:20 AM |
#      | TC11 | 6/18/2021 9:30:20 AM | 5 | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 9:30:25 AM |
#      | TC12 | 6.18.2021 | 15 | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 12:00:15 AM |
#      | TC13 | Friday, 18 June 2021 09:30:00 | 350 | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 9:35:50 AM |
#      | TC14 | 6.18.2021 09:30:20 | aa | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 9:30:20 AM |
#      | TC15 | 2021-06-18T09:30:00 | 15.5 | NA | AddSeconds(dateTime, numOfSecond) | 6/18/2021 9:30:15 AM |
#      | TC16 | aa |  | NA | AddSeconds(dateTime, numOfSecond) |  |
#      | TC17 | 6/18/2021 9:30:20 AM |  | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 9:30:20 AM |
#      | TC18 | 6/18/2021 9:30:20 AM | 5 | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 9:35:20 AM |
#      | TC19 | 6.18.2021 | 15 | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 12:15:00 AM |
#      | TC20 | Friday, 18 June 2021 09:30:00 | 350 | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 3:20:00 PM |
#      | TC21 | 6.18.2021 09:30:20 | aa | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 9:30:20 AM |
#      | TC22 | 2021-06-18T09:30:00 | 15.5 | NA | AddMinutes(dateTime; numOfMinute) | 6/18/2021 9:45:30 AM |
#      | TC23 | aa |  | NA | AddMinutes(dateTime; numOfMinute) |  |
#      | TC24 | 6/18/2021 9:30:20 AM |  | NA | AddHours(dateTime; numOfHour) | 6/18/2021 9:30:20 AM |
#      | TC25 | 6/18/2021 9:30:20 AM | 5 | NA | AddHours(dateTime; numOfHour) | 6/18/2021 2:30:20 PM |
#      | TC26 | 6.18.2021 | 15 | NA | AddHours(dateTime; numOfHour) | 6/18/2021 3:00:00 PM |
#      | TC27 | Friday, 18 June 2021 09:30:00 | 350 | NA | AddHours(dateTime; numOfHour) | 7/2/2021 11:30:00 PM |
#      | TC28 | 6.18.2021 09:30:20 | aa | NA | AddHours(dateTime; numOfHour) | 6/18/2021 9:30:20 AM |
#      | TC29 | 2021-06-18T09:30:00 | 15.5 | NA | AddHours(dateTime; numOfHour) | 6/19/2021 1:00:00 AM |
#      | TC30 | aa |  | NA | AddHours(dateTime; numOfHour) |  |
#      | TC31 | 6/18/2021  9:30:20 AM |  | NA | AddDays(dateTime; numOfDate) | 6/18/2021 9:30:20 AM |
#      | TC32 | 6/18/2021 9:30:20 AM | 5 | NA | AddDays(dateTime; numOfDate) | 6/23/2021 9:30:20 AM |
#      | TC33 | 6.18.2021 | 15 | NA | AddDays(dateTime; numOfDate) | 7/3/2021 12:00:00 AM |
#      | TC34 | Friday, 18 June 2021 09:30:00 | 350 | NA | AddDays(dateTime; numOfDate) | 6/3/2022 9:30:00 AM |
#      | TC35 | 6.18.2021 09:30:20 | aa | NA | AddDays(dateTime; numOfDate) | 6/18/2021 9:30:20 AM |
#      | TC36 | 2021-06-18T09:30:00 | 15.5 | NA | AddDays(dateTime; numOfDate) | 7/3/2021 9:30:00 PM |
#      | TC37 | aa |  | NA | AddDays(dateTime; numOfDate) |  |
#      | TC38 | 6/18/2021  9:30:20 AM |  | NA | AddMonths(dateTime; numOfMonth) | 6/18/2021 9:30:20 AM |
#      | TC39 | 6/18/2021 9:30:20 AM | 5 | NA | AddMonths(dateTime; numOfMonth) | 11/18/2021 9:30:20 AM |
#      | TC40 | 6.18.2021 | 15 | NA | AddMonths(dateTime; numOfMonth) | 9/18/2022 12:00:00 AM |
#      | TC41 | Friday, 18 June 2021 09:30:00 | 350 | NA | AddMonths(dateTime; numOfMonth) | 8/18/2050 9:30:00 AM |
#      | TC42 | 6.18.2021 09:30:20 | aa | NA | AddMonths(dateTime; numOfMonth) | 6/18/2021 9:30:20 AM |
#      | TC43 | 2021-06-18T09:30:00 | 15.5 | NA | AddMonths(dateTime; numOfMonth) | 6/18/2021 9:30:00 AM |
#      | TC44 | aa |  | NA | AddMonths(dateTime; numOfMonth) |  |
#      | TC45 | 6/18/2021  9:30:20 AM |  | NA | AddYears(dateTime; numOfYear) | 6/18/2021 9:30:20 AM |
#      | TC46 | 6/18/2021 9:30:20 AM | 5 | NA | AddYears(dateTime; numOfYear) | 6/18/2026 9:30:20 AM |
#      | TC47 | 6.18.2021 | 15 | NA | AddYears(dateTime; numOfYear) | 6/18/2036 12:00:00 AM |
#      | TC48 | Friday, 18 June 2021 09:30:00 | 50 | NA | AddYears(dateTime; numOfYear) | 6/18/2071 9:30:00 AM |
#      | TC49 | 6.18.2021 09:30:20 | aa | NA | AddYears(dateTime; numOfYear) | 6/18/2021 9:30:20 AM |
#      | TC50 | 2021-06-18T09:30:00 | 15.5 | NA | AddYears(dateTime; numOfYear) | 6/18/2021 9:30:00 AM |
#      | TC51 | aa |  | NA | AddYears(dateTime; numOfYear) |  |
#      | TC52 | 12/19/2022 9:10:20 AM | NA | NA | GetSecond(dateTime) | 20 |
#      | TC53 | 7.8.2025 | NA | NA | GetSecond(dateTime) | 0 |
#      | TC54 | Friday, 18 June 2021 12:12:15 | NA | NA | GetSecond(dateTime) | 15 |
#      | TC55 | 8.12.2025 20:30:20 | NA | NA | GetSecond(dateTime) | 20 |
#      | TC56 | 2020-09-18T03:48:50 | NA | NA | GetSecond(dateTime) | 50 |
#      | TC57 | aa | NA | NA | GetSecond(dateTime) |  |
#      | TC58 | 12/19/2022 9:10:20 AM | NA | NA | GetMinute(dateTime) | 10 |
#      | TC59 | 7.8.2025 | NA | NA | GetMinute(dateTime) | 0 |
#      | TC60 | Friday, 18 June 2021 12:12:15 | NA | NA | GetMinute(dateTime) | 12 |
#      | TC61 | 8.12.2025 20:30:20 | NA | NA | GetMinute(dateTime) | 30 |
#      | TC62 | 2020-09-18T03:48:50 | NA | NA | GetMinute(dateTime) | 48 |
#      | TC63 | aa | NA | NA | GetMinute(dateTime) |  |
#      | TC64 | 12/19/2022 9:10:20 AM | NA | NA | GetHour(dateTime) | 9 |
#      | TC65 | 7.8.2025 | NA | NA | GetHour(dateTime) | 0 |
#      | TC66 | Friday, 18 June 2021 12:12:15 | NA | NA | GetHour(dateTime) | 12 |
#      | TC67 | 8.12.2025 20:30:20 | NA | NA | GetHour(dateTime) | 20 |
#      | TC68 | 2020-09-18T03:48:50 | NA | NA | GetHour(dateTime) | 3 |
#      | TC69 | aa | NA | NA | GetHour(dateTime) |  |
#      | TC70 | 12/19/2022 9:10:20 AM | NA | NA | GetDay(dateTime) | 19 |
#      | TC71 | 7.8.2025 | NA | NA | GetDay(dateTime) | 8 |
#      | TC72 | Friday, 18 June 2021 12:12:15 | NA | NA | GetDay(dateTime) | 18 |
#      | TC73 | 8.12.2025 20:30:20 | NA | NA | GetDay(dateTime) | 12 |
#      | TC74 | 2020-09-18T03:48:50 | NA | NA | GetDay(dateTime) | 18 |
#      | TC75 | aa | NA | NA | GetDay(dateTime) |  |
#      | TC76 | 12/19/2022 9:10:20 AM | NA | NA | GetMonth(dateTime) | 12 |
#      | TC77 | 7.8.2025 | NA | NA | GetMonth(dateTime) | 7 |
#      | TC78 | Friday, 18 June 2021 12:12:15 | NA | NA | GetMonth(dateTime) | 6 |
#      | TC79 | 8.12.2025 20:30:20 | NA | NA | GetMonth(dateTime) | 8 |
#      | TC80 | 2020-09-18T03:48:50 | NA | NA | GetMonth(dateTime) | 9 |
#      | TC81 | aa | NA | NA | GetMonth(dateTime) |  |
#      | TC82 | 12/19/2022 9:10:20 AM | NA | NA | GetYear(dateTime) | 2022 |
#      | TC83 | 7.8.2025 | NA | NA | GetYear(dateTime) | 2025 |
#      | TC84 | Friday, 18 June 2021 12:12:15 | NA | NA | GetYear(dateTime) | 2021 |
#      | TC85 | 8.12.2025 20:30:20 | NA | NA | GetYear(dateTime) | 2025 |
#      | TC86 | 2020-09-18T03:48:50 | NA | NA | GetYear(dateTime) | 2020 |
#      | TC87 | 20.12.12 | NA | NA | GetYear(dateTime) |  |
#      | TC88 | aa | NA | NA | GetYear(dateTime) |  |
#      | TC89 | 12/19/2020 9:10:20 AM | 2021-10-19T05:48:50 | NA | TimeSpan(m; fromDate; toDate) | 437558#30#0#¤ |
#      | TC90 | Friday, 18 June 2021 12:12:15 | 7.8.2025 | NA | TimeSpan(m; fromDate; toDate) | 2131907#45#0#¤ |
#      | TC91 | Friday, 18 June 2021 05:30 AM | 2021-06-18T09:30:00 | NA | TimeSpan(m; fromDate; toDate) | 240#0#0#¤ |
#      | TC92 | 8.12.2025 20:30:20 |  | NA | TimeSpan(m; fromDate; toDate) |  |
#      | TC93 |  | 12-19-2022  9:10:20 AM | NA | TimeSpan(m; fromDate; toDate) |  |
#      | TC94 | M/dd/yyyy | MM-dd-yyyy hh:mm tt | 6/18/2021 | DateTime(of; inputFormat; outputFormat; value) | 06-18-2021 12:00 AM |
#      | TC95 | MM/dd/yyyy hh:mm tt | dddd, dd MMMM yyyy hh:mm tt | 6/18/2021  9:30:00 AM | DateTime(of; inputFormat; outputFormat; value) | Friday, 18 June 2021 09:30 AM |
#      | TC96 | dddd, dd MMMM yyyy hh:mm tt | WeekNumber | Friday, 18 June 2021 09:30 AM | DateTime(of; inputFormat; outputFormat; value) | 24 |
#      | TC97 | yyyy-MM-dd hh:mm tt | dddd, dd MMMM yyyy HH:mm:ss | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) | Friday, 18 June 2021 09:30:20 |
#      | TC98 | dddd, dd MMMM yyyy hh:mm tt | MM/dd/yyyy hh:mm tt |  | DateTime(of; inputFormat; outputFormat; value) |  |
#      | TC99 | yyyy/MM/dd hh:mm tt | dddd, dd MMMM yyyy HH:mm:ss | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) | Friday, 18 June 2021 09:30:20 |
#      | TC100 | yyyy/MM/dd hh:mm tt |  | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) | 6/18/2021 9:30:20 AM |
#      | TC101 |  | dd.MM.yy | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) | 18.06.21 |
#      | TC102 |  |  | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) | 6/18/2021 9:30:20 AM |
#      | TC103 | Default format | Default format | 6/18/2021 | DateTime(of; inputFormat; outputFormat; value) | 6/18/2021 12:00:00 AM |
#      | TC104 |  | aa | 6/18/2021  9:30:20 AM | DateTime(of; inputFormat; outputFormat; value) |  |
#      | TC105 | aa | yyyy'-'MM'-'dd'T'HH':'mm':'ss | 6.18.2021 09:30:20 | DateTime(of; inputFormat; outputFormat; value) | 2021-06-18T09:30:00 |
