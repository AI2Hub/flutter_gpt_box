English | [简体中文](README_zh.md)

<h2 align="center">
  Flutter GPT Box
</h2>

<p align="center">
A third-party GPT Client for OpenAI API on all platforms.
<br>
<a href="https://gpt.lolli.tech/">Try on web</a> (suggest using app for better performance)
</p>

<!-- Badges-->
<p align="center">
  <img alt="lang" src="https://img.shields.io/badge/lang-dart-pink">
  <img alt="countly" src="https://img.shields.io/badge/analysis-countly-pink">
  <img alt="license" src="https://img.shields.io/badge/license-GPLv3-pink">
</p>


## 🏙️ Screenshots
<table>
  <tr>
    <td>
	    <img width="277px" src="media/main.png">
    </td>
    <td>
	    <img width="277px" src="media/history.png">
    </td>
    <td>
	    <img width="277px" src="media/settings.png">
    </td>
  </tr>
</table>


## ⬇️ Use
[iOS](https://apps.apple.com/app/id6476033062) / [Android](https://res.lolli.tech/gpt/latest.apk) / [macOS](https://apps.apple.com/app/id6476033062) / [Linux](https://res.lolli.tech/gpt/latest.AppImage) / [Windows](https://res.lolli.tech/gpt/latest.win.zip) / [Web](https://gpt.lolli.tech/)

- Web performance is poor, it is recommended to use the app.
- Due to Chinese government policy and the [BEIAN](https://github.com/lollipopkit/flutter_server_box/discussions/180) issue. Please download it from other regions of AppStore.
- Security:
  - To prevent injection attacks and etc., please don't download from untrusted sources.
  - Since `Linux / Windows` is signed with flutter default certificate, it is recommended to [build it yourself](https://github.com/lollipopkit/flutter_server_box/wiki#compile-yourself).


## 🆘 Help
Before you open an issue, please read the following:
1. Paste the **entire log** (click the top right of the home page) in the issue template.
2. Make sure whether the issue is caused by this app.
3. Welcome all valid and positive feedback, subjective feedback (such as you think other UI is better) may not be accepted.

After you read the above, you can:
- If you have **any question or feature request**, please open a [discussion](https://github.com/lollipopkit/flutter_gpt_box/discussions/new/choose).  
- If app has **any bug**, please open an [issue](https://github.com/lollipopkit/flutter_gpt_box/issues/new).


## 🧱 Contribution
**Any positive contribution is welcome**.

### 🌍 l10n
1. Fork this repo and clone forked repo to your local machine.
2. Create `arb` file in `lib/l10n/` directory
   - File name should be `intl_XX.arb`, where `XX` is the language code. Such as `intl_en.arb` for English and `intl_zh.arb` for Chinese.
3. Add content to the file. You can refer to `intl_en.arb` and `intl_zh.arb` for the format.
4. Run `flutter gen-l10n` to generate files.
5. Pull commit to your forked repo.
6. Request a pull request on my repo.


## 📝 License
`GPL v3 lollipopkit`

