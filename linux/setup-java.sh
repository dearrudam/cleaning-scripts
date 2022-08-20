# installing SDKMAN to install JVM distributions
curl -s "https://get.sdkman.io" | bash 
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java

java -version
