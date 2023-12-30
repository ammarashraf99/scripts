#!/bin/bash

# ./ffmpeg_speedUp.sh <inputfile.mp4> <outputfile.mp4> <speed Up factor>


input=$1
output=$2
[ $input = $output ] && echo illegal output name && echo Please make sure to name output file differently && exit
#ls | grep tmp* && echo "No tmp files allowed in the directory" && exit





IFS='.'
read -ra inputext <<< "$input"
read -ra outputext<<< "$output"
IFS=''


x=$3	# speed up factor

ffmpeg -i $input -filter_complex "[0:v]setpts=1/${x}*PTS[v];[0:a]atempo=${x}[a]" -map "[v]" -map "[a]" $output






#if [ ${inputext[1]} = mp4 ]
#then
	#ffmpeg -i $input tmp.mkv
	#if [ ${outputext[1]} = mp4 ]
	#then
		#ffmpeg -i tmp.mkv -filter_complex "[0:v]setpts=1/${x}*PTS[v];[0:a]atempo=${x}[a]" -map "[v]" -map "[a]" tmp2.mkv
		#ffmpeg -i tmp2.mkv $output
	#else
		#ffmpeg -i tmp.mkv -filter_complex "[0:v]setpts=1/${x}*PTS[v];[0:a]atempo=${x}[a]" -map "[v]" -map "[a]" $output
	#fi

#else
	#if [ ${outputext[1]} = mp4 ]
	#then
		#ffmpeg -i $input -filter_complex "[0:v]setpts=1/${x}*PTS[v];[0:a]atempo=${x}[a]" -map "[v]" -map "[a]" tmp.mkv
		#ffmpeg -i tmp.mkv $output
	#else
		#ffmpeg -i $input -filter_complex "[0:v]setpts=1/${x}*PTS[v];[0:a]atempo=${x}[a]" -map "[v]" -map "[a]" $output
	#fi
#fi

#rm tmp*






