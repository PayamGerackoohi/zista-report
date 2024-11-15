set -e

imagesDir=src/data/test/screenshots/images
rm -rf ${imagesDir}
mkdir ${imagesDir}

for file in ../zista-android/docs/screenshots/*.png; do
  filename=$(basename ${file})
  filename=${filename%.*}
  cwebp ${file} -o ${imagesDir}/${filename}.webp
done;

cd src/data/test/screenshots
node make.js
