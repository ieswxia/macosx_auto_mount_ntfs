devNode="$(diskutil list | grep Windows_NTFS | tr ':' '\n' | tail -1 | tr ' ' '\n' | tail -1)"
echo $devNode
hdiutil detach /dev/$devNode
mkdir /Volumes/ntfs
sudo mount_ntfs -o rw,nobrowse /dev/$devNode /Volumes/ntfs
sudo ln -s /Volumes/ntfs ~/Desktop/Volumes_ntfs
