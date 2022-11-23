# Installation d'Alien

## 1. Installation des dépendances d'Alien

### 1.1 Prérequis

La version de CMake minimum requise est la 3.21. Vous n'avez sans doute pas cette version par défaut sur votre machine, il vous faudra donc l'installer. Vous pourrez le faire avec les commandes suivantes :

```shell
# Install CMake 3.21.3 in /usr/local/cmake
sudo apt-get install wget
MY_CMAKE_INSTALL_PATH=/usr/local/cmake-3.21.3
wget https://github.com/Kitware/CMake/releases/download/v3.21.3/cmake-3.21.3-linux-x86_64.tar.gz
sudo mkdir ${MY_CMAKE_INSTALL_PATH}
sudo tar -C ${MY_CMAKE_INSTALL_PATH} -x --strip-components 1 -f cmake-3.21.3-linux-x86_64.tar.gz
export PATH=${MY_CMAKE_INSTALL_PATH}/bin:${PATH}
cmake --version
```

La dernière commande doit répondre `cmake version 3.21.3`.

### 1.2 Dépendances externes

Il faut ensuite installer les dépendances d'Alien. Celles-ci sont listée ici :
https://github.com/arcaneframework/framework#linux
Les commandes pour les installer sont les suivantes (sur un environnement ubuntu) :

```shell
sudo apt-get update
sudo apt-get install -y git build-essential gdb libhypre-dev libboost-dev libboost-program-options-dev libgtest-dev libglib2.0-dev petsc-dev libhdf5-openmpi-dev
```

### 1.3 Dépendances internes

Alien dépend de deux composants qui sont fournis par un projet associé nommé arcane_framework. Ces dépendances ne sont pas disponibles sous la forme de paquet, il va donc falloir les compiler et les installer à la main. Les étapes sont les suivantes :

* récupération des sources

```shell
git clone https://github.com/arcaneframework/framework.git
cd framework
git submodule update --init

```

* Compilation et installation des dépendances internes

```shell
cmake -B build_arccon -S arccon

cmake --install build_build_arccon

cmake -B build_arccore -S arccore -DBUILD_SHARED_LIBS=ON -DCMAKE_PREFIX_PATH=/usr/local/lib

cmake --build build_arccore

sudo cmake --install build_arccore
```

## 2 Compilation et installation d'Alien

* Récupération des sources

```shell
git clone https://github.com/arcaneframework/alien.git
```

* Compilation et installation

```shell
cmake -B build_alien -S alien -DCMAKE_PREFIX_PATH=/usr/local/lib -DBUILD_SHARED_LIB=ON -DALIEN_USE_LIBXML2=ON -DALIEN_USE_HDF5=ON -DALIEN_PLUGIN_HYPRE=ON -DALIEN_PLUGIN_PETSC=ON

cmake --build build_alien -- -j 8

sudo cmake --install build_alien 
```

## 3 Intégrer Alien dans votre projet

Si vous êtes parvenus jusque-là, Vous allez maintenant pouvoir utiliser Alien dans votre projet grâce à CMake (cf. TD1).
Vous allez devoir ajouter un

```cmake
find_package(Alien REQUIRED)
```

Vous devrez ensuite faire dépendre vos exécutables (principal et de tests) des cibles Alien nécessaires, via la commande `target_link_libraries`. Voici la liste des cibles nécessaires :  

* `Alien::alien_semantic_ref`
* `Alien::alien_semantic_move`
* `Alien::hypre_wrapper`
* `Alien::petsc_wrapper`

Maintenant vous pouvez reconfigurer votre projet CMake, en ajoutant à l'appel de CMake l'option `-DCMAKE_PREFIX_PATH=/usr/local/lib`.

Si à l'exécution, vous avez un message d'erreur de type `cannot open shared object file: No such file or directory`, vous devez enrichir votre `LD_LIBRARY_PATH`, comme fait au TD1 :

```shell
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}
```