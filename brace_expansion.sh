#!/bin/bash

echo {a,19,z,barry,42}
echo {a,19,z,barry, 42}
echo {jan,feb,mar,apr,may,jun,jul,ago,sep,oct,nov,dec}


echo {1,2,3,4,5,6,7,8,9,10}
echo {1..10}

echo {a..z}

echo {1..1000..3}
echo {0..100..5}

echo month{1..12}
mkdir month{1..12} #### rm -rf  month{1..12}

echo month{1..12}/day{01..30}
touch month{1..12}/day{01..30}.txt