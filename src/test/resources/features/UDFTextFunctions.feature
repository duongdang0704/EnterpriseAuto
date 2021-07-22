Feature: UDF Text Functions
  Scenario Outline: Check UDF Text Functions
    Given I go to UDF Text Line Screen
    When I want to test Text function id "<Testcase_ID>"
    And I enter text para value "<Text_Para1>", "<Text_Para2>", "<Text_Para3>" and select UDF Text function "<Text_Function>"
    Then I should see the correct text result "<Text_Result>" from "<Text_Function>"
    Examples:
      | Testcase_ID | Text_Para1                      | Text_Para2   | Text_Para3     |  Text_Function                    | Text_Result                   |
      | TC1|                                 |                |                | Concatenate(text1; text2; text3)  |                               |
      | TC2      | He11o                           | öäüæøåd̥æˀnsɡ̊  | 你好詞           | Concatenate(text1; text2; text3)  | He11oöäüæøåd̥æˀnsɡ̊你好詞        |
      | TC3      |                                 |                | C@de1T!@#$&*   | Concatenate(text1; text2; text3)  | C@de1T!@#$&*                   |
      | TC4      | Hello                           | [space]        | word           | Concatenate(text1; text2; text3)  | Hello word                     |
      | TC5      |                                 | NA             | NA             | GetText(text)                     |                                |
      | TC6      | öäüæøåd̥æˀnsɡ̊你好詞C@de1T!@#$&*   | NA             | NA             | GetText(text)                     | öäüæøåd̥æˀnsɡ̊你好詞C@de1T!@#$&* |
      | TC7      |                                 | NA             | NA             | GS1AddChecksum(text)              | 0                              |
      | TC8      | 8484585945                      | NA             | NA             | GS1AddChecksum(text)              | 84845859450                    |
      | TC9      | 1506                            | NA             | NA             | GS1AddChecksum(text)              | 15066                          |
      | TC10      | 123a                            | NA             | NA             | GS1AddChecksum(text)              | 123a-1                         |
      | TC11      |                                 | NA             | NA             | Length(text)                      | 0 |
      | TC12      | [space]C0deIT                   | NA             | NA             | Length(text)                      | 7 |
      | TC13      | öäüæøåd̥æˀnsɡ̊你好詞C@de1T!@#$&*¤  | NA             | NA             | Length(text)                      | 30 |
      | TC14      | Welc0me t0 C0deIT!              | NA             | NA             | Length(text)                      | 18 |
      | TC15      |                                 | NA             | NA             | LowerCase(text)                   |  |
      | TC16      | öäüæøåd̥æˀnsɡ̊                   | NA              | NA            | LowerCase(text)                   | öäüæøåd̥æˀnsɡ̊ |
      | TC17      | ÖÄÜÆØÅD̥ÆˀNSɡ̊                   | NA              | NA            | LowerCase(text)                   | öäüæøåd̥æˀnsɡ̊ |
      | TC18      | öäüæØÅD̥Æˀnsɡ̊你好詞C@de1T!@#$&*¤ | NA              | NA             | LowerCase(text)                  | öäüæøåd̥æˀnsɡ̊你好詞c@de1t!@#$&*¤ |
      | TC19      |                                 | NA              | NA             | UpperCase(text)                  |  |
      | TC20      | öäüæøåd̥æˀnsɡ̊                   | NA              | NA             | UpperCase(text)                  | ÖÄÜÆØÅD̥ÆˀNSɡ̊ |
      | TC21      | ÖÄÜÆØÅD̥ÆˀNSɡ̊                   | NA              | NA             | UpperCase(text)                  | ÖÄÜÆØÅD̥ÆˀNSɡ̊ |
      | TC22      | öäüæØÅD̥Æˀnsɡ̊你好詞C@de1T!@#$&*¤ | NA               | NA             | UpperCase(text)                  | ÖÄÜÆØÅD̥ÆˀNSɡ̊你好詞C@DE1T!@#$&*¤ |
      | TC23      | Welcome to codeIT!              | co              | c0             | Replace(text; oldText; newText)  | Welc0me to c0deIT! |
      | TC24      | Welcome to codeIT!              | hello           | hi             | Replace(text; oldText; newText)  | Welcome to codeIT! |
      | TC25      | Welcome to codeIT!              | co              |                | Replace(text; oldText; newText)  | Welme to deIT! |
      | TC26      | Welcome to codeIT!              |                 | c0             | Replace(text; oldText; newText)  |  |
      | TC27      | Welcome to codeIT!              |                 |                | Replace(text; oldText; newText)  |  |
      | TC28      |                                 |                 |                | Replace(text; oldText; newText)  |  |
      | TC29      |                                 | co              | C0             | Replace(text; oldText; newText)  |  |
      | TC30      | aa bb aa cc dd aa               | a               | NA             | Trim(text; trimChars)            | [space]bb aa cc dd[space] |
      | TC31      | aa bb aa cc dd aa               | aa              | NA             | Trim(text; trimChars)            | [space]bb aa cc dd[space] |
      | TC32      | aa bb aa cc dd aa               | bb              | NA             | Trim(text; trimChars)            | aa bb aa cc dd aa |
      | TC33      | aa bb aa cc dd aa               |                 | NA             | Trim(text; trimChars)            | aa bb aa cc dd aa |
