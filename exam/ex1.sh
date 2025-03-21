#!/bin/bash

# 引数の数をチェック
if [ "${#}" -ne 2 ];then
	exit 1
fi

# 性別チェック
gender="${1}"
if [ "${gender}" != "man" ] && [ "${gender}" != "woman" ];then
	exit 1
fi

# 年齢チェック
age="${2}"
if [ "${age}" -lt 0 ];then
	exit 1
fi

if [ "${gender}" = "man" ];then
	gender_display="Man"
else
	gender_display="Woman"
fi

if [ "${age}" -lt 20 ];then
	age_category="Child"
elif [ "${age}" -lt 60 ];then
	age_category="Adult"
else
	age_category="Elderly"
fi

echo "${gender_display}:${age_category}"







