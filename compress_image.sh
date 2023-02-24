cd ./images

for photo in $(ls ./new); do
	cp ./new/"$photo" ./temp/"$photo"
	mogrify -compress JPEG -quality 50 -resize 70% ./new/"$photo"
	mv ./new/"$photo" ./fulls
done

for photo in $(ls ./temp); do
	mogrify -compress JPEG -quality 30 -resize 40% ./temp/"$photo"
	mv ./temp/"$photo" ./thumbs
done
