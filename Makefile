## This is the makefile to generate the PDF file using pandoc
TITLE = OUTPUT.pdf

SOURCE := main.md
PDF := $(patsubst %.md,%.pdf, $(SOURCE))
TEMPLATE := ./pandoc-latex-template/eisvogel.tex
PANDOC := ".\pandoc-3.1.8\pandoc.exe"


## pandoc -f markdown -t pdf "{{file_path:absolute}}" --resource-path "{{folder_path:absolute}}" --template eisvogel --filter C:\Python311\Lib\site-packages\pandoc_latex_admonition.py --filter pandoc-imagine --filter "C:\Users\alexis.lebel\SynologyDrive\Templates\pandoc-crossref.exe" -o "{{folder_path:absolute}}/{{title}}.pdf"

.PHONY : install_windows 
install_windows :
	@echo -- Installing on Windows --
	@echo -- Downloading pandoc --
	@curl -L -k https://github.com/jgm/pandoc/releases/download/3.1.8/pandoc-3.1.8-windows-x86_64.zip -o pandoc.zip
	@echo -- Unzipping pandoc --
	@tar -xvzf pandoc.zip
	@echo -- Downloading pandoc_latex_admonition.py --
	@git clone https://github.com/chdemko/pandoc-latex-admonition
	@echo -- Downloading dependencies --
	@py -m pip install panflute
##	@curl -L https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.17.0/pandoc-crossref-Windows.7z -o pandoc-crossref.7z
##	@set PATH=%PATH%;C:\Program Files\7-Zip\
##	@7z x pandoc-crossref.7z
##  Return Path to default
##	@set PATH=%PATH:C:\Program Files\7-Zip\;=%

.PHONY : install_linux
install_linux :
	@echo -- Installing on Linux --
	@echo -- Downloading pandoc --
	@curl -L -k https://github.com/jgm/pandoc/releases/download/3.1.8/pandoc-3.1.8-linux-amd64.tar.gz -o pandoc.tar.gz
	@echo -- Unzipping pandoc --
	@tar xvzf pandoc.tar.gz
	@echo -- Downloading pandoc_latex_admonition.py --
	@git clone https://github.com/chdemko/pandoc-latex-admonition
	@echo -- Downloading dependencies --
	@py -m pip install panflute

.PHONY : clean_install_windows
clean_install_windows :
	@echo -- Cleaning install on Windows --
	@echo -- Cleaning --
	@del pandoc.zip pandoc-3.1.8 /s /q
	@rmdir pandoc-3.1.8
	@del pandoc-crossref.7z
	@del pandoc-latex-admonition /s /q
	@rmdir pandoc-latex-admonition /s /q


.PHONY : clean_install_linux
clean_install_linux :
	@echo -- Cleaning install on Linux --
	@echo -- Cleaning --
	@rm -rf pandoc.tar.gz pandoc-3.1.8
	@rm -rf pandoc-crossref.7z
	@rm -rf pandoc-latex-admonition
	
.PHONY : pdf
pdf :
	@echo --- Generating PDF ---
	@cmd /k $(PANDOC) $(SOURCE) -o $(TITLE) --from markdown -t pdf --template $(TEMPLATE) --filter "pandoc-latex-admonition\pandoc_latex_admonition.py" --filter ./pandoc-crossref.exe 
