if [ -d build] ; then
    rm -r build
fi
mkdir build
cp literatureReview.tex build/
cp bibliography.bib build/
cd build/
latex literatureReview.tex
bibtex literatureReview.aux
latex literatureReview.tex
pdflatex literatureReview.tex

