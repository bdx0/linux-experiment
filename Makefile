### Makfile ---
## Author: dbd
## Version: 0.0.1
### 

### Commentary:
##
##
### 

### Code:

git-create:
	git init
	case "$(shell git remote)" in \
		"origin" ) git remote remove origin;; \
	esac
	git remote add origin https://github.com/duongbaoduy/linux-experiment.git
	@echo $@ done !!
	
git-pub:
	git push -u origin master 
	@echo $@ done !!

.PHONY: all
all:
	@echo Select your target !!!

.PHONY: clear
clear:
	@echo Please clear manual