$Audio_Path = "C:\Users\Admin-Group11\Desktop\Sonar_CNN\User_WAV\DU\"
$Output_Path_top = "C:\Users\Admin-Group11\Desktop\Sonar_CNN\User_Mono\DU\top\"
$Output_Path_bot = "C:\Users\Admin-Group11\Desktop\Sonar_CNN\User_Mono\DU\bot\"

Get-ChildItem $Audio_Path -Filter *.wav | ForEach-Object { ffmpeg -i $Audio_Path\$_ -map_channel 0.0.0 $Output_Path_top\$_`_top.wav -map_channel 0.0.1 $Output_Path_bot\$_`_bot.wav}

#https://trac.ffmpeg.org/wiki/AudioChannelManipulation