#      | TC34      | aa bb aa cc dd aa               | Char(10)        | NA             | Trim(text; trimChars)            | aa bb aa cc dd aa |
      | TC35      |                                 |                 | NA             | Trim(text; trimChars)            |  |
      | TC36      | aa bb aa cc dd aa               |                 | NA             | Trim(text; trimChars)            | aa bb aa cc dd aa |
      | TC37      |                                 | abc             | NA             | Trim(text; trimChars)            |  |
      | TC38      | aa bb aa cc dd aa               | a               | NA             | TrimStart(text; trimChars)       | [space]bb aa cc dd aa |
      | TC39      | aa bb aa cc dd aa               | aa              | NA             | TrimStart(text; trimChars)       | [space]bb aa cc dd aa |
      | TC40      | aa bb aa cc dd aa               | bb              | NA             | TrimStart(text; trimChars)       | aa bb aa cc dd aa |
      | TC41      | aa bb aa cc dd aa               |                 | NA             | TrimStart(text; trimChars)       | aa bb aa cc dd aa |
#      | TC42      | aa bb aa cc dd aa               | Char(10)        | NA             | TrimStart(text; trimChars)       | aa bb aa cc dd aa |
      | TC43      |                                 |                 | NA             | TrimStart(text; trimChars)       |  |
      | TC44      | aa bb aa cc dd aa               |                 | NA             | TrimStart(text; trimChars)       | aa bb aa cc dd aa |
      | TC45      |                                 | abc             | NA             | TrimStart(text; trimChars)       |  |
      | TC46      | aa bb aa cc dd aa               | a               | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd[space] |
      | TC47      | aa bb aa cc dd aa               | aa              | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd[space] |
      | TC48      | aa bb aa cc dd aa               | bb              | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd aa |
      | TC49      | aa bb aa cc dd aa               |                 | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd aa |
