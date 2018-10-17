project_path=$(cd `dirname $0`; pwd)
project_name=WJXAlertView
folder_path=${project_path}/${project_name}/${project_name}/Class
place_path=${project_path}/placeCode.h

#读取方法代码
function filessScanning {
   path=$1
   cat ${path} | while read line ; do
      if [[ ${line} = +*  ]]; then
         echo "#define $line $ramdom" >> ${place_path}
      fi
      if [[ ${line} = -*  ]]; then
         if [[ -d ${place_path} ]]; then
            echo '*******************************  文件已存在  *******************************'
         else
            echo '*******************************  创建文件  *******************************'
            touch ${place_path}
         fi
         echo "#define $line $ramdom" >> ${place_path}
      fi
   done
}

# 便利文件
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


convenientFile ${folder_path}


