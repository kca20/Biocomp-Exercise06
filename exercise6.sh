# 1. This code writes a file with gender, yearsExperience data contained in wages.csv 
cat wages.csv | cut -d , -f 1,2 | sort -t , -k 1,1 -k 2,2n

# 2. This code returns gender, yearsExperience, and wage for the highest and lowest earners of the 
# file wages.csv and also the number of females in the top ten earner.

lowestearner=$(cat wages.csv | sort -t , -k 4n | cut -d , -f 1,2,4 | head -n 2 | tail -n 1)
highestearner=$(cat wages.csv | sort -t , -k 4n | cut -d , -f 1,2,4 | tail -n 1)
toptenfemales=$(cat wages.csv | sort -t , -k 4n | cut -d , -f 1,2,4 | tail -n 10 | grep -E 'female' | wc -l)
echo "Lowest Earner $lowestearner \n Highest Earner $highestearner \n Number of Females in Top 10 $toptenfemales"

# 3. This code finds the average wages of those who had 12 years of schooling and those who had 16 and finds the differences between the two. 
avgwage12=$(cat wages.csv | cut -d , -f 3,4 | grep '12,'| cut -d , -f 2 |
avgwage16=$(cat wages.csv | cut -d , -f 3,4 | grep '16,'| cut -d , -f 2 |
echo 
 #incomplete
