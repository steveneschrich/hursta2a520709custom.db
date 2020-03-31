all: hursta2a520709custom.sqlite

clean:
	@echo Cleaning old R package files...
	rm -rf ../R ../inst ../man ../tests ../DESCRIPTION ../NAMESPACE hursta2a520709custom.sqlite
	
hursta2a520709custom.sqlite:
	R CMD BATCH setup_package.R
	mv hursta2a520709custom.db/* ..
	rmdir hursta2a520709custom.db
	rm hursta2a520709custom.sqlite
	
	
