# Explaination

## grid folder

- Purpose: Output 5% *ground truth model* for filtering
- Process:
    - Config grid-rd.sh to grid on 2.5%tr/2.5va ground truth data
    - ./grid-rd.sh
    - Save binary model on *5% data* with best parameter and iteration


## filter folder

- Purpose: Use *ground truth model* to filter data
- Process:
    - Config run-filter.sh
    - ./run-filter.sh


## add-pos-bias folder

- Purpos: Add position bias to modify filtered datas
- Process:
    - Config add_bais_all.sh
    - ./add_bias_all.sh
    - Config merge.sh
    - ./merge.sh
