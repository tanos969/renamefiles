echo -n "enter prefix: "
read prefix
echo -n "enter extension: "
read extension
echo -n "enter location: "
read location
for file in $(ls ${location}/*.${extension});
  do mv "${location}/${file##*/}" "${location}/${prefix}_${file##*/}";
done;
