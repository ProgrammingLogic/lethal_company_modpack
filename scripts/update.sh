ProfileName="Modded Lethal Company"
ProfileName=$(echo "$ProfileName" | sed -r "s/\ /\\\ /g")

cp -rvf "../exports/$ProfileName_*/" ../

git add ../mods.yml
git add ../export.r2x
git add ../config

git commit --verbose

rm -rf ../exports/*
