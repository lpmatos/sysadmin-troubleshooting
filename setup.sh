function Create_Files(){
  touch .editorconfig
  touch .releaserc.json
  touch package.json 
  touch README.md 
  touch .gitignore 
  touch LICENSE
  touch .gitleaks.toml
}

function Create_Folders(){
  mkdir -p docs
}

Create_Folders
Create_Files
