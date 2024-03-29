# !/bin/bash
# run the code below from the directory that this file lives in order to be able to run the file as a bash script
# $ chmod 700 basic-config

# Then to run the script execute the following
# $ ./basic-config


read -p "Install HomeBrew? y/n : " install_brew
if [ $install_brew == 'y' ]
then
    echo 'Starting HomeBrew install...'
    sleep 2
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


read -p "Install Node.js? y/n : " install_node
if [ $install_node == 'y' ]
then
    echo 'Starting Node.js install...'
    sleep 2
    brew install node
fi


read -p "Install yarn? y/n : " install_yarn
if [ $install_yarn == 'y' ]
then
    echo 'Starting yarn install...'
    sleep 2
    brew install yarn
fi


read -p "Install react-native, watchman, AdoptOpenJDK/openjdk and adoptopenjdk8 ? y/n : " install_brew
if [ $install_brew == 'y' ]
then

    echo 'Starting react-native-cli install...'
    sleep 2
    npm install -g react-native-cli
    
    echo ""
    echo 'Starting watchman install...'
    sleep 2
    brew install watchman

    echo ""
    echo 'Starting AdoptOpenJDK/openjdk install...'
    sleep 2
    brew tap AdoptOpenJDK/openjdk
    
    echo ""
    echo 'Starting adoptopenjdk8 install...'
    sleep 2
    brew cask install adoptopenjdk8

    # https://facebook.github.io/react-native/docs/getting-started.html
fi

read -p "Install vue-cli globally? y/n : " install_vue
if [ $install_vue == 'y' ]
then
    echo 'Starting vue-cli install...'
    sleep 2
    npm install -g @vue/cli
fi


read -p "Install mongodb? y/n : " install_mongodb
if [ $install_mongodb == 'y' ]
then
    echo 'Starting mongodb install...'
    sleep 2
    brew update
    brew install mongodb
    sudo mkdir -p /data/db
    sudo chown -R `id -un` /data/db
fi


read -p "Install visual studio code? y/n : " install_vs_code
if [ $install_vs_code == 'y' ]
then
    echo 'Starting vs-code install...'
    sleep 2
    brew cask install visual-studio-code
fi


read -p "Install expo globally? y/n : " install_expo
if [ $install_expo == 'y' ]
then
    echo 'Starting global expo install...'
    sleep 2
    npm install -g expo-cli
fi


read -p "Installing a Java 8 JDK? y/n : " install_jdk8
if [ $install_jdk8 == 'y' ]
then
    echo 'Starting Java 8 JDK install...'
    sleep 2

    brew cask install java
    sleep 5
    brew cask info java
    brew tap caskroom/cask
fi


read -p "Install adb for Android dev? y/n : " install_jdk8
if [ $install_jdk8 == 'y' ]
then
    echo 'Starting adb install...'
    sleep 2

    brew cask install android-platform-tools
    
fi


read -p "Install typescript? y/n : " install_typescript
if [ $install_typescript == 'y' ]
then
    echo 'Starting typescript install...'
    sleep 2
    npm install -g typescript
    
fi








    


echo "End of script"
