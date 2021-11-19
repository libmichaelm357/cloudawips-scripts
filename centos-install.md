# Instructions for installing CloudAWIPS on CentOS

1. Install CentOS 7 with NO DESKTOP ENVIRONMENT (may be on a cloud provider or bare metal, must have 2GB of RAM or more to run -- swap space will not substitute! --  virtual machines ran on your local computer most likely won't work at this time, haven't tested)

2. Login to the console via keyboard/mouse or ssh -- I don't recommend using the root account for various reasons

3. Pull the script from github by using this command: `wget https://raw.githubusercontent.com/Severe-Weather-Information-Center/cloudawips-scripts/main/cloudawips_cos.sh`

4. Run this command to make script executable: `chmod a+x cloudawips_cos.sh`

5. Run the script using `sudo ./cloudawips_cos.sh` and input your account password to gain sudo access (this is very important as the script executes sudo commands!)

     - There is a bug with CentOS where Docker won't start without a package update. the script should handle this, but you may need to reboot the system and re-start the script once it's updated (should go faster since everything Docker related should be installed).

6. Let let the script pull the docker image for CloudAWIPS, and the start script for later.

7. If all goes well, the script should automatically start the container and be accessable from the system's IP address at port 6080. Once you are done using CloudAWIPS for the first time, you can click the Enter/Return key to stop the container.

8. The start script needs to be configured, you need to mark it as executable using `chmod a+x startcloudawips.sh`. You can then run it by using `sudo ./startcloudawips.sh`. This will start the container again.

----

## Known Issues

- Using less than 2GB RAM will result in AWIPS not starting
- Password protecting the session may cause the website not to load
- WarnGen Issues
  - Clicking Create Text in WarnGen will generate the product, but the Send button has been removed and the Save button is grayed out.
- Localization issues
  - It is impossible to remove the `UNLOCALIZED SITE` in WarnGen Text
  - You will need to manually update the localization settings by going to `CAVE > Preferences > Localization`. Unaware if settings are persistent after you stop the container.
