#!/bin/sh
@echo off

inputPath=./input
outpath=./output
fileNamezip1=./test.zip
fileNamezip2=./test.zip
fileNamezip3=./test.zip
fileNamezip4=./test.7z
fileNamezip5=./test.tar.gz
#压缩全部文件，包含当前目录名，zip格式
#HaoZipC a -tzip ${fileNamezip1} ${inputPath}

#压缩全部文件，包含子目录
#HaoZipC a -tzip ${fileNamezip2}.zip ${inputPath}\*

#压缩全部txt文件，包含子目录
#HaoZipC a -tzip ${fileNamezip3} ${inputPath}\*.txt -r

#压缩全部txt文件，仅限当前目录
#HaoZipC a -tzip ${fileNamezip3} ${inputPath}\*.txt

#压缩全部文件，包含子目录，并设置密码是123456789abc
#HaoZipC a -tzip -p123456789abc ${fileNamezip3} ${inputPath}

#压缩全部txt文件，仅限当前目录，并设置密码是“你好123”
#HaoZipC a -tzip -p"你好123" ${fileNamezip3} ${inputPath}\*.txt

#压缩全部文件，包含当前目录名，7z格式
#HaoZipC a -t7z ${fileNamezip4} ${inputPath}

#压缩全部文件，包含当前目录名，tar.gz格式
#HaoZipC a -ttar.gz ${fileNamezip5} ${inputPath}

# 解压压缩文件到当前目录,不包含压缩包内路径
#HaoZipC e ${fileNamezip1}

# 解压压缩文件到制定目录:全部1Folder，不包含压缩包内路径
#HaoZipC e ${fileNamezip1} -o${outpath}

# 解压压缩文件到当前目录,包含压缩包内路径
#HaoZipC x ${fileNamezip1}

# 解压压缩文件到制定目录:全部1Folder，不包含压缩包内路径
#HaoZipC x ${fileNamezip1} -o${outpath}

#查看压缩包内容，不解压
#HaoZipC l ${fileNamezip1}

#查看压缩内容 不解压
function SeeZipContent(){
    HaoZipC l $1
}
SeeZipContent ./activity_shenmo_box.zip

echo "输入----"
read p 