#      | TC50      | aa bb aa cc dd aa               | Char(10)        | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd aa |
      | TC51      |                                 |                 | NA             | TrimEnd(text; trimChars)         |  |
      | TC52      | aa bb aa cc dd aa               |                 | NA             | TrimEnd(text; trimChars)         | aa bb aa cc dd aa |
      | TC53      |                                 | abc             | NA             | TrimEnd(text; trimChars)         |  |
      | TC54      | Welcome to CodeIT!              | 3               | 4              | SubString(text; strartIndex; Num length_opt) | come |
      | TC55      | Welcome to CodeIT!              | 3               | 50             | SubString(text; strartIndex; Num length_opt) | come to CodeIT! |
      | TC56      | Welcome to CodeIT!              | 3               | a              | SubString(text; strartIndex; Num length_opt) |  |
      | TC57      | Welcome to CodeIT!              | a               | 5              | SubString(text; strartIndex; Num length_opt) |  |
      | TC58      | Welcome to CodeIT!              | -3              | 5              | SubString(text; strartIndex; Num length_opt) |  |
      | TC59      |                                 |                 |                | SubString(text; strartIndex; Num length_opt) |  |
      | TC60      | Welcome to CodeIT!              | 3               |                | SubString(text; strartIndex; Num length_opt) |  |
      | TC61      | Welcome to CodeIT!              |                 | 5              | SubString(text; strartIndex; Num length_opt) |  |
      | TC62      | Welcome to codeIT!              | [space]         | NA             | Split(text; splitchar)            | Welcome#to#codeIT!#¤ |
      | TC63      | Welcome to codeIT!              | o               | NA             | Split(text; splitchar)            | Welc#me t# c#deIT!#¤ |
      | TC64      | Welcome to codeIT!              | co              | NA             | Split(text; splitchar)            | Wel#me to #deIT!#¤ |
      | TC65      | Welcome to codeIT!              | Char(10)        | NA             | Split(text; splitchar)            | Welcome to codeIT!#¤ |
      | TC66      | Welcome to codeIT!              | abc             | NA             | Split(text; splitchar)            | Welcome to codeIT!#¤ |
      | TC67      |                                 |                 | NA             | Split(text; splitchar)            | #¤ |
      | TC68      |                                 | abc             | NA             | Split(text; splitchar)            | #¤ |
      | TC69      | Welcome to codeIT!              |                 | NA             | Split(text; splitchar)            | Welcome to codeIT!#¤ |
      | TC70      | 9                               | #               | 1234           | PaddingLeft(l; Num count; Text char; Text text) | #####1234 |
      | TC71      | 9                               | *#              | abcd           | PaddingLeft(l; Num count; Text char; Text text) | *****abcd |
      | TC72      | 9                               | abc             | 1234           | PaddingLeft(l; Num count; Text char; Text text) | aaaaa1234 |
      | TC73      |                                 | [space]         | 1234           | PaddingLeft(l; Num count; Text char; Text text) | 1234 |
      | TC74      |                                 |                 |                | PaddingLeft(l; Num count; Text char; Text text) |  |
      | TC75      | 9                               |                 | 1234           | PaddingLeft(l; Num count; Text char; Text text) |  |
      | TC76      |                                 | #               | 1234           | PaddingLeft(l; Num count; Text char; Text text) | 1234 |
      | TC77      |                                 | #               |                | PaddingLeft(l; Num count; Text char; Text text) |  |
      | TC78      | Welcome to codeIT!              |                 | NA             | IndexOf(t; f; text; searchText)     | 0 |
      | TC79      | Welcome to codeIT!              | c               | NA             | IndexOf(t; f; text; searchText)     | 3 |
      | TC80      | Welcome to codeIT!              | co              | NA             | IndexOf(t; f; text; searchText)     | 3 |
      | TC81      | Welcome to codeIT!              | #               | NA             | IndexOf(t; f; text; searchText)     | -1 |
      | TC82      |                                 |                 | NA             | IndexOf(t; f; text; searchText)     | 0 |
      | TC83      |                                 | #               | NA             | IndexOf(t; f; text; searchText)     | -1 |
      | TC84      | H$110 C@deIT!                   | NA              | NA             | ByteArray(text)                     | 72#36#49#49#48#32#67#64#100#101#73#84#33#¤ |
      | TC85      | öäü æø åd̥æˀnsɡ̊ 你好詞            | NA              | NA             | ByteArray(text)                     | 246#228#252#32#230#248#32#229#100#37#230#192#110#115#97#10#32#96#125#94#¤ |
      | TC86      |                                 | NA              | NA             | ByteArray(text)                     | ¤ |
      | TC87      | 77                              | NA              | NA              | Char(ascii value)                   | M |
#      | TC88      | 65535                           | NA              | NA              | Char(ascii value)                   | ￿ |
      | TC89      | 65536                           | NA              | NA              | Char(ascii value)                   |  |
      | TC90      | 32                              | NA              | NA              | Char(ascii value)                   | [space] |
      | TC91      | 35422                           |                 |                 | Char(ascii value)                   | 詞 |
      | TC92      | M                               | NA              | NA              | Asc(char value)                     | 77 |
