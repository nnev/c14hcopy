# NNEV c14hcopy

This tool auto-copies the recordings from the camera to pluta and then to our
server.

## How it works
1. The Camera or the Mic gets plugged into pluta via USB. The 'Backup' mode is selected on
   the camera.
2. The Camera or the Mic appear as a mass storage device.
3. A udev-rule mounts the storage device and starts the oneshot service, which copies all files from the cam to a new folder in temporary location.
4. A cronjob/timer starts the script that copies all files from the temporary
   location to our server.
5. Another cronjob/timer cleans up old files from the temp dir, checking wether
   they have been copied before deleting them
