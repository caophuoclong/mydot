#! /bin/bash


bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

# creating "dictionary" to replace char with bar
i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

# make sure to clean pipe
pipe="/tmp/cava.fifo"
if [ -p $pipe ]; then
    unlink $pipe
fi
mkfifo $pipe

# write cava config
config_file="/tmp/waybar_cava_config"
echo "
[general]
bars = 50
[output]
method = raw
raw_target = $pipe
data_format = ascii
ascii_max_range = 7
[color]
gradient = 0
gradient_color_1 = '#70a5eb'
gradient_color_2 = '#8c9ae7'
gradient_color_3 = '#a68edd'
gradient_color_4 = '#be81cd'
gradient_color_5 = '#d075b8'
gradient_color_6 = '#dc699e'
gradient_color_7 = '#e26282'
gradient_color_8 = '#e05f65'
" > $config_file

# run cava in the background
cava -p $config_file &

# reading data from fifo
while read -r cmd; do
    echo $cmd | sed $dict
done < $pipe