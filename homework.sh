member="./member"
target="./Homework"
folder="$1"
input="$2"

if [ $# -lt 1 ];then
        echo "Usage : $1 foldername input"
		echo "For example : "
		echo "./homework.sh Homework1 \"1\n2\n3\""
		echo "In this case, Homework1 is the directory, and 1 2 3 are inputs."
        exit
fi

echo "Operating folder : $folder"

while read student
do
	path=$(eval echo "./$target/$folder/$student"*)
	echo -e "\r\n"
	echo -e "\r\n"
	echo -e "--------------------------------- $student ---------------------------------------------\r\n"
	if [ -d "$path" ];then
		echo -e "$input" | python3.5 "$path/"* 2>&1
	else
		echo "Not Found : $student"
	fi
	echo -e "\r\n"
	echo -e "--------------------------------- End --------------------------------------------------\r\n"
	echo -e "\r\n"
done < $member