#      | TC93      | ￿                               | NA              | NA              | Asc(char value)                     | 65535 |
      | TC94      | 詞                               | NA              | NA              | Asc(char value)                     | 35422 |
      | TC95      |                                 | NA              | NA              | Asc(char value)                     |  |
      | TC96      | abc                             | NA              | NA              | Asc(char value)                     |  |
      | TC97      |                                 |                 | NA              | GetFieldSubItem(fieldName; key)     |  |
      | TC98      | Translation.LowerCase           | NA              | NA              | GetTranslation(key)                 | Chữ thường |
      | TC99      | abc123                          | NA              | NA              | GetTranslation(key)                 | abc123 |
      | TC100      |                                 | NA              | NA              | GetTranslation(key)                 |  |
      | TC101      | Translation.ABC                 | NA              | NA              | GetTranslation(key)                 | Translation.ABC |
      | TC102      | 1099883773#310390               | 3103            | #     | GetAIValue(text; AINumber; separatorChar_opt) | 90 |
      | TC103      | 1099883773#310390               | 3103            |       | GetAIValue(text; AINumber; separatorChar_opt) | 90 |
      | TC104      |                                 |                 |       | GetAIValue(text; AINumber; separatorChar_opt) |  |
      | TC105      | 1099883773#310390               | 3103            | *     | GetAIValue(text; AINumber; separatorChar_opt) |  |
      | TC106      | 1099883773#310391               |                 |       | GetAIValue(text; AINumber; separatorChar_opt) |  |
      | TC107      | 1099883773#310391               |                 | #     | GetAIValue(text; AINumber; separatorChar_opt) |  |
      | TC108      | 1099883773#310391               | 1111            |       | GetAIValue(text; AINumber; separatorChar_opt) |  |
      | TC109      | öäü æø åd̥æˀnsɡ̊ 你好詞¤           |                 |       | ConvertString(text; fromCodePage; toCodePage) | öäü æø åd̥æˀnsɡ̊ 你好詞¤ |
      | TC110      | öäü æø åd̥æˀnsɡ̊ 你好詞¤           | utf-8           | iso-8859-1    | ConvertString(text; fromCodePage; toCodePage) | Ã¶Ã¤Ã¼ Ã¦Ã¸ Ã¥dÌ¥Ã¦ËnsÉ¡Ì ä½ å¥½è©Â¤ |
      | TC111      | öäü æø åd̥æˀnsɡ̊ 你好詞¤           |                 | iso-8859-1    | ConvertString(text; fromCodePage; toCodePage) | öäü æø åd̥æˀnsɡ̊ 你好詞¤ |
      | TC112      | öäü æø åd̥æˀnsɡ̊ 你好詞¤           | AA              | BB            | ConvertString(text; fromCodePage; toCodePage) | öäü æø åd̥æˀnsɡ̊ 你好詞¤ |
      | TC113      |                                 | utf-8           | iso-8859-1    | ConvertString(text; fromCodePage; toCodePage) |  |
      | TC114      | 212-555-6666            | (\d{3})-(\d{3}-\d{4}) |         | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | 212-555-6666#3#212-555-6666#212#555-6666#¤ |
      | TC115      | 212-555-6666            | (\d{3})-(\d{3}-\d{4}) | 1       | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | 212 |
      | TC116      | 212-555-6666            | (\d{3})-(\d{3}-\d{4}) | a       | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | 212-555-6666#3#212-555-6666#212#555-6666#¤ |
      | TC117      | 212-555-6666            | (\d{3})-(\d{3}-\d     |         | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | 212-555-6666  |
      | TC118      | 11-22-33-44             | (\d{3})-(\d{3}-\d{4}) |         | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) |  |
      | TC119      |                         |                       |         | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | #1##¤ |
      | TC120      | 55-66                   |                       |         | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | #1##¤#1##¤#1##¤#1##¤#1##¤#1##¤ |
      | TC121      | 55-66                   |                       | 0       | RegexMatches(Text text; Text regrexPattern; Num selectedGroupIndex) | #¤#¤#¤#¤#¤#¤ |
      | TC122      | https://www.google.com/search?q=CodeIT  | NA    | NA      | UrlEncode(string str) | https%3a%2f%2fwww.google.com%2fsearch%3fq%3dCodeIT |
      | TC123      | öäüæø@你好詞                             | NA     | NA     | UrlEncode(string str) | %c3%b6%c3%a4%c3%bc%c3%a6%c3%b8%40%e4%bd%a0%e5%a5%bd%e8%a9%9e |
      | TC124      | %c3%b6%c3%a4%c3%bc%c3%a6%c3%b8%40%e4%bd%a0%e5%a5%bd%e8%a9%9e | NA | NA | UrlDecode(string str) | öäüæø@你好詞 |
      | TC125      | https%3a%2f%2fwww.google.com%2fsearch%3fq%3dcodeit           | NA | NA | UrlDecode(string str) | https://www.google.com/search?q=codeit |