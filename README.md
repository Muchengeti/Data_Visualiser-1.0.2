# Development Environment Setup Instructions
## Windows
- Angular
	1. [Install node and npm](https://nodejs.org/en/download/) 
	2. `cd visualizer`
	3. `npm install`
	4. `ng serve --open`
- Rails
	1. Enable Windows Subsystem for linux (google)
	2. Download Ubuntu from the Windows Store
	3. `sudo apt-get ruby`
	4. [Install rvm](https://rvm.io/)
	5. `rvm install 2.4`
	6. `gem install rails`
	7. `cd athena`
	8. `rails s`

## Unix/Mac
- Angular
	1. Install node and npm using your package manager (brew for MacOS)
    2. `cd visualizer`
	3. `npm install`
	4. `ng serve --open`
- Rails
	1. Install rvm using your package manager (brew for MacOS)
	2. `rvm install 2.4`
	3. `gem install rails`
	4. `cd athena`
	5. `rails s`