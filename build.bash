if [ -d build ] ; then
    rm -r build
fi

TEX_FILE=$1

mkdir build
cp $TEX_FILE.tex build/
cp bibliography.bib build/
cd build/
mkdir latex
mv $TEX_FILE.tex bibliography.bib latex
cd latex
latex $TEX_FILE.tex
latex $TEX_FILE.tex
bibtex $TEX_FILE.aux
latex $TEX_FILE.tex
pdflatex $TEX_FILE.tex
mv $TEX_FILE.pdf ../

