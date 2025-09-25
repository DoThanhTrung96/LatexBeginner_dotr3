@echo off
echo Cleaning up LaTeX auxiliary files...

del /S /Q *.aux
del /S /Q *.bbl
del /S /Q *.blg
del /S /Q *.fls
del /S /Q *.fdb_latexmk
del /S /Q *.log
del /S /Q *.lof
del /S /Q *.lot
del /S /Q *.out
del /S /Q *.synctex.gz
del /S /Q *.toc

echo Cleanup complete.
