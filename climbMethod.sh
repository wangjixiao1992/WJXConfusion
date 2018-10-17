#!/bin/bash
#============== 路径信息 ========================#
project_path=$(cd `dirname $0`; pwd)
place_path=${project_path}/placeCode.h
project_name=WJXAlertView
folder_path=${project_path}/${project_name}/${project_name}/Class


# 遍历文件内容 写入
function filessScanning {
   path=$1
   cat ${path} | while read line ; do
      if [[ ${line} = +*  ]]; then
         echo "$line" >> ${place_path}
      fi
      if [[ ${line} = -*  ]]; then
         echo "$line" >> ${place_path}
      fi
   done
}

# 遍历文件
function convenientFile {
   if [[ -d $1 ]]; then
      for item in $(ls $1); do
         itemPath="$1/${item}"
         if [[ -d $itemPath ]]; then
            # 目录
            convenientFile $itemPath
         else
            # 文件
            if [[ $(expr "$item" : '.*\.h') -gt 0 ]]; then
               filessScanning ${itemPath}
            fi
         fi
       done
    else
      echo '*******************************  目录出错  *******************************'
   fi
}

#============== 操作区域 ========================#
if [[ -f ${place_path} ]]; then
echo '*******************************  文件已存在  *******************************'
else
echo '*******************************  创建文件  *******************************'
touch ${place_path}
fi


convenientFile ${folder_path}
sort -u ${place_path} -o ${place_path}



