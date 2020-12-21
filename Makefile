##
# r-shiny-workshop
#
# @file
# @version 0.1
##
ROOT_DIR:=./

all: build-book git-add

build-book:
	@echo "Compiling Bookdown"
	Rscript -e "bookdown::render_book('index.Rmd')"
	@echo "Compilation complete!"

git-add:
	@echo "Adding and committing changes to book."
	git add *
	git commit -m "Compiled book."
	git push
	@echo "Git commit completed."
