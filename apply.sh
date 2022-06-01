#!/bin/sh

# Do NOT change the replacement order!
# project GUID: bc9d47e4-823c-45aa-af25-f052eafee17f
# assembly GUID: 8ddcb5e9-86ba-49f1-9f4b-fe4a8f2a4567
for regexp in 's/VARIABLE_NAMESPACE/Polyipseity.RimWorld.InstakillingRevolver/g' 's/VARIABLE_NAME/Instakilling Revolver/g' 's/VARIABLE_ASSEMBLY_NAME/InstakillingRevolver/g' 's/VARIABLE_AUTHOR/polyipseity/g' 's/VARIABLE_YEAR/2022/g' 's/VARIABLE_SUPPORTED_VERSION/1.3/g' 's/VARIABLE_DESCRIPTION/This mod makes revolvers instakilling by destroying the brain of the target./g' 's/VARIABLE_URL/https:\/\/github.com\/etaoinshrdlcumwfgypbvkjxqz\/instakilling-revolver/g' 's/bc9d47e4-823c-45aa-af25-f052eafee17f/9dfd61b1-1388-44d3-be67-909f4bd9439f/g' 's/8ddcb5e9-86ba-49f1-9f4b-fe4a8f2a4567/5961e0da-9756-47bb-a91a-a0c80f2c47f2/g'; do
	echo Applying \'$regexp\'…
	find . \( -type f -wholename "$0" \) -o \( -type d -name '.git' -prune \) -o -type f -print0 | xargs -0 sed -i "$regexp"
done
