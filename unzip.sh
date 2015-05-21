for i in *.zip; do
    mkdir "$i-dir"
    cd "$i-dir"
    unzip "../$i"
    cd ..
done
