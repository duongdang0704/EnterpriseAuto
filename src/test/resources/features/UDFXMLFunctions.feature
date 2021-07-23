@UDFFunctions
Feature: UDF XML Function
  Scenario Outline: Check XML Functions
    Given I go to UDF XML Line Screen
    When I start to test XML testcase named "<XML_Testcase_Name>"
    And I enter xml para value "<XML_Para1>", "<XML_Para2>", "<XML_Para3>" and select UDF XML function "<XML_Function>"
    Then I should see the correct XML result of 2 files "<XML_Testcase_Name>" and "<XML_Result_File>"

    Examples:
      | XML_Testcase_Name    | XML_Para1                 | XML_Para2            | XML_Para3 | XML_Function                | XML_Result_File |
      | SelectNodes_TC1 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster | NA | SelectNodes(xmlText; path) | SelectNodes_TC1 |
#      | SelectNodes_TC2 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails | NA | SelectNodes(xmlText; path) | SelectNodes_TC2 |
#      | SelectNodes_TC3 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[1] | NA | SelectNodes(xmlText; path) | SelectNodes_TC3 |
#      | SelectNodes_TC4 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[last()] | NA | SelectNodes(xmlText; path) | SelectNodes_TC4 |
#      | SelectNodes_TC5 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[last()-1] | NA | SelectNodes(xmlText; path) | SelectNodes_TC5 |
#      | SelectNodes_TC6 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[position()<4] | NA | SelectNodes(xmlText; path) | SelectNodes_TC6 |
#      | SelectNodes_TC7 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002] | NA | SelectNodes(xmlText; path) | SelectNodes_TC7 |
#      | SelectNodes_TC8 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002]/MaterialNumber | NA | SelectNodes(xmlText; path) | SelectNodes_TC8 |
#      | SelectNodes_TC9 | .\Data\MaterialMaster.xml | //MaterialDetails[1] | NA | SelectNodes(xmlText; path) | SelectNodes_TC9 |
#      | SelectNodes_TC10 | .\Data\MaterialMaster.xml | //MaterialDetails/MaterialNumber[1] | NA | SelectNodes(xmlText; path) | SelectNodes_TC10 |
#      | SelectNodes_TC11 | .\Data\MaterialMaster.xml | //MaterialDetails[2]/MaterialNumber | NA | SelectNodes(xmlText; path) | SelectNodes_TC11 |
#      | SelectNodes_TC12 | .\Data\MaterialMaster.xml | //MaterialDetails[Plant<4002]/Plant | NA | SelectNodes(xmlText; path) | SelectNodes_TC12 |
#      | SelectNodes_TC13 | .\Data\MaterialMaster.xml | //MaterialDetails[Plant=4010 + 3] | NA | SelectNodes(xmlText; path) | SelectNodes_TC13 |
#      | SelectNodes_TC14 | .\Data\MaterialMaster.xml | //MaterialDetails/ArticleDescription[contains(.,'Omega 3')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC14 |
#      | SelectNodes_TC15 | .\Data\DateTime.xml | //row[1]/name | NA | SelectNodes(xmlText; path) | SelectNodes_TC15 |
#      | SelectNodes_TC16 | .\Data\XML_ISO.xml | //Body//Lines/ItemDescription | NA | SelectNodes(xmlText; path) | SelectNodes_TC16 |
#      | SelectNodes_TC17 | .\Data\XML_OneNode.xml | actor | NA | SelectNodes(xmlText; path) | SelectNodes_TC17 |
#      | SelectNodes_TC18 | .\Data\LMC_ItemData_Big data.xml | //Body//GeneralMessageHeader/MessageIdentification | NA | SelectNodes(xmlText; path) | SelectNodes_TC18 |
#      | SelectNodes_TC19 | .\Data\XML_Invalid.xml | /Body/Show | NA | SelectNodes(xmlText; path) | SelectNodes_TC19 |
#      | SelectNodes_TC20 | .\Data\Book_Attribute.xml | //book[starts-with(.,'E')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC20 |
#      | SelectNodes_TC21 | .\Data\Book_Attribute.xml | //book/title[starts-with(.,'E')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC21 |
#      | SelectNodes_TC22 | .\Data\Book_Attribute.xml | //book[ends-with(.,'.99')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC22 |
#      | SelectNodes_TC23 | .\Data\Book_Attribute.xml | //book/title[ends-with(.,'an')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC23 |
#      | SelectNodes_TC24 | .\Data\Book_Attribute.xml | //book/title[matches(.,'Harry Potter.*')] | NA | SelectNodes(xmlText; path) | SelectNodes_TC24 |
#      | SelectNodes_TC25 | .\Data\Book_Attribute.xml | //book [@lang] | NA | SelectNodes(xmlText; path) | SelectNodes_TC25 |
#      | SelectNodes_TC26 | .\Data\Book_Attribute.xml | //book [@lang='en'] | NA | SelectNodes(xmlText; path) | SelectNodes_TC26 |
#      | SelectNodes_TC27 | .\Data\Book_Attribute.xml | //book[@category='cooking' or @category='children'] | NA | SelectNodes(xmlText; path) | SelectNodes_TC27 |
#      | SelectNodes_TC28 | .\Data\Book_Attribute.xml | //book[@category='cooking' and @lang='en'] | NA | SelectNodes(xmlText; path) | SelectNodes_TC28 |
#      | SelectNodes_TC29 | .\Data\Book_Attribute.xml | //book[@category='cooking'][@lang='en'] | NA | SelectNodes(xmlText; path) | SelectNodes_TC29 |
#      | SelectNodes_TC30 | .\Data\Book_Attribute.xml | //book[last()] | NA | SelectNodes(xmlText; path) | SelectNodes_TC30 |
#      | SelectNodes_TC31 | .\Data\Book_Attribute.xml | //book[position()<3] | NA | SelectNodes(xmlText; path) | SelectNodes_TC31 |
#      | SelectNodes_TC32 | .\Data\Book_Attribute.xml | //attribute::category | NA | SelectNodes(xmlText; path) | SelectNodes_TC32 |
#      | SelectNodes_TC33 | .\Data\XML_ISO.xml | //Lines[0] | NA | SelectNodes(xmlText; path) | EndcodingNotUTF8 |
#      | SelectNodes_TC34 | .\Data\MaterialMaster.xml | . | NA | SelectNodes(xmlText; path) | SelectTheCurrentNode |
#      | SelectNodes_TC35 | .\Data\XML_EmptyNode.xml |  | NA | SelectNodes(xmlText; path) | EmptyXMLNode |
#      | SelectNodes_TC36 | .\Data\XML_Empty.xml |  | NA | SelectNodes(xmlText; path) | EmptyXMLData |
#      | GetNodeValue_TC1 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC1 |
#      | GetNodeValue_TC2 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC2 |
#      | GetNodeValue_TC3 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[1] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC3 |
#      | GetNodeValue_TC4 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[last()] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC4 |
#      | GetNodeValue_TC5 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[last()-1] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC5 |
#      | GetNodeValue_TC6 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[position()<4] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC6 |
#      | GetNodeValue_TC7 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC7 |
#      | GetNodeValue_TC8 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002]/MaterialNumber | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC8 |
#      | GetNodeValue_TC9 | .\Data\MaterialMaster.xml | //MaterialDetails[1] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC9 |
#      | GetNodeValue_TC10 | .\Data\MaterialMaster.xml | //MaterialDetails/MaterialNumber[1] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC10 |
#      | GetNodeValue_TC11 | .\Data\MaterialMaster.xml | //MaterialDetails[2]/MaterialNumber | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC11 |
#      | GetNodeValue_TC12 | .\Data\MaterialMaster.xml | //MaterialDetails[Plant<4002]/Plant | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC12 |
#      | GetNodeValue_TC13 | .\Data\MaterialMaster.xml | //MaterialDetails[Plant=4010 + 3] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC13 |
#      | GetNodeValue_TC14 | .\Data\MaterialMaster.xml | //MaterialDetails/ArticleDescription[contains(.,'Omega 3')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC14 |
#      | GetNodeValue_TC15 | .\Data\DateTime.xml | //row[1]/name | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC15 |
#      | GetNodeValue_TC16 | .\Data\XML_ISO.xml | //Body//Lines/ItemDescription | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC16 |
#      | GetNodeValue_TC17 | .\Data\XML_OneNode.xml | actor | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC17 |
#      | GetNodeValue_TC18 | .\Data\LMC_ItemData_Big data.xml | //Body//GeneralMessageHeader/MessageIdentification | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC18 |
#      | GetNodeValue_TC19 | .\Data\XML_Invalid.xml | /Body/Show | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC19 |
#      | GetNodeValue_TC20 | .\Data\Book_Attribute.xml | //book[starts-with(.,'E')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC20 |
#      | GetNodeValue_TC21 | .\Data\Book_Attribute.xml | //book/title[starts-with(.,'E')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC21 |
#      | GetNodeValue_TC22 | .\Data\Book_Attribute.xml | //book[ends-with(.,'.99')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC22 |
#      | GetNodeValue_TC23 | .\Data\Book_Attribute.xml | //book/title[ends-with(.,'an')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC23 |
#      | GetNodeValue_TC24 | .\Data\Book_Attribute.xml | //book/title[matches(.,'Harry Potter.*')] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC24 |
#      | GetNodeValue_TC25 | .\Data\Book_Attribute.xml | //book [@lang] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC25 |
#      | GetNodeValue_TC26 | .\Data\Book_Attribute.xml | //book [@lang='en'] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC26 |
#      | GetNodeValue_TC27 | .\Data\Book_Attribute.xml | //book[@category='cooking' or @category='children'] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC27 |
#      | GetNodeValue_TC28 | .\Data\Book_Attribute.xml | //book[@category='cooking' and @lang='en'] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC28 |
#      | GetNodeValue_TC29 | .\Data\Book_Attribute.xml | //book[@category='cooking'][@lang='en'] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC29 |
#      | GetNodeValue_TC30 | .\Data\Book_Attribute.xml | //book[last()] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC30 |
#      | GetNodeValue_TC31 | .\Data\Book_Attribute.xml | //book[position()<3] | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC31 |
#      | GetNodeValue_TC32 | .\Data\Book_Attribute.xml | //attribute::category | NA | GetNodeValue(xmlText; path) | GetNodeValue_TC32 |
#      | GetNodeValue_TC33 | .\Data\XML_ISO.xml | //Lines[0] | NA | GetNodeValue(xmlText; path) | EndcodingNotUTF8 |
#      | GetNodeValue_TC34 | .\Data\MaterialMaster.xml | . | NA | GetNodeValue(xmlText; path) | SelectTheCurrentNode |
#      | GetNodeValue_TC35 | .\Data\XML_EmptyNode.xml |  | NA | GetNodeValue(xmlText; path) | EmptyXMLNode |
#      | GetNodeValue_TC36 | .\Data\XML_Empty.xml |  | NA | GetNodeValue(xmlText; path) | EmptyXMLData |
#      | GetNodeValues_TC1 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[last()-1] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC1 |
#      | GetNodeValues_TC2 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[position()<4] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC2 |
#      | GetNodeValues_TC3 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC3 |
#      | GetNodeValues_TC4 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002]/MaterialNumber | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC4 |
#      | GetNodeValues_TC5 | .\Data\MaterialMaster.xml | //MaterialDetails[2]/MaterialNumber | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC5 |
#      | GetNodeValues_TC6 | .\Data\MaterialMaster.xml | //MaterialDetails[Plant<4002]/Plant | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC6 |
#      | GetNodeValues_TC7 | .\Data\DateTime.xml | //row[1]/name | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC7 |
#      | GetNodeValues_TC8 | .\Data\XML_ISO.xml | //Body//Lines/ItemDescription | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC8 |
#      | GetNodeValues_TC9 | .\Data\XML_OneNode.xml | actor | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC9 |
#      | GetNodeValues_TC10 | .\Data\LMC_ItemData_Big data.xml | //Body//GeneralMessageHeader/MessageIdentification | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC10 |
#      | GetNodeValues_TC11 | .\Data\Book_Attribute.xml | //book[starts-with(.,'E')] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC11 |
#      | GetNodeValues_TC12 | .\Data\Book_Attribute.xml | //book/title[starts-with(.,'E')] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC12 |
#      | GetNodeValues_TC13 | .\Data\Book_Attribute.xml | //book[ends-with(.,'.99')] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC13 |
#      | GetNodeValues_TC14 | .\Data\Book_Attribute.xml | //book/title[ends-with(.,'an')] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC14 |
#      | GetNodeValues_TC15 | .\Data\Book_Attribute.xml | //book/title[matches(.,'Harry Potter.*')] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC15 |
#      | GetNodeValues_TC16 | .\Data\Book_Attribute.xml | //book[@category='cooking' or @category='children'] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC16 |
#      | GetNodeValues_TC17 | .\Data\Book_Attribute.xml | //book[@category='cooking' and @lang='en'] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC17 |
#      | GetNodeValues_TC18 | .\Data\Book_Attribute.xml | //book[@category='cooking'][@lang='en'] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC18 |
#      | GetNodeValues_TC19 | .\Data\Book_Attribute.xml | //book[position()<3] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC19 |
#      | GetNodeValues_TC20 | .\Data\Book_Attribute.xml | //attribute::category | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC20 |
#      | GetNodeValues_TC21 | .\Data\XML_ISO.xml | //Lines[0] | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC21 |
#      | GetNodeValues_TC22 | .\Data\MaterialMaster.xml | . | NA | GetNodeValues(xmlText; path) | GetNodeValues_TC22 |
#      | GetNodeValues_TC23 | .\Data\XML_EmptyNode.xml |  | NA | GetNodeValues(xmlText; path) | EmptyXMLNode |
#      | GetNodeValues_TC24 | .\Data\XML_Empty.xml |  | NA | GetNodeValues(xmlText; path) | EmptyXMLData |
#      | SetNodeValue_TC1 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002] | 12/19/2022 9:10:20 AM & ˀnsɡ̊ 好詞 C@de1T | SetNodeValue(xmlText; path; value) | SetNodeValue_TC1 |
#      | SetNodeValue_TC2 | .\Data\MaterialMaster.xml | //MaterialDetails[2]/MaterialNumber | 956223 | SetNodeValue(xmlText; path; value) | SetNodeValue_TC2 |
#      | SetNodeValue_TC3 | .\Data\XML_ISO.xml | //Body//Lines/ItemDescription | 2019-08-10 | SetNodeValue(xmlText; path; value) | SetNodeValue_TC3 |
#      | SetNodeValue_TC4 | .\Data\XML_OneNode.xml | actor | 123.456 | SetNodeValue(xmlText; path; value) | SetNodeValue_TC4 |
##    | SetNodeValue_TC5 | .\Data\LMC_ItemData_Big data.xml | //Body//GeneralMessageHeader/MessageIdentification | Wednesday, 30 June 2021 15:30 PM | SetNodeValue(xmlText; path; value) | SetNodeValue_TC5 |
#      | SetNodeValue_TC6 | .\Data\Book_Attribute.xml | //book[@category='cooking'][@lang='en'] | 2020-09-18T03:48:50 | SetNodeValue(xmlText; path; value) | SetNodeValue_TC6 |
#      | SetNodeValue_TC7 | .\Data\Book_Attribute.xml | //attribute::category | öäüæøåd̥æˀnsɡ̊你好詞C@de1T!#$&* | SetNodeValue(xmlText; path; value) | SetNodeValue_TC7 |
#      | SetNodeValue_TC8 | .\Data\MaterialMaster.xml | . | 12/19/2022 9:10:20 AM & ˀnsɡ̊ 好詞 C@de1T | SetNodeValue(xmlText; path; value) | EmptyXMLData |
#      | SetNodeValue_TC9 | .\Data\XML_ISO.xml | //Lines[0] | 12/19/2022 9:10:20 AM & ˀnsɡ̊ 好詞 C@de1T | SetNodeValue(xmlText; path; value) | EndcodingNotUTF8 |
#      | SetNodeValue_TC10 | .\Data\XML_EmptyNode.xml |  | 12/19/2022 9:10:20 AM & ˀnsɡ̊ 好詞 C@de1T | SetNodeValue(xmlText; path; value) | EmptyXMLNode |
#      | SetNodeValue_TC11 | .\Data\XML_Empty.xml |  | 12/19/2022 9:10:20 AM & ˀnsɡ̊ 好詞 C@de1T | SetNodeValue(xmlText; path; value) | EmptyXMLData |
#      | SelectSingleNode_TC1 | .\Data\MaterialMaster.xml | /ns0:MaterialMaster/MaterialDetails[Plant>4002] | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC1 |
#      | SelectSingleNode_TC2 | .\Data\MaterialMaster.xml | //MaterialDetails[2]/MaterialNumber | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC2 |
#      | SelectSingleNode_TC3 | .\Data\XML_ISO.xml | //Body//Lines/ItemDescription | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC3 |
#      | SelectSingleNode_TC4 | .\Data\XML_OneNode.xml | actor | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC4 |
#      | SelectSingleNode_TC5 | .\Data\LMC_ItemData_Big data.xml | //Body//GeneralMessageHeader/MessageIdentification | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC5 |
#      | SelectSingleNode_TC6 | .\Data\Book_Attribute.xml | //book[@category='cooking'][@lang='en'] | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC6 |
#      | SelectSingleNode_TC7 | .\Data\Book_Attribute.xml | //attribute::category | NA | SelectSingleNode(xmlText; xpath) | SelectSingleNode_TC7 |
#      | SelectSingleNode_TC8 | .\Data\MaterialMaster.xml | . | NA | SelectSingleNode(xmlText; xpath) | SelectTheCurrentNode |
#      | SelectSingleNode_TC9 | .\Data\XML_ISO.xml | //Lines[0] | NA | SelectSingleNode(xmlText; xpath) | EndcodingNotUTF8 |
#      | SelectSingleNode_TC10 | .\Data\XML_EmptyNode.xml |  | NA | SelectSingleNode(xmlText; xpath) | EmptyXMLNode |
#      | SelectSingleNode_TC11 | .\Data\XML_Empty.xml |  | NA | SelectSingleNode(xmlText; xpath) | EmptyXMLData |
#      | GetAttributeValues_TC1 | .\Data\Book_Attribute.xml | //book | lang | GetAttributeValues(xmlText; xpath; attributeName) | GetAttributeValues_TC1 |
#      | GetAttributeValues_TC2 | .\Data\Book_Attribute.xml | //book | category | GetAttributeValues(xmlText; xpath; attributeName) | GetAttributeValues_TC2 |
#      | GetAttributeValues_TC3 | .\Data\Book_Attribute.xml | //book | categorytest | GetAttributeValues(xmlText; xpath; attributeName) | GetAttributeValues_TC3 |
#      | GetAttributeValues_TC4 | .\Data\Book_Attribute.xml | //book |  | GetAttributeValues(xmlText; xpath; attributeName) | GetAttributeValues_TC4 |
#      | XmlToText | .\Data\Book_Attribute.xml | NA | NA | XmlToText(xmlText) | XmlToText |
#      | TextToXml | .\Data\XmlToText.txt | NA | NA | TextToXml(xmlText) | TextToXml |
#      | XMLStatistics_Sum | .\Data\Book_Attribute.xml | sum(//book/price) | NA | XMLStatistics(xmlText; func) | XMLStatistics_Sum |
#      | XMLStatistics_Count | .\Data\Book_Attribute.xml | count(//book) | NA | XMLStatistics(xmlText; func) | XMLStatistics_Count |