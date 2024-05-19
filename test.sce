// Définir la fonction de Newton-Raphson
function root = newtonRaphson(f, f1, x0, maxIter)
  x = x0;  // Initialiser x avec la valeur initiale
  for i = 1:maxIter
      x = x - (f(x) / f1(x));  // Appliquer la formule de Newton-Raphson
      disp(x);  // Afficher la valeur actuelle de x
  end
  root = x;  // Retourner la racine estimée
endfunction

// Exemple d'utilisation
deff('y=f(x)', 'y = x^4 - x - 10');  // Définir la fonction f(x)
deff('z=f1(x)', 'z = 4*x^3 - 1');  // Définir la dérivée f'(x)
x0 = 1.5;  // Valeur initiale
maxIter = 15;  // Nombre maximum d'itérations

// Appeler la fonction de Newton-Raphson
root = newtonRaphson(f, f1, x0, maxIter);
disp("La racine estimée est : " + string(root));
