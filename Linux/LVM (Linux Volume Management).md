#resource - 1) https://github.com/TrainWithShubham/90DaysOfDevOps/tree/master/2026/day-13
            2) https://www.trainwithshubham.com/s/courses/69143b7be8f22e523493f822/take

# Steps to mount a volume/Block/disk
1) check the newly created volume  
2) Build a linux filesystem by using the command ( mkfs -t etx4 /dev/nvme1n1  
3) Mount /dev/nvme1n1 /mnt/data  
4) To mount the volume without login into root user, we can edit the **/etc/fstab** file and add the entries regarding the volume. the system remembers this when system gets reboot/Start.  
5) 


# Physical Volume
pvcreate /dev/sdb

# Volume Group
