# generic-latex-template

[![GitHub release](https://img.shields.io/github/v/release/samcole8/generic-latex-template)](https://github.com/samcole8/generic-latex-template/releases)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-blue.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Issues](https://img.shields.io/github/issues/samcole8/generic-latex-template)](https://github.com/samcole8/generic-latex-template/issues)

LaTeX class with a focus on readability, simplicity, and flexibility.

## Installation

Clone the repository or copy `generic.cls` to your LaTeX project directory:

```bash
git clone https://github.com/samcole8/generic-latex-template.git
```

Then include the class in your `.tex` file:
```tex
\documentclass[
    title={My Document},
    author={Author Name}
]{generic}

\begin{document}
\maketitle
\end{document}
```

## Usage

Set document metadata via class options: title, author, date, document type, bibliography style, title logo:

```tex
\documentclass[
    title={Generic LaTeX Template},  % Document title
    author={Anon},                   % Author name
    % date={December 12, 2025},      % Date - defaults to today
    % type={article},                % Document type - report, book, or article (default)
    % bibstyle={ieee},               % Bibliography style - defaults to IEEE
    % logo={images/my_logo}          % Title logo - defaults to none
]{generic}
```

A minimal [example template](generic-latex-template/main.tex) is included for reference.

## License

This project is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License (CC BY-NC-SA 4.0).

This license establishes different rules for **software** and **content**, which are explained below:

- You cannot use the template code itself (**software**) for commercial purposes.  
- You can use the generated PDF/DOCX document (**content**) for any purpose, including commercial applications, without attribution.
- If you redistribute the template code (**software**), you must attribute the original source and retain the existing license.

See [LICENSE](LICENSE) for details.
