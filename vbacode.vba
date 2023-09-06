Label3.Caption = ComboBox1.Text
Dim word As String
    word = ComboBox1.Value
    
    If word = "system information" Then
        Label6.Caption = "commands : " & Chr(10) & "[arch] [cal 2007] [cat /proc/cpuinfo]" & vbCrLf & "[cat /proc/interrupts] [cat /proc/meminfo]" & vbCrLf & "[cat /proc/swaps] [clock -w] [data]" & vbCrLf & "[dmidecode -q] [hdparm -i /dev/hda]" & vbCrLf & "[lspci -tv] [uname -r]"
    ElseIf word = "files and directories" Then
        Label6.Caption = "commands : " & vbCrLf & "[cd] [cp]" & vbCrLf & "[iconv] [find]" & vbCrLf & "[ls] [mkdir]" & vbCrLf & "[rm] [tree]"
    ElseIf word = "Mount a file system" Then
        Label6.Caption = "command : " & vbCrLf & "[fuser -km /mnt/hda2] [mount /dev/hda2 /mnt/hda2]" & vbCrLf & "[umount /dev/hda2]"
    ElseIf word = "Users and groups" Then
        Label6.Caption = "command : " & vbCrLf & "[chage -E 2005-12-31 user1] [groupadd [group]]" & vbCrLf & "[groupdel [group]] [groupmod -n moon sun]" & vbCrLf & "[grpck] [newgrp – [group]]" & vbCrLf & "[passwd] [passwd user1]" & vbCrLf & "[pwck] [useradd -c “User Linux” -g admin -d /home/user1 -s /bin/bash user1]" & vbCrLf & "[useradd user1] [userdel -r user1]" & vbCrLf & "[usermod -c “User FTP” -g system -d /ftp/user1 -s /bin/nologin user1]"
    ElseIf word = "File permissions" Then
        Label6.Caption = "command : " & vbCrLf & "[chgrp group1 file1] [chmod ugo rwx directory1]" & vbCrLf & "[chown user1 file1] [chown user1 file1]" & vbCrLf & "[find / -perm -u s] [ls -lh]"
    ElseIf word = "RPM packages" Then
        Label6.Caption = "command : " & vbCrLf & "[rpm -ivh [package.rpm]] [rpm -ivh –nodeeps [package.rpm]]" & vbCrLf & "[rpm -U [package.rpm]] [rpm -F [package.rpm]]" & vbCrLf & "[rpm -e [package]] [rpm -qa]" & vbCrLf & "[rpm -qa | grep httpd] [rpm -qi [package]]" & vbCrLf & "[rpm -qg “System Environment/Daemons”] [rpm -q [package] –whatrequires]" & vbCrLf & "[rpm -q [package] –scripts] [rpm -q [package] –changelog]" & vbCrLf & "[rpm -Vp [package.rpm]] [rpmbuild –rebuild [package.src.rpm]]"
    ElseIf word = "YUM installation tool" Then
        Label6.Caption = "command : " & vbCrLf & "[yum -y install [package]] [yum -y install [package]]" & vbCrLf & "[yum list] [yum clean headers]" & vbCrLf & "[yum clean all]"
    ElseIf word = "DEB packages" Then
        Label6.Caption = "command : " & vbCrLf & "[dpkg -i [package.deb]] [dpkg -r [package]]" & vbCrLf & "[dpkg -l] [dpkg -l | grep httpd]" & vbCrLf & "[dpkg -s [package]] [dpkg -L [package]]" & vbCrLf & "[dpkg –contents [package.deb]] [dpkg -S /bin/ping]"
    ElseIf word = "Analysis and repair of the file system" Then
        Label6.Caption = "command : " & vbCrLf & "[badblocks -v /dev/hda1] [dosfsck /dev/hda1]" & vbCrLf & "[e2fsck /dev/hda1] [e2fsck -j /dev/hda1]" & vbCrLf & "[fsck /dev/hda1] [fsck.ext2 /dev/hda1]" & vbCrLf & "[fsck.ext3 /dev/hda1] [fsck.vfat /dev/hda1]" & vbCrLf & "[ fsck.msdos /dev/hda1]"
    ElseIf word = "Network commands" Then
        Label6.Caption = "command : " & vbCrLf & "[dhclient eth0] [ethtool eth0]" & vbCrLf & "[host www.example.com] [hostname]" & vbCrLf & "[ifconfig eth0] [ifconfig eth0 192.168.1.1 netmask 255.255.255.0]" & vbCrLf & "[ifconfig eth0 promisc] [ifdown eth0]" & vbCrLf & "[ifup eth0] [ip link show]" & vbCrLf & "[wconfig eth1] [mii-tool eth0]" & vbCrLf & "[netstat -tup] [route add -net 0/0 gw IP_Gateway]" & vbCrLf & "[rute add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1] [echo “1” > /proc/sys/net/ipv4/ip_forward]"
    ElseIf word = "firewall" Then
        Label6.Caption = "command : " & vbCrLf & "[iptables -t filter -L] [iptables -t filter -F]" & vbCrLf & "[iptables -t filter -A INPUT -p tcp –dport telnet -j ACCEPT] [iptables -t filter -A OUTPUT -p tcp –dport http -j DROP]" & vbCrLf & "[iptables -t filter -A INPUT -j LOG –log-prefix] [iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE]" & vbCrLf & "[iptables -t nat -A PREROUTING -d 192.168.0.1 -p tcp -m tcp –dport 22 -j DNAT –to-destination 10.0.0.2:22]"
    ElseIf word = "Monitoring and debugging" Then
        Label6.Caption = "command : " & vbCrLf & "[free -m] [kill -9 process_id]" & vbCrLf & "[last reboot] [lsmod]" & vbCrLf & "[lsof -p process_id] [lsof /home/user1]" & vbCrLf & "[ps -eafw] [ps -e -o pid,args –forest]" & vbCrLf & "[pstree] [smartctl -A /dev/hda]" & vbCrLf & "[strace -c ls >/dev/null] [tail /var/log/messages]" & vbCrLf & "[top] [watch -n1 “cat /proc/interrupts”]"
    Else
        Label6.Caption = "not find"
    End If
