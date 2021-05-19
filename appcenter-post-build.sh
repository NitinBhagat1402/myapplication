
#
# Push to US
#
curl \
  -F "payload=@$APPCENTER_OUTPUT_DIRECTORY/$BUILD_NAME" \
  -F name=$APP_NAME \
  -u "$SAUCE_USERNAME:$SAUCE_ACCESS_KEY"  'https://api.us-west-1.saucelabs.com/v1/storage/upload'

#
# Push to EU
#
curl \
  -F "payload=@$APPCENTER_OUTPUT_DIRECTORY/$BUILD_NAME" \
  -F name=$APP_NAME \
  -u "$SAUCE_USERNAME:$SAUCE_ACCESS_KEY"  'https://api.eu-central-1.saucelabs.com/v1/storage/upload'