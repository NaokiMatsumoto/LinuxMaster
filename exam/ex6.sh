#!/bin/bash

select command in "list" "delete" "rename" "show" "exit"
do
	case ${command} in
		"list" )
			ls;;
		"delete" )
			ls
			read -p "削除したいファイル名を書いて: " file_name
			if [ -f ${file_name} ];then
				rm ${file_name}
			fi
			;;
		"rename" )
			ls
			read -p "名前を変更したいファイルを書いて: " file_name
			read -p "新しいファイル名は: " new_file_name
			if [ -f ${file_name} ];then
				mv ${file_name} ${new_file_name}
			fi
			;;
		"show" )
			ls
			read -p "中身を表示したいファイル名を書いて: " file_name
			cat ${file_name}
			;;
		"exit" )
			break
			;;

	esac
done
