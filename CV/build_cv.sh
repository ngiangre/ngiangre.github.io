#building html
pandoc --standalone -c cv_style.css --from markdown --to html -o CV/Nicholas_Giangreco_CV.html CV/Nicholas_Giangreco_CV.md

#building word doc
pandoc --from markdown --to docx -o CV/Nicholas_Giangreco_CV.docx CV/Nicholas_Giangreco_CV.md
pandoc --standalone --smart --from markdown --to plain -o CV/Nicholas_Giangreco_CV.txt CV/Nicholas_Giangreco_CV.md