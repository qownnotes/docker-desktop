nextcloud &
nextcloud --no-sandbox
export QTWEBENGINE_DISABLE_SANDBOX=1
nextcloud &
whereis nextcloud
dpkg --list nextcloud-desktop
dpkg -L nextcloud-desktop
cat /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
sed -i 's|Exec=nextcloud|Exec=QTWEBENGINE_DISABLE_SANDBOX=1 nextcloud|g' /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
less /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
vim /usr/share/applications/com.nextcloud.desktopclient.nextcloud.desktop
ll
mc
OA
