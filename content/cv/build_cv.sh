#building html
pandoc --standalone -c cv_style.css --from markdown --to html -o content/cv/Nicholas_Giangreco_CV.html content/cv/Nicholas_Giangreco_CV.md

#building word
pandoc --css cv_style.css -s content/cv/Nicholas_Giangreco_CV.md -o content/cv/Nicholas_Giangreco_CV.docx

#building pdf
#pandoc -V geometry:"top=0.5cm, bottom=0.5cm, left=0.5cm, right=0.5cm" --variable mainfont:"Arial" --from markdown+yaml_metadata_block --pdf-engine=xelatex -o CV/Nicholas_Giangreco_CV.pdf CV/Nicholas_Giangreco_CV.md
wkhtmltopdf ~/GitHub/ngiangre.github.io/content/cv/Nicholas_Giangreco_CV.html ~/GitHub/ngiangre.github.io/content/cv/Nicholas_Giangreco_CV.pdf