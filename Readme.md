# Sistemas y Tecnologías Web: Ejemplo de OAuth, Twitter, Rest y Sinatra

**Autor: Aarón Socas Gaspar**

##Descripción

Accedemos a Twitter en una aplicación Sinatra que muestre los amigos más populares de un usuario.


##Instalación

1. Instalaremos las gemas necesarias: `bundle install`
2. Configuraremos el fichero `configure.rb` siguiendo las directrices del fichero `configure.rb.example`
Para más detalle [consultar](http://nereida.deioc.ull.es/~lpp/perlexamples/node39.html)



##Ejecución

Para una gestión más sencilla de la aplicación podemos ver las opciones posibles con:

`
$ rake -T
`

Se nos listarán las siguientes opciones:

`
1. rake bin[arg1,arg2]  # Arrancar la aplicación desde consola: bin[nombre_usuario, numero_seguidores]
2. rake html            # Crear y ver documentación html
3. rake s               # Arrancar la aplicación web
4. rake server          # Arrancar la aplicación web
`

###1. rake bin

Nos permite ejecutar el programa desde consola. Puede usarse sin argumentos, por defecto utiliza como 
nombre de usuario "AaronSocas" y como número amigos 3. Para usar argumentos:

`
$ bin[nombre_usuario, numero_seguidores]
`

###2. rake html

Crea el archivo Readme.html y lo lanza al navegador por defecto.

###3. rake s (=rake server)

Arranca el servidor usando el puerto por defecto 4567. Accedemos a:

`
http://localhost:4567/
`

Y rellenamos los campos. Una vez terminado Ctrl+C para detener el servidor.


##Recursos

- Campus virtual de la asignatura
- http://ruby-doc.org/
- http://sferik.github.io/twitter/
- https://rubygems.org/gems/sinatra
- https://github.com/crguezl/rack-last-twits/tree/sinatra
- https://dev.twitter.com/rest/public/rate-limiting
- https://dev.twitter.com/oauth

*Aarón Socas Gaspar - Sistemas y Tecnologías Web (Curso 2014-2015)*

