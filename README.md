# resource_to_json
 Conver content Android strings.xml file, content iOS Localizable.strings file to JSON content 

# Run 

```
dart run bin/resource_to_json.dart

```

### Android strings.xml 

```xml
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

```

```json
{
  "logout": "Logout",
  "contact_us": "Contact Us",
  "customer_service": "Customer Service",
  "store": "Store",
  "privacy_policy": "Privacy Policy",
  "policies": "Policies",
  "terms": "Terms",
  "subscription_terms": "Subscription Terms"
}

```

### iOS Localizable.strings


```strings

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

```


```json

{
  "Catalan.Answer": "Catalan",
  "Catalan.Choices": "Spanish;Catalan;French;Portuguese;Italian",
  "Catalan.Question": "Which language is spoken in Andorra?",
  "correctly": "correctly",
  "DC.Answer": "Washington D.C.",
  "DC.Choices": "New York City;San Francisco;Atlanta;Washington D.C.;Dallas;Los Angeles",
  "DC.Question": "What is the capital of the United States?",
  "incorrectly": "incorrectly",
  "Mexico.Answer": "September 16",
  "Mexico.Choices": "January 5;February 24;March 21;May 5;September 16;November 1;November 20",
  "Mexico.Question": "What day is Mexican Independence Day?",
  "Next": "Next"
}

```