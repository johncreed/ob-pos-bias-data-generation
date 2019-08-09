# Config
rd='random_filter'
pr='propensious_filter'
de='determined_filter'
filter_data='trvate.90.ffm'

python pos-bias.py $rd&
python pos-bias.py $pr&
python pos-bias.py $de&

awk '{$1=""; print $0}' $filter_data > $filter_data.tmp &
wait

paste $rd.pos.bias $filter_data.tmp
paste $pr.pos.bias $filter_data.tmp
paste $de.pos.bias $filter_data.tmp


