# Alexis' Markdown *Moulinette* for Professionnal Markdown-coded Reports

The goal of this project is to create a **Moulinette** to create professionnal reports, using Markdown.

This enables the user to focus on the content, and not on the formating. The formating is done automatically, and implemented in a professionnal/academic way.

## Prerequisites

This project requires LaTeX to be installed on your computer. 

For Windows users, you can download [TeX Live](https://www.tug.org/texlive/acquire-netinstall.html) and install it.

For Linux users, you can install LaTeX using your package manager. For example, on Ubuntu, you can use the following command:

```bash
sudo apt-get install texlive-full
```

## Usage

To use this project, you can clone it using the following command:

```bash
git clone --recurse-submodules https://github.com/Alestrio/Alexis-Markdown-Moulinette
```

or you can use it as a Github Template.

Then, you can edit the `main.md` file to write your report.

The templates in the `templates` folder are used for the first page, and for the page background, you can choose the one you want.

For first run, you need to install the dependencies using the following command:

```bash
make install_[(windows|linux)]
```

Finally, you can use the following command to generate the PDF file:

```bash
make pdf
```

If you want to regain some space, you can use the following command:

```bash
make clean_install_[(windows|linux)]
```

## Tips

### Skip a page

If you want to skip a page, you can use the following command:

```latex
\newpage
```

### Change image size

If you want to change the size of an image, simply add next to the image:

```latex
{width=50%}
```

You can change the `50%` to any value you want.

### Add a table of figures or code extracts

If you want to add a table of figures, you can use the following command:

```latex
\listoffigures
```

If you want to add a table of code extracts, you can use the following command:

```latex
\lstlistoflistings
```

### Latex Formating

Latex Formatting does not work like Notion Katex. To skip line, you need to make a new LaTeX paragraph, starting and ending with : ``$$`` 


## License

If you have access to this project, you are part of my friends, and you can use this project as you want. Just don't share the sources to everyone, or **I will get mad**...


