# SwiftUI-Localization-Demo

A demo project showcasing **localization in SwiftUI** using `LocalizedStringKey`, `.strings` files, and `LocalizedStringResource`. Includes examples for English, German, and Hindi, plus support for RTL languages.

---

## 🚀 Features
- Localized vs non-localized text examples
- Use of `LocalizedStringKey` in SwiftUI views
- `.strings` files for English, Hindi, German
- Enum localization with `Picker`
- Extra localization catalog using `LocalizedStringResource(table:)`
- Dynamic string interpolation with localized templates
- Previews for multiple locales (EN, DE, HI)

---

## 📂 Structure
- `LocalizationDemoView` → main demo screen
- `TitleView` → shows difference between `String` and `LocalizedStringKey`
- `EnumView` → localized directions (North, South, East, West)
- `ExtraLocalizableTable` → demonstrates extra catalog usage
- `TextBookStoreView` → localized dynamic strings with counts

---

## 🧪 Testing
- Run in Simulator with different languages (English, Hindi, German)
- Verify RTL layouts with Arabic/Hebrew added in ExtraLocalizable 

---

## 🎤 Interview Angle
> “I prepared this demo to show how SwiftUI handles localization. It highlights localized vs non-localized text, enum cases, extra catalogs, and dynamic strings. I tested with multiple locales and RTL languages to ensure global readiness.”

---

## 📸 Previews
- English
- German
- Hindi

---

## 📷 Screenshots

<table>
  <tr>
    <td align="center">
      <img src="Screenshots/Hindi.png" alt="Hindi" width="250"/><br/>
      Hindi
    </td>
    <td align="center">
      <img src="Screenshots/Arabic.png" alt="Arabic" width="250"/><br/>
      Arabic
    </td>
    <td align="center">
      <img src="Screenshots/German.png" alt="German" width="250"/><br/>
      German
    </td>
    <td align="center">
      <img src="Screenshots/English.png" alt="English" width="250"/><br/>
      English
    </td>
  </tr>
</table>


