# TD Utilisation de bibliothèques d'algèbre linéaires

Contexte : dans les codes de simulations de la communauté académique ou de l'industrie, il est souvent nécessaire de résoudre des systèmes linéaires, provenant par exemple de discrétisation implicite en temps des phénomènes physiques simulés. La résolution de tels systèmes est un problème de simulation coûteux et sensibles au choix du type de système et des paramètres de résolution. Le choix du pré-conditionneur, du solveur ainsi que des paramètres de convergence est très important et doit être adapté au phénomène physique simulé, sinon le solveur aura beaucoup de mal à converger, voire ne convergera pas, entraînant par là l'échec de la simulation. Il est donc important de pouvoir disposer dans un code de simulation du maximum de couples solveurs/pré-conditionneurs, afin de maximiser les chances de succès.

Étant donné la complexité des algorithmes de solveurs/pré-conditionneurs, il n'est pas question de redévelopper de telle brique logicielle par soi-même et il faut utiliser les solveurs disponibles dans la communauté, tel que Hypre, PETSc ou Trilinos pour ne citer que ceux-ci.

Il pourrait également être intéressant de disposer de plusieurs de ces bibliothèques dans un même code de simulation, afin de pouvoir choisir au plus fin le solveur employé. C'est ce que propose la bibliothèque Alien, qui fournit une unique interface de branchement pour tous ces solveurs. **Le but des TPs sera de proposer un code qui permettra de résoudre un système linéaire sans adhérence à une bibliothèque de solveurs donnée**. Nous utiliserons pour cela la bibliothèque Alien.

## Découverte d'Alien

Les sources sont disponibles sur GitHub à l'adresse :

```shell
git clone https://github.com/arcaneframework/alien.git
```

Le code principal de la bibliothèque est divisé en deux parties :

* le code des structures internes d'Alien, dans le répertoire `src`
* le code des plugins de solveurs, dans le répertoire `plugins`.

Nous n'allons pas regarder les structures internes d'Alien mais nous allons nous concentrer sur les plugins, c'est à dire les branchements de bibliothèques de solveurs externes dans Alien. On retrouve dans les plugins les principales bibliothèques de solveurs de la communauté : Hypre, PETSc et Trilinos. Ces bibliothèques sont développées par des laboratoires nationaux américains (Lawrence Livermore NL, Argonne NL et Sandia NL respectivement).

Pour prendre en main l'utilisation de solveurs dans Alien, nous allons focaliser sur l'exemple du branchement de Hypre et de PETSc. Pour avoir un exemple de branchement de ces deux solveurs, il nous faut consulter les deux fichiers ci-dessous :

```shell
alien/plugin/hypre/examples/hypre_example_solve.cpp
alien/plugin/petsc/test/test_petsc.cpp
```

Vous devez d'abord bien comprendre ces cas tests. Ce sont des tests unitaires qui permettent de résoudre un système linéaire ```Ax = b``` avec une matrice un second membre très simples. Chacun utilise  une bibliothèque d'algèbre linéaire, Hypre ou PETSc respectivement.

Les principales étapes sont les suivantes :

* construction de la matrice `A`
* remplissage de la matrice via le `DirectMatrixBuilder`
* construction du second membre `b = A * xe` et du vecteur d'inconnues `x`
* résolution du système via la méthode `LinearAlgebra::solve(A,b,x)`
* calcul du résidu `r = Ax - b` et de sa norme.

Chaque exemple est donc adhérent à la bibliothèque du plugin qui est utilisé, même si nous voyons apparaître les structures Alien (`Alien::Matrix`, `Alien::Vector`, `Alien::LinearAlgebra`) qui nous permettent d'avoir un code quasi équivalent pour Hypre ou PETSc.

Nous aurions des codes très différents si nous avions utilisé directement des structures Hypre ou PETSc.

## Objectif du TD

Nous allons maintenant commencer notre projet, qui sera d'**écrire avec un unique code la résolution d'un système linéaire, avec PETSc ou Hypre**.
L'objectif sera donc en quelque sorte de fusionner les deux exemples `hypre_example_solve.cpp` et `test_petsc.cpp` en un unique code. Tout au long des séances de TD, vous serez guidé pour arriver à cet objectif final.
