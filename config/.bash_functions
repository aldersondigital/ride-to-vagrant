function v () { 
  vim $1  
}

function cd-into-directory-within-git-package () {
  DIR=$1
  
  # Ensure that a directory arg has been received.
  if [ -z ${DIR} ]; 
    then echo "No DIR";
    return 1; 
  fi
  
  # Find the root of the current Git directory
  ROOT=$(git rev-parse --show-toplevel)
 
  # Ensure that a ROOT value has been found. 
  if [ -z ${ROOT} ]; 
    then echo "No Git ROOT";
    return 1; 
  fi
 
  # Search downward from ROOT excluding node_modules. 
  DIR_PATH=$(find ${ROOT} -name ${DIR} -not -path "*/node_modules/*" -type d) 

  # Ensure that a DIR_PATH has been found.
  if [ -z ${DIR_PATH} ]; 
    then echo "No ${DIR}";
    return 1; 
  fi

  cd ${DIR_PATH}; ls -alp
}

function b () {
  cd-into-directory-within-git-package "buttons"
} 

function c () {
  cd-into-directory-within-git-package "controllers"
} 

function d () {
  cd-into-directory-within-git-package "dialogs"
} 

function com () {
  cd-into-directory-within-git-package "components"
} 

function lists () {
  cd-into-directory-within-git-package "lists"
} 

function m () {
  cd-into-directory-within-git-package "models"
} 

function t () {
  cd-into-directory-within-git-package "text"
} 
