## RN setup

- Basically, follow the official documentation for the version you wish to use
  - https://reactnative-archive-august-2023.netlify.app/docs/0.69/environment-setup

### Common

- `brew install watchman`
- [`main`/docs/init.md#using-npx-utility](https://github.com/react-native-community/cli/blob/main/docs/init.md?rgh-link-date=2023-02-06T09%3A48%3A43Z#using-npx-utility)
  - The reason for adding `--npm`:
    - If you have both `yarn` and `npm` installed on your machine, React Native CLI will always try to use `yarn`, so even if you use `npx` utility, only `react-native` executable will be installed using `npm` and the rest of the work will be delegated to `yarn`. You can force usage of npm adding `--npm` flag to the command.

### IOS

- Install xcode
  - [https://developer.apple.com/download/all/?q=Xcode](https://developer.apple.com/download/all/?q=Xcode)
- Install rbenv
  - `brew install rbenv ruby-build`
  - `.zshrc` > `eval "$(rbenv init - zsh)"` > `source .zshrc`
  - `rbenv install -l` > check available ruby version
  - `rbenv install 3.2.2` > install specific ruby version
  - `rbenv versions` > check current rbenv version
  - `which ruby`
    - `/usr/bin/ruby` > mac default ruby
    - `/Users/hyerichung/.rbenv/shims/ruby` > rbenv ruby
  - `ruby -v`
    - `ruby 2.6.10p210 (2022-04-12 revision 67958) [universal.x86_64-darwin22]` > mac default ruby
    - `ruby 3.2.2 (2023-03-30 revision e51014f9c0) [x86_64-darwin22]` > rbenv ruby
  - `rbenv global 3.2.2` > change ruby version
- Install cocoapods
  - `sudo gem install cocoapods`
    - But I've got the error from `pod --version`, during the build
    - `gem which cocoapods` > check cocoapods version
      - `/Users/hyerichung/.rbenv/versions/3.2.2/lib/ruby/gems/3.2.0/...`
  - I alternatively used `brew install cocoapods`
    - In case you've got the error below, overwrite it with `brew link --overwrite cocoapods`

```
Error: The `brew link` step did not complete successfully The formula built, but is not symlinked into /usr/local Could not symlink bin/xcodeproj Target /usr/local/bin/xcodeproj already exists. You may want to remove it: rm '/usr/local/bin/xcodeproj' To force the link and overwrite all conflicting files: brew link --overwrite cocoapods To list all files that would be deleted: brew link --overwrite --dry-run cocoapods Possible conflicting files are: /usr/local/bin/xcodeproj
```

- Clear the cache of pod

```
rm -rf ~/Library/Caches/CocoaPods
rm -rf Pods
rm -rf ~/Library/Developer/Xcode/DerivedData/*
pod deintegrate
pod setup
```

- Install Simulator OS
  - xcode > Settings > Platforms > + at the bottom > iOS > add Simulator OS
- Install Simulator model
  - xcode > workspace > select the device at the top > Manage run destination > Simulators > + at the bottom > add Simulator model
- When does Xcode/DerivedData contents get created? > when xcode is launched
  - xcode > Settings > Locations > Derived Data - default location
- `xcrun simctl list` > Simulator list
- `xcrun simctl shutdown 6180179F-9586-4DC9-9E9F-C397901176E8` > turn off the Simulator

### AOS

- Install Java
  - zulu - support both m1, intel
  - `brew tap homebrew/cask-versions` > java version management
  - `brew install --cask zulu11`
  - `java -version` > check java version
  - `brew search zulu` > check available zulu version
  - `/usr/libexec/java_home -V` > check java home
    - `/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home`
  - setup jdk > `.zshrc`

```
# JAVA JDK
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
# e.g. export JAVA_HOME_13=$(/usr/libexec/java_home -v13) 

export JAVA_HOME=$JAVA_HOME_11
# e.g. export JAVA_HOME=$JAVA_HOME_13
```

- Install Android Studio
  - [https://developer.android.com/studio](https://developer.android.com/studio)
  - targetSdkVersion > check required targetSdkVersion
    - https://developer.android.com/google/play/requirements/target-sdk
- Setup env

```
# PATH
# RN >= 0.68
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# RN < 0.68
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

- `adb devices` > emulator list
