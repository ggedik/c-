# TD 2 Création de votre projet LinearAlgebraAPI

N'oubliez pas de lire le document : *TD2_intro_to_read_first.md* avant de passer à ce sujet.

## 2.1 Utilisation d'Alien

Vous allez donc créer votre projet LinearAlgebraAPI. Ce projet sera compilé au moyen de CMake. Je vous renvoie au TD1 pour toutes les questions concernant CMake.

Ce projet devrait donc dépendre d'Alien pour fonctionner. Il faudrait donc normalement compiler et installer Alien sur votre machine. Étant donné le temps imparti et la diversité de vos machines et OS, il est plus raisonnable de ne pas envisager cette étape dans un premier temps. Vous pourrez donc récupérer un simple fichier `AlienMock.h` qui feindra de vous donner accès aux fonctionnalités Alien nécessaires pour le projet. Ce fichier est dans le répertoire Alien du TD. Nous nous pencherons sur la compilation d'Alien en fin de TD.

## 2.2 Première architecture du projet

La première étape pour ce projet, sera de rapatrier les deux tests Alien que nous souhaitons fusionner en un unique code, pour rappel :

```shell
alien/plugin/hypre/examples/hypre_example_solve.cpp
alien/plugin/petsc/test/test_petsc.cpp
```

Vous créerez dans votre projet deux classes : `HypreExample` et `PETScExample` qui auront chacun une méthode `run()`. Dans cette première partie, ces méthodes se contenteront d'afficher un message `HypreExample::run()` et `PETScExample::run()` par exemple.

Ces méthodes seront lancées par l'exécutable de votre projet.

Vous créerez les classes `HypreExample` et `PETScExample` dans des fichiers séparés (`.h` et `.cpp`) que vous ajouterez au projet CMake.

Si nous récapitulons, vous aurez donc dans votre projet :

* un fichier `main.cpp` qui instanciera les classes `HypreExample` et `PETScExample` et lancera leurs méthodes `run()`
* une classe `HypreExample` (`HypreExample.h` et `HypreExample.cpp`)
* une classe `PETScExample` (`PETScExampleExample.h` et `PETScExample.cpp`).

A ce stade vous aurez donc un projet compilable via CMake et qui fournit un exécutable qui pour l'instant se contente d'afficher :

```shell
HypreExample::run()
PETScExample::run()
```

## 2.3 Branchement des plugins de solveur

Nous allons maintenant implémenter les méthodes `run()` de nos deux classes. Le but de cette première étape sera simplement de reproduire le code des exemples Alien. Dans un second temps (un prochain TD), nous nous lancerons dans la réécriture d'un unique code.

Pour démarrer, afin d'accéder aux objets Alien, il vous faudra faire un include du fichier `AlienMock.h`. Vous pourrez quasiment copier-coller le code des exemples Alien (hypre_example_solve.cpp
et test_petsc.cpp) dans votre méthode `run()`. Je vous rappelle les principales étapes :

* construction de la matrice `A`
* remplissage de la matrice via le `DirectMatrixBuilder`
* construction du second membre `b = A * xe` et du vecteur d'inconnues `x`
* la résolution du système via la méthode `LinearAlgebra::solve(A,b,x)`
* le calcul du résidu `r = Ax - b` et de sa norme

N'oubliez pas également les appels à `MPI_Init` et `MPI_Finalize` en début et fin de votre fonction `main`. Vous pourrez utiliser l'include du fichier `MpiMock.h` fourni dans le TD pour éviter d'avoir à installer une bibliothèque mpi pour l'instant.

Votre exécutable peut maintenant lancer les cas Alien. Pour l'instant nous utilisons un Alien "fake" et donc en réalité il ne se passe pas grand chose, mais c'est le code qui nous intéresse pour le moment. Vous pourrez réaliser la compilation d'Alien en fin de ce TP et alors véritablement lancer Alien dans votre projet.

## 2.4 Tests automatiques de non régression

Comme dans tout bon projet, dès que du code est écrit, il faut mettre en place des tests unitaires.

Nous allons pour cela ajouter un nouvel exécutable de test, dans un fichier `Test.cpp`, que vous ajouterez dans le projet CMake.

Si vous avez pu installer GTest sur votre machine, vous allez l'utiliser pour créer les tests unitaires. Nous avons vu dans le **TD1** comment utiliser GTest (**partie 1.2**). Vous appliquerez les méthodes présentées dans ce TD pour ajouter deux tests à votre projet, le premier pour Hypre, le second pour PETSc. Chaque test, défini via la macro `TEST` de GTest :

* instanciera une classe (`HypreExample` ou `PETScExample`) et lancera la méthode `run()`.
* vérifiera que le retour de cette méthode est bien 0, via la macro `EXPECT_EQ` de GTest.

Si vous n'avez pas pu installer GTest, vous définirez dans votre fichier Test.cpp une fonction main qui effectuera le même travail c'est-à-dire instancier les deux classes `HypreExample` et `PETScExample` et testera leur code de retour. Si ce code de retour n'est pas égal à zéro vous interromprez le programme, via un appel à la fonction `exit(1)` (définie dans le header `cstdlib`).

Dans les deux cas vous devrez pouvoir lancer ces test via la commande `ctest`, se référez au TD 1 pour revoir comment faire.

## 2.5 Ajout d'Alien dans le projet

Si vous avez eu le temps de terminer la partie code, vous pouvez maintenant essayer d'utiliser véritablement Alien dans votre projet, et non pas seulement le squelette vide fait dans `AlienMock.h`.

Pour cela il faudra compiler et installer Alien et le brancher via CMake dans votre projet. Toutes les informations pour réaliser ces étapes sont décrites dans le document *Help_install_alien.md*.

Ces étapes dépendent de l'environnement informatique utilisé et peuvent échouer sur votre matériel. Aussi elles ne sont pas exigées pour pouvoir continuer les TDs.
