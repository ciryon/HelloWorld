# Configuration
###############################
project_dir=`pwd` # current dir
environment_name="staging"
keychain="ci_keys"
keychain_password="$1"
workspace="HelloWorld.xcodeproj/project.xcworkspace"
scheme="HelloWorld" # Make sure that the sceheme is 'shared' in Xcode 4
info_plist="$project_dir/HelloWorld/HelloWorld-Info.plist"
environment_plist="$environment_name.plist"
environment_info_plist="$environment_name-Info.plist"
product_name="HelloWorld-$environment_name"
mobileprovision="$project_dir/ad_hoc/Jayway_Ad_Hoc_Distribution.mobileprovision"
provisioning_profile="iPhone Distribution: Jayway AB"
web_root="/public/Apps"
build_number="$BUILD_NUMBER" # if your build server outputs a buld number
artifacts_url="http://mini.jayway.com/Apps" #$build_number"
display_image_name="Icon_72.png"
full_size_image_name="Icon_512.png"

source xcodebuild.sh

# Copy the above configuration to your XCode project folder as a new script and uncomment
# Make sure that xcodebuild.sh is in your path