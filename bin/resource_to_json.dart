import 'package:resource_to_json/resource_to_json.dart' as res;

// dart run bin/resource_to_json.dart
void main(List<String> arguments) {
  final Map<String, String> map1 = res.fromAndroidXmlString(xmlString);

  print(res.toJsonStringWithFormat(map1));

  final Map<String, String> map2 = res.fromLocalizableString(stringIOS);

  print(res.toJsonStringWithFormat(map2));
}

const stringIOS = """
/* Answer for question about Catalan */
"Catalan.Answer" = "Catalan";

/* No comment provided by engineer. */
"Catalan.Choices" = "Spanish;Catalan;French;Portuguese;Italian";

/* No comment provided by engineer. */
"Catalan.Question" = "Which language is spoken in Andorra?";

/* Correct message */
"correctly" = "correctly";

/* No comment provided by engineer. */
"DC.Answer" = "Washington D.C.";

/* No comment provided by engineer. */
"DC.Choices" = "New York City;San Francisco;Atlanta;Washington D.C.;Dallas;Los Angeles";

/* No comment provided by engineer. */
"DC.Question" = "What is the capital of the United States?";

/* Incorrect message */
"incorrectly" = "incorrectly";

/* No comment provided by engineer. */
"Mexico.Answer" = "September 16";

/* No comment provided by engineer. */
"Mexico.Choices" = "January 5;February 24;March 21;May 5;September 16;November 1;November 20";

/* No comment provided by engineer. */
"Mexico.Question" = "What day is Mexican Independence Day?";

/* No comment provided by engineer. */
"Next" = "Next";
""";
const xmlString = """
<resources xmlns:tools="http://schemas.android.com/tools">
    <string name="logout">Logout</string>
    <string name="contact_us">Contact Us</string>
    <string name="customer_service">Customer Service</string>
    <string name="store">Store</string>
    <string name="privacy_policy">Privacy Policy</string>
    <string name="policies">Policies</string>
    <string name="terms">Terms</string>
    <string name="subscription_terms">Subscription Terms</string>
</resources>

""";
