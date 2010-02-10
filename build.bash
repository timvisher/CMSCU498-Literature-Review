if [ -d build ] ; then
    rm -r build
fi
mkdir build
cp literatureReview.tex build/
cp bibliography.bib build/
cd build/
mkdir latex
mv literatureReview.tex bibliography.bib latex
cd latex
latex literatureReview.tex
latex literatureReview.tex
bibtex literatureReview.aux
latex literatureReview.tex
pdflatex literatureReview.tex
mv literatureReview.pdf ../

