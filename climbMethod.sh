project_path=$(cd `dirname $0`; pwd)
project_name=WJXAlertView
folder_path=${project_path}/${project_name}/${project_name}/Class
place_path=${project_path}/placeCode.h

ramdomString()
{
openssl rand -base64 64 | tr -cd 'a-zA-Z' |head -c 16
}


function convenientLine {
   line=$1
   if [[ ${line} =~ : ]]; then
      line=`echo ${line%:*}`
      convenientLine ${line}
   else
      line=${line/;/ }
      ramdom=`ramdomString`
      echo "#define $line $ramdom" >> ${place_path}
   fi
}

function filessScanning {
   path=$1
   cat ${path} | while read line ; do
      if [[ ${line} = +*  ]]; then
         line=`echo ${line#*)}`
         convenientLine ${line}
      fi
      if [[ ${line} = -*  ]]; then
         line=`echo ${line#*)}`
         convenientLine ${line}
      fi
   done
}

# 添加代码便利
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
sort -u ${place_path} -o ${place_path}


