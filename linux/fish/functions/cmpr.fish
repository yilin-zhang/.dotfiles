function cmpr -a filepath --description 'Compress file or directory to a zip file'
    set -l filename (basename $filepath)
    zip -r $filename.zip $filepath
end