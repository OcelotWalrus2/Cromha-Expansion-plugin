# merging main into origin
echo started updating your local repo from github repo
git pull origin main
echo finishd updating your local repo from github repo
# running install.sh to reinstall the plugin
echo "Please enter the path of your endless sky plugin directory (https://pastebin.com/9h7cGgEW for help):"
read path
echo "Deleting the current plugin data to overwrite with the new one"
rm -r "$path/Cromha-expansion-plugin"
echo "Copying the locals plugin data into '$path'"
cp -r plugin/ "$path"
cd "$path"
find . -depth -type d -name "plugin" -execdir mv {} "Cromha-expansion-plugin" \;
sleep 1
echo "Done"
