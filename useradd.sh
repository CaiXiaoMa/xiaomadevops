for i in {00..10}
do
	password=$(mkpasswd -l 20)
	useradd xiaoma$i
	echo "user:xiaoma$i:password:$password" >> /root/passwd.txt
	echo $password | passwd --stdin xiaoma$i
done


