#building html
pandoc --standalone -c cv_style.css --from markdown --to html -o CV/Nicholas_Giangreco_CV.html CV/Nicholas_Giangreco_CV.md

#building pdf
pandoc --standalone -c cv_style.css --from markdown --latex-engine=xelatex -o CV/Nicholas_Giangreco_CV.pdf CV/Nicholas_Giangreco_CV.md

#building word doc
#pandoc --standalone -c cv_style.css --from markdown --to docx -o CV/Nicholas_Giangreco_CV.docx CV/Nicholas_Giangreco_CV.md

#building txt doc
#pandoc --standalone -c cv_style.css --smart --from markdown --to plain -o CV/Nicholas_Giangreco_CV.txt CV/Nicholas_Giangreco_CV.md