######################### Data Sprint 2 #######################################
# Convert the data collected by the diligenciadores from the proprietary 
# .xlxs-format to comma separated value (.csv) format.

################### rbind several revistas into one data frame ################
RevistaI <- read.csv("Alas.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaI) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                     "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                     "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                     "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                     "Paginacion", "Comentarios")

# The "Contributor" column is the most important one (=> networks).
# Let's check it
which(is.na(RevistaI$Contributor))
# There is a NA in line 400. This is a mistake: diligenciadores should either
# put "Anónimo", "redacción", "directores" or else into it. 
# Also "SD" should not be used.
# Task: Ask the diligenciador who worked on "Alas" to complete the dataset

# For this exemplary analysis, we will fill the NA with "Anónimo", even if
# this not may not be correct (in this case, there is only the seudonimo given,
# but I will not look it up and fill the correct name etc, it's not my task)
RevistaI[400,3] <- "Anónimo"

RevistaII <- read.csv("Alpha.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaII) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                      "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                      "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                      "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                      "Paginacion", "Comentarios")


RevistaIII <- read.csv("BohemiaAlegre.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaIII) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")

RevistaIV <- read.csv("Cultura.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaIV) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")

which(is.na(RevistaIV$Contributor))
# 2   3  33  34  60  61  89  90 116 117 => 10 NA's!!! 
# As well as lots of SD's in the dataset ... sigh.

# Replace cells with missing contributors with "Anónimo"
# These are mostly publicidades, but also others, why?
RevistaIV$Contributor[is.na(RevistaIV$Contributor)] <- "Anónimo"

RevistaV <- read.csv("HojasDePoesia.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaV) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")


RevistaVI <- read.csv("Panida.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaVI) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")

# Replace missing contributors in cells with "Anónimo" 
# this can be found in 85 rows!
RevistaVI$Contributor[is.na(RevistaVI$Contributor)] <- "Anónimo"


RevistaVII <- read.csv("RevistaContemporanea.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaVII) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")

# Someone had the idea to add one more column which we don't need, so we delete it
RevistaVII[,21] <- NULL


RevistaVIII <- read.csv("RevistaLiteraria.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaVIII) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                       "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                       "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                       "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                       "Paginacion", "Comentarios")

# replace the long title of the revista with a shorter one
RevistaVIII$NombreR[RevistaVIII$NombreR == "Revista Literaria. Publicación Mensual"] <- "Revista Literaria"

RevistaIX <- read.csv("RevistaModerna.csv", header = TRUE, encoding = "UTF-8")

# Put clean column names
names(RevistaIX) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                        "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                        "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                        "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                        "Paginacion", "Comentarios")

# replace the long title of the revista
RevistaIX$NombreR[RevistaIX$NombreR == "Revista Moderna. (Enciclopedia colombiana)"] <- "Revista Moderna"

RevistaX <- read.csv("TresRevistas.csv", header = TRUE, encoding = "UTF-8")
# select relevant columns
RevistaX <- RevistaX[,c(1:5,8,12,13,19,20,21:26,30)]
# add missing columns
RevistaX$Fecha <- NA
RevistaX$Traduccion <- NA
RevistaX$Paginacion <- NA
# reorder columns including the new ones
RevistaX <- RevistaX[,c(1,2,3,4,5,6,7,8,18,19,14,11,15,9,10,12,13,16,20,17)]

# Put clean column names
names(RevistaX) <- c("NombreR", "NumContrib", "Contributor", "Roles", "Seudonimo",
                      "PaisOrigen", "Titulo", "NumFasciculo", "Fecha", "Traduccion", 
                      "Traductor", "Lengua", "LenguaOriginal", "Tipo", 
                      "TipoIndice", "Dedicatoria", "ObrasResenadas", "CantidadPaginas", 
                      "Paginacion", "Comentarios")

# bind the data frames together
AllRevistas <- rbind(RevistaI, RevistaII, RevistaIII, RevistaIV, RevistaV, 
                     RevistaVI, RevistaVII, RevistaVIII, RevistaIX, RevistaX)

# Remove the leading and trailing white spaces in the "Contributors" column
AllRevistas$Contributor <- trimws(AllRevistas$Contributor, which = "both", whitespace = " ")
  
# Create a contributor's table and
# inspect the list of contributors in descending order of frequency
ContribsAllRevistas <- as.data.frame(table(AllRevistas$Contributor))
ContribsAllRevistas <- ContribsAllRevistas[order(ContribsAllRevistas$Freq, decreasing = T), ]
View(ContribsAllRevistas)
# 833 contributors listed
# Export for visual inspection and correction
write.csv(ContribsAllRevistas, file = "ContribsAllRevistas.csv", fileEncoding = "UTF-8", row.names=FALSE)

# Obviously some of the diligenciadores did not understand the meaning of  
# "Appelido, Nombre" so we have to correct that manually for the following:
# Félix Mejía Arango, León de Greiff, Rafael Jaramillo Arango, Fernando González,
# Jorge Escobar, Jorge Villa Carrasquilla, León de Greiff, Jesús Restrepo Olarte,
# Libardo Parra Toro, Rubén Darío, Teodomiro Isaza, Andrés González Blanco, 
# Antonio J. Cano, Antonio J. Uribe, Carlos E. Rodríguez E., Daniel Posada,
# Eleázar Arango Ferrer / Emilio Correa U., Gabriel Uribe Lince, Jesús A. Merino,
# L. Gómez, Francisco Villa López, J. Restrepo Rivera, J. Toro Isaza, 
# Juan Ramón Jiménez, Paul Fort, Teodomiro Isaza / Félix Mejía Arango, 
# Adeoldato Sandino, Antonio Merizalde, Evaristo Carriego, Francis Jammes,
# Francisco Villaespesa, Jacinto Benavente, José Manuel Mora, Laureano Merino,
# Oscar Wilde, Peter Altenberg, Abraham Moreno, Aleodato Sandino,
# Aquilino Villegas, Armand Silvestre, Arturo Graf, Arturo Schopenhauer,
# Cesar Bunster, Clímaco, Silva (general, E. Marquina, Edgar POE, Eugenio D'Ors
# Enrique Díez Canedo, Frimousse, Gabriel Miró, Giovanni Papini, |Gómez, Efe|
# Guillermo Valencia, Gustavo Mejía, Ivan Turganeff, J. Bayona Posada,
# José Asunción Silva, José Enrique Rodó, José Francés, José Ingenieros, 
# José Luis Restrepo J., José Montoya, Lázaro Tobón, Leopoldo Díaz, 
# M. Rodríguez-Rendueles, Martínez Ruiz, José (Azorín), Omar Khayyam
# Ovidio Fernández Ríos, Remy de Gourmont, Stephane Mallarmé
# Tanorede de Visan, Tomás Márquez, Victor Remouchamps

# How did I spot these? I opened the "ContribsAllRevistas.csv" file in OpenOffice,
# searched for the comma "," separating the correctly written names, and therefore
# was directed to all the entries where no comma was part of the name

# We'll correct all those cases in the main data frame "AllRevistas"
AllRevistas$Contributor[AllRevistas$Contributor == "Félix Mejía Arango"] <- "Mejía Arango, Félix"
AllRevistas$Contributor[AllRevistas$Contributor == "León de Greiff"] <- "Greiff, León de"
AllRevistas$Contributor[AllRevistas$Contributor == "Rafael Jaramillo Arango"] <- "Jaramillo Arango, Rafael"
AllRevistas$Contributor[AllRevistas$Contributor == "Fernando González"] <- "González, Fernando"
AllRevistas$Contributor[AllRevistas$Contributor == "Jorge Escobar"] <- "Escobar Uribe, Jorge"
AllRevistas$Contributor[AllRevistas$Contributor == "Jorge Villa Carrasquilla"] <- "Villa Carrasquilla, Jorge"
AllRevistas$Contributor[AllRevistas$Contributor == "Jesús Restrepo Olarte"] <- "Restrepo Olarte, Jesús"
AllRevistas$Contributor[AllRevistas$Contributor == "Libardo Parra Toro"] <- "Parra Toro, Libardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Rubén Darío"] <- "Darío, Rubén"
AllRevistas$Contributor[AllRevistas$Contributor == "Teodomiro Isaza"] <- "Isaza Botero, Teodomiro"
AllRevistas$Contributor[AllRevistas$Contributor == "Andrés González Blanco"] <- "González Blanco, Andrés"
AllRevistas$Contributor[AllRevistas$Contributor == "Antonio J. Cano"] <- "Cano Torres, Antonio José"
AllRevistas$Contributor[AllRevistas$Contributor == "Antonio J. Uribe"] <- "Uribe, Antonio José"
AllRevistas$Contributor[AllRevistas$Contributor == "Carlos E. Rodríguez E."] <- "Rodríguez E., Carlos E."
AllRevistas$Contributor[AllRevistas$Contributor == "Daniel Posada"] <- "Posada, Daniel"
AllRevistas$Contributor[AllRevistas$Contributor == "Gabriel Uribe Lince"] <- "Uribe Lince, Gabriel"
AllRevistas$Contributor[AllRevistas$Contributor == "Jesús A. Merino"] <- "Merino, Jesús A."
AllRevistas$Contributor[AllRevistas$Contributor == "L. Gómez"] <- "Gómez, L."
AllRevistas$Contributor[AllRevistas$Contributor == "Francisco Villa López"] <- "Villa López, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "J. Restrepo Rivera"] <- "Restrepo Rivera, José" # Jesús o José, who published in Alpha?
AllRevistas$Contributor[AllRevistas$Contributor == "J. Toro Isaza"] <- "Toro Isaza, J."
AllRevistas$Contributor[AllRevistas$Contributor == "Juan Ramón Jiménez"] <- "Jiménez, Juan Ramón"
AllRevistas$Contributor[AllRevistas$Contributor == "Paul Fort"] <- "Fort, Paul"
AllRevistas$Contributor[AllRevistas$Contributor == "Adeoldato Sandino"] <- "Sandino, Adeoldato"
AllRevistas$Contributor[AllRevistas$Contributor == "Antonio Merizalde"] <- "Merizalde Uribe, Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Evaristo Carriego"] <- "Carriego, Evaristo"
AllRevistas$Contributor[AllRevistas$Contributor == "Francis Jammes"] <- "Jammes, Francis"
AllRevistas$Contributor[AllRevistas$Contributor == "Francisco Villaespesa"] <- "Villaespesa, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "Jacinto Benavente"] <- "Benavente, Jacinto"
AllRevistas$Contributor[AllRevistas$Contributor == "José Manuel Mora"] <- "Mora Vásquez, José Manuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Laureano Merino"] <- "Merino, Laureano"
AllRevistas$Contributor[AllRevistas$Contributor == "Oscar Wilde"] <- "Wilde, Oscar"
AllRevistas$Contributor[AllRevistas$Contributor == "Peter Altenberg"] <- "Altenberg, Peter"
AllRevistas$Contributor[AllRevistas$Contributor == "Abraham Moreno"] <- "Moreno, Abraham"
AllRevistas$Contributor[AllRevistas$Contributor == "Aleodato Sandino"] <- "Sandino, Aleodato"
AllRevistas$Contributor[AllRevistas$Contributor == "Aquilino Villegas"] <- "Villegas, Aquilino"
AllRevistas$Contributor[AllRevistas$Contributor == "Armand Silvestre"] <- "Silvestre, Armand"
AllRevistas$Contributor[AllRevistas$Contributor == "Arturo Graf"] <- "Graf, Arturo"
AllRevistas$Contributor[AllRevistas$Contributor == "Arturo Schopenhauer"] <- "Schopenhauer, Arthur"
AllRevistas$Contributor[AllRevistas$Contributor == "Cesar Bunster"] <- "Bunster, Cesar"
AllRevistas$Contributor[AllRevistas$Contributor == "Clímaco, Silva (general"] <- "Clímaco, Silva"
AllRevistas$Contributor[AllRevistas$Contributor == "E. Marquina"] <- "Marquina, Eduardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Edgar POE"] <- "Poe, Edgar Allan"
AllRevistas$Contributor[AllRevistas$Contributor == "Eugenio D'Ors"] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Enrique Díez Canedo"] <- "Díez-Canedo, Enrique"
AllRevistas$Contributor[AllRevistas$Contributor == "Gabriel Miró"] <- "Miró, Gabriel"
AllRevistas$Contributor[AllRevistas$Contributor == "Giovanni Papini"] <- "Papini, Giovanni"
AllRevistas$Contributor[AllRevistas$Contributor == "Guillermo Valencia"] <- "Valencia, Guillermo"
AllRevistas$Contributor[AllRevistas$Contributor == "Gustavo Mejía"] <- "Mejía Ángel, Gustavo"
AllRevistas$Contributor[AllRevistas$Contributor == "Ivan Turganeff"] <- "Turgenev, Ivan"
AllRevistas$Contributor[AllRevistas$Contributor == "J. Bayona Posada"] <- "Bayona Posada, Jorge"
AllRevistas$Contributor[AllRevistas$Contributor == "José Asunción Silva"] <- "Silva, José Asunción"
AllRevistas$Contributor[AllRevistas$Contributor == "José Enrique Rodó"] <- "Rodó, José Enrique"
AllRevistas$Contributor[AllRevistas$Contributor == "José Francés"] <- "Francés, José"
AllRevistas$Contributor[AllRevistas$Contributor == "José Ingenieros"] <- "Ingenieros, José"
AllRevistas$Contributor[AllRevistas$Contributor == "José Luis Restrepo J."] <- "Restrepo Jaramillo, José Luis"
AllRevistas$Contributor[AllRevistas$Contributor == "José Montoya"] <- "Montoya, Antonio José" # should be double-checked
AllRevistas$Contributor[AllRevistas$Contributor == "Lázaro Tobón"] <- "Tobon Tobon, Lazaro"
AllRevistas$Contributor[AllRevistas$Contributor == "Leopoldo Díaz"] <- "Díaz, Leopoldo"
AllRevistas$Contributor[AllRevistas$Contributor == "M. Rodríguez-Rendueles"] <- "Rodríguez-Rendueles, M."
AllRevistas$Contributor[AllRevistas$Contributor == "Omar Khayyam"] <- "Khayyam, Omar"
AllRevistas$Contributor[AllRevistas$Contributor == "Ovidio Fernández Ríos"] <- "Fernández Ríos, Ovidio"
AllRevistas$Contributor[AllRevistas$Contributor == "Remy de Gourmont"] <- "Gourmont, Remy de"
AllRevistas$Contributor[AllRevistas$Contributor == "Stephane Mallarmé"] <- "Mallarmé, Stéphane"
AllRevistas$Contributor[AllRevistas$Contributor == "Tanorede de Visan"] <- "Visan, Tancrède de"
AllRevistas$Contributor[AllRevistas$Contributor == "Tomás Márquez"] <- "Márquez Bravo, Tomás"
AllRevistas$Contributor[AllRevistas$Contributor == "Marquez, Tomas"] <- "Márquez Bravo, Tomás"
AllRevistas$Contributor[AllRevistas$Contributor == "Marquez, Tomás"] <- "Márquez Bravo, Tomás"
AllRevistas$Contributor[AllRevistas$Contributor == "Victor Remouchamps"] <- "Remouchamps, Victor"
AllRevistas$Contributor[AllRevistas$Contributor == "Guillermo Vélez"] <- "Vélez, Guillermo" # Escobar Vélez, Edgar Guillermo?
AllRevistas$Contributor[AllRevistas$Contributor == "Ricardo Rendón"] <- "Rendón, Ricardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Eduardo Vasco"] <- "Vasco Gutiérrez, Eduardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Pérez Trianam Santiago"] <- "Pérez Triana, Santiago"
AllRevistas$Contributor[AllRevistas$Contributor == "Anatole France"] <- "France, Anatole"
AllRevistas$Contributor[AllRevistas$Contributor == "Antonio María Restrepo"] <- "Restrepo Restrepo, Antonio María"
AllRevistas$Contributor[AllRevistas$Contributor == "Becquer"] <- "Bécquer, Gustavo Adolfo"
AllRevistas$Contributor[AllRevistas$Contributor == "Duque Bernal Augusto"] <- "Duque Bernal, Augusto"
AllRevistas$Contributor[AllRevistas$Contributor == "Eduardo A. Palacio"] <- "Palacio, Eduardo A."
AllRevistas$Contributor[AllRevistas$Contributor == "Fernando Isaza R."] <- "Isaza R., Fernando"
AllRevistas$Contributor[AllRevistas$Contributor == "Manuel Machado"] <- "Machado, Manuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Mortimer Gray"] <- "Gray, Mortimer"
AllRevistas$Contributor[AllRevistas$Contributor == "Roberto Jaramillo A."] <- "Jaramillo Arango, Roberto"
AllRevistas$Contributor[AllRevistas$Contributor == "Salamanca T. D."] <- "Salamanca, T. D."
AllRevistas$Contributor[AllRevistas$Contributor == "Santiago Rusiñol"] <- "Rusiñol, Santiago"
AllRevistas$Contributor[AllRevistas$Contributor == "Sophus Claussen"] <- "Claussen, Sophus"

# Other contributor names are not written as they are written in the
# Contributores-BaseDeDatos, so we have to correct that manually
# Carvajal, M.A. = Carvajal, Manuel A. = Carvajal, Manuel A|Carvajal, Manuel Antonio 
# Hephel|Le Breton, Fanny
# AB. FARINA|Restrepo Restrepo, Antonio María
# Farina, Abel|Restrepo Restrepo, Antonio María
# André SUARÉZ|Suarès, André
# Bonilla, Manuel A.|Bonilla, Manuel Antonio
# Carducci|Carducci, Giosuè
# Carducci, Giósue|Carducci, Giosuè
# Copée, F|Coppée, François
# D'oribe, R.|D'Oribe, R.
# D'ors, Eugenio|d'Ors, Eugenio
# Don Ramón de Valle Inclán|Valle-Inclán, Ramón del
# Maupassant, René Albert Guy de|Maupassant, Guy de
# Pérez Monosalva, Santiago|Pérez Monsalva, Santiago
# Pinxit, Ch. Gill|Gill, Charles
# Sanchez, Alberto = Sánchez, alberto|Sánchez, Alberto
# Vargas Vila|Vargas Vila, José María
# Villiers De L'Isle-Adam, Auguste = Villiers de L'isle Adam, Auguste|Villiers de L'Isle-Adam, Auguste de
# Frimousse|Toché, Raoul
# Gómez, Efe|Gómez Escobar, Francisco
# Martínez Ruiz, José (Azorín) = Azorín|Martínez Ruiz, José
# Umaña Bernal. José|Umaña Bernal, José
AllRevistas$Contributor[AllRevistas$Contributor == "Carvajal, M.A."] <- "Carvajal, Manuel Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Carvajal, Manuel A."] <- "Carvajal, Manuel Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Carvajal, Manuel A"] <- "Carvajal, Manuel Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Azorín"] <- "Martínez Ruiz, José"
AllRevistas$Contributor[AllRevistas$Contributor == "Martínez Ruiz, José (Azorín)"] <- "Martínez Ruiz, José"
AllRevistas$Contributor[AllRevistas$Contributor == "Hephel"] <- "Le Breton, Fanny"
AllRevistas$Contributor[AllRevistas$Contributor == "AB. FARINA"] <- "Restrepo Restrepo, Antonio María"
AllRevistas$Contributor[AllRevistas$Contributor == "Farina, Abel"] <- "Restrepo Restrepo, Antonio María"
AllRevistas$Contributor[AllRevistas$Contributor == "André SUARÉZ"] <- "Suarès, André"
AllRevistas$Contributor[AllRevistas$Contributor == "Bonilla, Manuel A."] <- "Bonilla, Manuel Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Carducci"] <- "Carducci, Giosuè"
AllRevistas$Contributor[AllRevistas$Contributor == "Carducci, Giósue"] <- "Carducci, Giosuè"
AllRevistas$Contributor[AllRevistas$Contributor == "Copée, F"] <- "Coppée, François"
AllRevistas$Contributor[AllRevistas$Contributor == "D'oribe, R."] <- "D'Oribe, R."
AllRevistas$Contributor[AllRevistas$Contributor == "D'ors, Eugenio"] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Don Ramón de Valle Inclán"] <- "Valle-Inclán, Ramón del"
AllRevistas$Contributor[AllRevistas$Contributor == "Maupassant, René Albert Guy de"] <- "Maupassant, Guy de"
AllRevistas$Contributor[AllRevistas$Contributor == "Pérez Monosalva, Santiago"] <- "Pérez Monsalva, Santiago"
AllRevistas$Contributor[AllRevistas$Contributor == "Pinxit, Ch. Gill"] <- "Gill, Charles"
AllRevistas$Contributor[AllRevistas$Contributor == "Sanchez, Alberto"] <- "Sánchez, Alberto"
AllRevistas$Contributor[AllRevistas$Contributor == "Sánchez, alberto"] <- "Sánchez, Alberto"
AllRevistas$Contributor[AllRevistas$Contributor == "Vargas Vila"] <- "Vargas Vila, José María"
AllRevistas$Contributor[AllRevistas$Contributor == "Villiers De L'Isle-Adam, Auguste"] <- "Villiers de L'Isle-Adam, Auguste de"
AllRevistas$Contributor[AllRevistas$Contributor == "Villiers de L'isle Adam, Auguste"] <- "Villiers de L'Isle-Adam, Auguste de"
AllRevistas$Contributor[AllRevistas$Contributor == "Frimousse"] <- "Toché, Raoul"
AllRevistas$Contributor[AllRevistas$Contributor == "Gómez, Efe"] <- "Gómez Escobar, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "Umaña Bernal. José"] <- "Umaña Bernal, José"

# replace rows containing two contributors with two rows containing only one contributor 
which(AllRevistas$Contributor == "Eleázar Arango Ferrer / Emilio Correa U.")
# 1188 1247 1285 1345
AllRevistasAmend <- AllRevistas[c(1188,1247,1285,1345),]
AllRevistas$Contributor[AllRevistas$Contributor == "Eleázar Arango Ferrer / Emilio Correa U."] <- "Arango Ferrer, Eleázar"
AllRevistasAmend$Contributor[AllRevistasAmend$Contributor == "Eleázar Arango Ferrer / Emilio Correa U."] <- "Correa U., Emilio"

which(AllRevistas$Contributor == "Teodomiro Isaza / Félix Mejía Arango")
# 1189 1257 1287
AllRevistasAmendII <- AllRevistas[c(1189,1257,1287),]
AllRevistas$Contributor[AllRevistas$Contributor == "Teodomiro Isaza / Félix Mejía Arango"] <- "Isaza Jaramillo, Teodomiro"
AllRevistasAmendII$Contributor[AllRevistasAmendII$Contributor == "Teodomiro Isaza / Félix Mejía Arango"] <- "Mejía Arango, Félix"

# Add those 7 rows to the AllRevistas-Dataframe
AllRevistas <- rbind(AllRevistas, AllRevistasAmend, AllRevistasAmendII)

# Now that we did 'a little data cleaning', we do a loop 
# and perform exactly the same operations as above
# First create a contributor's list ...
# and inspect the list of contributors in descending order
ContribsAllRevistas <- as.data.frame(table(AllRevistas$Contributor))
ContribsAllRevistas <- ContribsAllRevistas[order(ContribsAllRevistas$Freq, decreasing = T), ]
View(ContribsAllRevistas)
# Now there are 790 contributors, so the cleaning eliminated 43 erroneous entries
# Furthermore, 990 of the rows contain an "Anónimo" as contributor name,
# which amounts up to 28%, quite a lot
# Put a nice column name
colnames(ContribsAllRevistas) <- c("Contributor", "Frecuencia")

# Remove contributors who may apply to multiple persons
# as well as unresolved abbreviations (like "AA. VV.")
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Anónimo", ] # 990 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "La dirección", ] # 218 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Directores", ] # 28 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Redacción", ] # 27 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "SD", ] # 14 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Administración", ] # 8 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Revista Moderna", ] # 3 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Documentos oficiales", ] # 2 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Le Temps", ] # 2 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "[Ilegible]", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "AA. VV.", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Congreso De Colombia", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "E.P", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "EDOS", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Fx. B.", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "LL. RR", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "P.A.", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "R.S.M", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "RR.LL", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "V.O", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Z y Z.", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "France, Mercure de", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Información Sobre La revista", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "La redacción", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "No Se Pudo Localizar Este número", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Publicidad", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Review of Revieus", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Revista de Bibliografía chilena", ] # 1 removed
ContribsAllRevistas <- ContribsAllRevistas[ContribsAllRevistas$Contributor != "Vicepresidente", ] # 1 removed

# Save the result
write.csv(ContribsAllRevistas, file = "ContribsAllRevistas.csv", fileEncoding = "UTF-8", row.names=FALSE)

# Now we aim to compare the cleaned list of contributors contained in these
# 12 magazines with the list of contributors for which we have already
# have collected biographical data (i.e. Colaboradores-Base de Datos)

# Now we read in the file "Contributors-Base de Datos" which I exported
# from the GoogleDrive on December 8th, 2022
ContributorsBdD <- read.csv("Colaboradores-BaseDeDatos.csv", header = T, encoding = "UTF-8", stringsAsFactors = FALSE)
# We reduce this large table a bit to the essential information
ContributorsBdD <- ContributorsBdD[,-c(8:25)]
# we rename the columns
names(ContributorsBdD) <- c("Contributor", "Fuente", "Seudonimo", "Sexo", 
                            "PaisOrigen","Nacimiento", "Muerte")

# Now we compare the two data frames.
# The function "anti_join" from the library(dplyr)
# returns rows of x that do NOT have a match in y. 
# It is used to see what will not be included in a join.
library(dplyr)
ContribsNotFound <- anti_join(ContribsAllRevistas, ContributorsBdD, by = "Contributor") 
# this shows the differences; 304 entries, sigh. We export this for correction
write.csv(ContribsNotFound, file = "ContribsNotFound.csv", fileEncoding = "UTF-8", row.names = F)

ContribsFound <- semi_join(ContribsAllRevistas, ContributorsBdD, by="Contributor") 
# works and shows the overlap; 457 entries. At least...

# All the entries in the "ContribsNotFound"-file are now compared to 
# a) the Colaboradores-BaseDeDatos in case we need to correct
# the "AllRevistas" dataframe (e.g. wrong spelling, use of pseudonyms
# instead of real names); and
# b) with the Colaboradores-QueFaltan in order to identify further contributors
# for which biographical data should be collected

# Here we correct the entries in the "AllRevistas" dataframe ... yawn
AllRevistas$Contributor[AllRevistas$Contributor == "Gómez Restrepo, Antonio"] <- "Gómez Restrepo, Antonio María"
AllRevistas$Contributor[AllRevistas$Contributor == "Vives Guerra, Julio"] <- "Velásquez García, José"
AllRevistas$Contributor[AllRevistas$Contributor == "Asunción Silva, José"] <- "Silva, José Asunción"
AllRevistas$Contributor[AllRevistas$Contributor == "Henao, Federico Carlos"] <- "Henao Henao, Federico Carlos"
AllRevistas$Contributor[AllRevistas$Contributor == "Cano, Fidel"] <- "Cano Gutíérrez, Fidel"
AllRevistas$Contributor[AllRevistas$Contributor == "Carranza, Eduardo"] <- "Carranza Fernández, Eduardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Tejada Córdoba, B."] <- "Tejada Córdoba, Blas"
AllRevistas$Contributor[AllRevistas$Contributor == "De la Rosa, Leopoldo"] <- "de la Rosa, Leopoldo"
AllRevistas$Contributor[AllRevistas$Contributor == "Merizalde, Antonio"] <- "Merizalde Uribe, Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Tablanca, Luis"] <- "Pardo Farelo, Enrique"
AllRevistas$Contributor[AllRevistas$Contributor == "González, Fernando"] <- "González Ochoa, Fernando"
AllRevistas$Contributor[AllRevistas$Contributor == "Cano, Antonio J"] <- "Cano Torres, Antonio José"
AllRevistas$Contributor[AllRevistas$Contributor == "Jaramillo Medina, F"] <- "Jaramillo Medina, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "Montoya, José"] <- "Montoya, Antonio José"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo, Antonio José"] <- "Restrepo Trujillo, Antonio José"
AllRevistas$Contributor[AllRevistas$Contributor == "Tejada, Luis"] <- "Tejada Cano, Luis"
AllRevistas$Contributor[AllRevistas$Contributor == "Betancourt, Felix"] <- "Betancourt Villegas, Félix"
AllRevistas$Contributor[AllRevistas$Contributor == "Casas, José Joaquín"] <- "Casas Castañeda, José Joaquín"
AllRevistas$Contributor[AllRevistas$Contributor == "Céspedes, Angel María"] <- "Céspedes, Ángel María"
AllRevistas$Contributor[AllRevistas$Contributor == "Escobar R, Severo"] <- "Escobar Rojo, Severo"
AllRevistas$Contributor[AllRevistas$Contributor == "Quijano, Arturo A."] <- "Quijano, Arturo"
AllRevistas$Contributor[AllRevistas$Contributor == "De Gourmont, Remy"] <- "Gourmont, Remy de"
AllRevistas$Contributor[AllRevistas$Contributor == "De La Cruz, Jorge"] <- "de la Cruz, Jorge"
AllRevistas$Contributor[AllRevistas$Contributor == "Fernández Avendaño, Enrique Wenceslao"] <- "Fernández Avendano, Enrique Wenceslao"
AllRevistas$Contributor[AllRevistas$Contributor == "Garcia P, Domingo"] <- "Garcia Pujol, Domingo"
AllRevistas$Contributor[AllRevistas$Contributor == "Maupassant, Guy de"] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Nieto, Agustín"] <- "Nieto Caballero, Agustín"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo, Carlos E"] <- "Restrepo Restrepo, Carlos Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Barrés, Maurice"] <- "Barrès, Maurice"
AllRevistas$Contributor[AllRevistas$Contributor == "Carrasquilla L, Juan de Dios"] <- "Carrasquilla L., Juan de Dios"
AllRevistas$Contributor[AllRevistas$Contributor == "De Brisay, Henry"] <- "Brisay, Henry de"
AllRevistas$Contributor[AllRevistas$Contributor == "D'ors, Eugenio"] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Garces, Enrique"] <- "Garcés, Enrique"
AllRevistas$Contributor[AllRevistas$Contributor == "LaTorre, Gabriel"] <- "Latorre, Gabriel"
AllRevistas$Contributor[AllRevistas$Contributor == "Mejía, Gabriel"] <- "Arango Mejía, Gabriel"
AllRevistas$Contributor[AllRevistas$Contributor == "Mendía, Ciro"] <- "Mejía Ángel, Carlos"
AllRevistas$Contributor[AllRevistas$Contributor == "Monsalve, J.D."] <- "Monsalve, José Dolores"
AllRevistas$Contributor[AllRevistas$Contributor == "Rendón, Francisco De Paula"] <- "Rendón, Francisco de Paula"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo Rivera"] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo Rivera, J."] <- "Restrepo Rivera, José"
AllRevistas$Contributor[AllRevistas$Contributor == "Robledo, Jorge S."] <- "Robledo, Jorge Samuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Uribe Angel, Manuel"] <- "Uribe Ángel, Manuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Abella M., Temístocles"] <- "Abella Mendoza, Temístocles"
AllRevistas$Contributor[AllRevistas$Contributor == "Alcántara Jurado, Fracisco"] <- "Alcántara Jurado, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "Bengoechea, Alfredo De"] <- "Bengoechea, Alfredo de"
AllRevistas$Contributor[AllRevistas$Contributor == "Bohemia, Juan de"] <- "Alba Barrenechea, Antonio"
AllRevistas$Contributor[AllRevistas$Contributor == "Cañas, Juan. José"] <- "Cañas, Juan José"
AllRevistas$Contributor[AllRevistas$Contributor == "Cano Gutiérrez, Fidel"] <- "Cano Gutíérrez, Fidel"
AllRevistas$Contributor[AllRevistas$Contributor == "Cano, Gabriel"] <- "Cano Villegas, Gabriel"
AllRevistas$Contributor[AllRevistas$Contributor == "Carrasquilla L, Juan de D"] <- "Carrasquilla L., Juan de Dios"
AllRevistas$Contributor[AllRevistas$Contributor == "De Greiff, León"] <- "Greiff, León de"
AllRevistas$Contributor[AllRevistas$Contributor == "De la Cruz, Jorge"] <- "de la Cruz, Jorge"
AllRevistas$Contributor[AllRevistas$Contributor == "De Parville, Henry"] <- "de Parville, Henry"
AllRevistas$Contributor[AllRevistas$Contributor == "De Pombo, Lino"] <- "de Pombo, Lino"
AllRevistas$Contributor[AllRevistas$Contributor == "de Queiroz, Eca"] <- "Eça De Queiroz, José Maria"
AllRevistas$Contributor[AllRevistas$Contributor == "De Unamuno, Miguel"] <- "Unamuno, Miguel de"
AllRevistas$Contributor[AllRevistas$Contributor == "Fallón, Diego"] <- "Fallon Carrión, Diego"
AllRevistas$Contributor[AllRevistas$Contributor == "Fernández, Enrique W."] <- "Fernández Avendano, Enrique Wenceslao"
AllRevistas$Contributor[AllRevistas$Contributor == "Gamero, Luis A"] <- "Gamero, Luis"
AllRevistas$Contributor[AllRevistas$Contributor == "García Calvo, Federico"] <- "Garcia Calvo, Federico"
AllRevistas$Contributor[AllRevistas$Contributor == "Gómez Restrepo,  Antonio M."] <- "Gómez Restrepo, Antonio María"
AllRevistas$Contributor[AllRevistas$Contributor == "Gourmount, Rémy de"] <- "Gourmont, Remy de"
AllRevistas$Contributor[AllRevistas$Contributor == "Güell, Joaquín"] <- "Güell, Joaquín M."
AllRevistas$Contributor[AllRevistas$Contributor == "Hugo, Víctor"] <- "Hugo, Victor"
AllRevistas$Contributor[AllRevistas$Contributor == "Icaza, Francisco A. De"] <- "Icaza, Francisco A. de"
AllRevistas$Contributor[AllRevistas$Contributor == "Jaramillo A., Joaquín E."] <- "Jaramillo, Joaquín Emilio"
AllRevistas$Contributor[AllRevistas$Contributor == "Jaramillo Meza, J.B."] <- "Jaramillo Meza, Juan Bautista"
AllRevistas$Contributor[AllRevistas$Contributor == "Jeuness, Ernest La"] <- "Jeunesse, Ernest La"
AllRevistas$Contributor[AllRevistas$Contributor == "Lemaitre, Jules"] <- "Lemaître, Jules"
AllRevistas$Contributor[AllRevistas$Contributor == "Lewisohn, Ludwing"] <- "Lewisohn, Ludwig"
AllRevistas$Contributor[AllRevistas$Contributor == "Lipparini, Guiseppe"] <- "Lipparini, Giuseppe"
AllRevistas$Contributor[AllRevistas$Contributor == "Márquez Cuervo, Carlos"] <- "Cuervo Márquez, Carlos"
AllRevistas$Contributor[AllRevistas$Contributor == "Marquina, Eduard"] <- "Marquina, Eduardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Martínez Rivas, F."] <- "Martínez Rivas, Federico"
AllRevistas$Contributor[AllRevistas$Contributor == "Martón é Izaguirre, J"] <- "Martón é Izaguirre, J."
AllRevistas$Contributor[AllRevistas$Contributor == "Mejía A, Gustavo"] <- "Mejía Ángel, Gustavo"
AllRevistas$Contributor[AllRevistas$Contributor == "Óspina de Navarro, Sofía"] <- "Ospina de Navarro, Sofía"
AllRevistas$Contributor[AllRevistas$Contributor == "Ospina, Tulio"] <- "Ospina Vásquez, Tulio"
AllRevistas$Contributor[AllRevistas$Contributor == "Peña R., Pedro A."] <- "Peña, Pedro A."
AllRevistas$Contributor[AllRevistas$Contributor == "Perez, Enrique"] <- "Pérez Arbeláez, Enrique"
AllRevistas$Contributor[AllRevistas$Contributor == "Poe, Edgar"] <- "Poe, Edgar Allan"
AllRevistas$Contributor[AllRevistas$Contributor == "Prudhomme, Rene Francois Armand"] <- "Prudhomme, Sully"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo, C.E"] <- "Restrepo Restrepo, Carlos Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Restrepo, Lisando"] <- "Restrepo Arango, Lisandro"
AllRevistas$Contributor[AllRevistas$Contributor == "Rios de Lamperez, Blanca de los"] <- "Rios De Lamperez, Blanca de los"
AllRevistas$Contributor[AllRevistas$Contributor == "Robledo J., Alfonso"] <- "Robledo, Alfonso"
AllRevistas$Contributor[AllRevistas$Contributor == "Rodríguez Moya, Francisco"] <- "Rodriguez Moya, Francisco"
AllRevistas$Contributor[AllRevistas$Contributor == "Rosa, Leopoldo de la"] <- "de la Rosa, Leopoldo"
AllRevistas$Contributor[AllRevistas$Contributor == "Saavedra Galindo, Jose Manuel"] <- "Saavedra Galindo, José Manuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Talero, Eduardo"] <- "Talero Núñez, Eduardo"
AllRevistas$Contributor[AllRevistas$Contributor == "Uribe Olguin, Guillermo"] <- "Uribe Holguin, Guillermo"
AllRevistas$Contributor[AllRevistas$Contributor == "Valencia, G."] <- "d'Ors, Eugenio"
AllRevistas$Contributor[AllRevistas$Contributor == "Velásquez, Samuel"] <- "Velásquez Botero, Samuel"
AllRevistas$Contributor[AllRevistas$Contributor == "Verbrugghe, George"] <- "Verbrugghe, Georges"
AllRevistas$Contributor[AllRevistas$Contributor == "Verbrugghe, Louis Emile"] <- "Verbrugghe, Louis Émile"
AllRevistas$Contributor[AllRevistas$Contributor == "Xanrof, Leon"] <- "Xanrof, León"

# Most common errors are typos, missing or additional accents (í), 
# wrong order of parts of the name ("de la Rosa, Leopoldo"),
# incorrect transcription of the names of FRENCH people
 
# Export the combined data frame with 3539 rows to a csv file for further use
write.csv(AllRevistas, file = "AllRevistas.csv", fileEncoding = "UTF-8", row.names = F)

# We create the table of the contributors which were NOT matched anew
# Match the ContribsAllRevistas df with the Contributors-BaseDeDatos
ContribsNotFound <- anti_join(ContribsAllRevistas, ContributorsBdD, by = "Contributor") 
# 213 entries (244 less than in the first run).
# We export this for the colleagues collecting data
write.csv(ContribsNotFound, file = "ContribsNotFound.csv", fileEncoding = "UTF-8", row.names = F)
# And we look up how many contributors were matched
ContribsFound <- semi_join(ContribsAllRevistas, ContributorsBdD, by="Contributor") 
# 512 so far; which makes up almost half of our ContributorsBdD database...

# Now we merge the "AllRevistas"-database with the "Contributors-BaseDeDatos"
# First we put an index column into the "AllRevistas" data frame
# to be able to order and re-order the content
AllRevistas$ID <- 1:nrow(AllRevistas)
# Merge the two dataframes and select the "Contributor" column as the one
# that should be used for the merge
MergeAllRevContribBdD <- merge(AllRevistas, ContributorsBdD, by = "Contributor", all.x = T)

# We look up the column with "País de Origen" as noted by the diligenciadores
PaisOrigenCheck <- as.data.frame(table(MergeAllRevContribBdD$PaisOrigen.x))
View(PaisOrigenCheck)
# Hmmm ... also here it becomes clear that not all of the diligenciadores
# have understood the idea of "País de Origen" (Argelia? C olombia? Francés y Griego?)

# Now we reorder columns including the new ones, but we drop the 
# PaisOrigen (diligenciadores) and Seudonimos (from the ContributorsBdD) 
MergeAllRevContribBdD <- MergeAllRevContribBdD[,c(21,2,3,1,4,5,22,24:27,7:20)]
# order by Index column to reinstate the order of entries as it can be found
# in the "AllRevistas" data frame
MergeAllRevContribBdD <- MergeAllRevContribBdD[order(MergeAllRevContribBdD$ID, decreasing = FALSE), ]
# Delete Index columns since they are not needed anymore
AllRevistas$ID <- NULL
MergeAllRevContribBdD$ID <- NULL

# Export the result
write.csv(MergeAllRevContribBdD, file = "AllRevistas+DatosContributores.csv", fileEncoding = "UTF-8", row.names=FALSE)





######################### Some basic statistics of the dataset ################
# Now we inspect this dataframe; first we copy it into a new object
AllRevCon <- MergeAllRevContribBdD
Sex <- data.frame(table(AllRevCon$Sexo))
Sex <- Sex[order(Sex$Freq, decreasing = TRUE), ]
View(Sex)
# M 1804 (51%); F 19 (0,54%); [empty] 2
# These are a) weak numbers, because the biographical database seems
# to be not yet rich enough (only a bit more than half of the contributors were matched)
# and b) a super small number of women contributed to the magazines; by comparison,
# in the preceding project we had about 5% of female contributors
# We look up the two empty entries
which(AllRevCon$Sexo == "")
# 303 2505; we put NAs there instead
AllRevCon[303, 7] <- NA
AllRevCon[2505, 7] <- NA
sum(is.na(AllRevCon$Sexo))
# 1716 entries (48,49%) are missing
# From the 3539 rows of the whole dataset, we now subtract 990 rows contributed
# by Anónimo => 2549 rows; we calculate the numbers again
# M 1804 (70,77%); F 19 (0,75%)

Origin <- data.frame(table(AllRevCon$PaisOrigen.y)) 
View(Origin)
# We look up the five empty entries
which(AllRevCon$PaisOrigen.y == "")
# 303  943  969 1764 3076; we put NAs there instead
AllRevCon[303, 8] <- NA
AllRevCon[943, 8] <- NA
AllRevCon[969, 8] <- NA
AllRevCon[1764, 8] <- NA
AllRevCon[3076, 8] <- NA
# count again
Origin <- data.frame(table(AllRevCon$PaisOrigen.y)) 
Origin <- Origin[order(Origin$Freq, decreasing = TRUE), ]
# Colombia 1298 (36,68%)
# España 156 (4,41%)
# Francia 129 (3,65%)
# México 21 (0,59%)
# Venezuela 21 (0,59%)
sum(is.na(AllRevCon$PaisOrigen.y)) # 1719 or 48,57%
# We have to get better at identifying the country of origin!!!
write.csv(Origin, file = "AllRevistas-PaisOrigen.csv", fileEncoding = "UTF-8", row.names=FALSE)

# While these numbers are related to the whole dataset (ALL the contributions), 
# we will now inspect the subset of unique contributors
AllContribs <- select(AllRevCon, Contributor, Fuente, Sexo, PaisOrigen.y, Nacimiento, Muerte)
AuthorsUnique <- unique(AllContribs)
# We remove some of these Authors using the list established above
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Anónimo", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "La dirección", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Directores", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Redacción", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "SD", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Administración", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Revista Moderna", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Documentos oficiales", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Le Temps", ] 
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "[Ilegible]", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "AA. VV.", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Congreso De Colombia", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "E.P", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "EDOS", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Fx. B.", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "LL. RR", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "P.A.", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "R.S.M", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "RR.LL", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "V.O", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Z y Z.", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "France, Mercure de", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Información Sobre La revista", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "La redacción", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "No Se Pudo Localizar Este número", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Publicidad", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Review of Revieus", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Revista de Bibliografía chilena", ] # 1 removed
AuthorsUnique <- AuthorsUnique[AuthorsUnique$Contributor != "Vicepresidente", ] # 1 removed
# Now there are 725 unique contributors

class(AuthorsUnique$Nacimiento)
# "character", convert to numeric
AuthorsUnique$Nacimiento <- as.numeric(AuthorsUnique$Nacimiento)
class(AuthorsUnique$Muerte)
# "character", convert to numeric
AuthorsUnique$Muerte <- as.numeric(AuthorsUnique$Muerte)

range(AuthorsUnique$Nacimiento,na.rm=TRUE) # from 1048 to 1913
# look up of the youngest birthdate in the AllRevCon dataframe
which(AllRevCon$Nacimiento == 1913)
# 1135 1136 1137 1138 1139 1140 1141 1142 1143 => 9 entries in a row
AllRevCon[1135,] # "Carranza Fernández, Eduardo", published 1943 
# in Hojas de Poesía, seems to be plausible
range(AuthorsUnique$Muerte, na.rm=TRUE) # from 1131 to 1996, plausible

Nacimiento <- as.data.frame(table(AuthorsUnique$Nacimiento))
# colnames(Nacimiento) <- c("Año de nacimiento", "Frecuencia")
class(Nacimiento$Var1)
# factor
Nacimiento$Var1 <- as.numeric(as.character(Nacimiento$Var1))
class(Nacimiento$Var1)
# numeric

plot(Nacimiento$Var1, Nacimiento$Freq, type = "l", col = 1, 
     ylim = c(1, 15),
     xlim = c(1790, 1925),
     main = "Años de nacimiento de los contribuyentes",
     xlab = "Año de nacimiento",
     ylab = "Frecuencia")
# No clear pattern yet, 
# most contributors were born in the second half of the 19th century

# Now we look at the distribution of sexes
Sexo <- data.frame(table(AuthorsUnique$Sexo))
Sexo <- Sexo[order(Sexo$Freq, decreasing = TRUE), ]
View(Sexo)
# M 498 (97,64%); F 12 (2,35%)

# Now we look at the distribution of countries of origin
Origine <- data.frame(table(AuthorsUnique$PaisOrigen.y))
Origine <- Origine[order(Origine$Freq, decreasing = TRUE), ]
View(Origine)
# Colombia 250
# Francia 85
# España 61
# Venezuela 10
# Argentina 8
sum(Origine$Freq)
# 508 countries of origin are known






############ Most prolific and best linked contributors ########################
# Who are the most prolific contributors? We already had that ...
# ... in the ContribsAllRevistas data frame

# Visualise the first 46 contributors, i.e. the ones with more than 9 contributions
ContributorsAllRed <- ContribsAllRevistas[1:46,]

# Set the resolution to 300 pixel per inch
ppi <- 300

# Configure the Tif-File and plot it
tiff(paste0("46-Most-Prolific-Contributors.tif"), width=20*ppi, height=8*ppi, compression = "lzw", res=ppi)
# Set margins
par(mar=c(4,4,4,2))
# Make the plot
xx <- barplot(ContributorsAllRed$Freq, main = "Colaboradores más prolíficos, más de 10 contribuciones", 
              col="skyblue", ylim = c(0,55))
## Add text at top of bars
text(x = xx, y = ContributorsAllRed$Freq, label = ContributorsAllRed$Contributor, pos = 3, cex = 0.8, col = "red", srt = 90)
## Add x-axis labels 
axis(1, at=xx, labels=ContributorsAllRed$Freq, tick=FALSE, srt = 90, line=-0.5, cex.axis=0.5)
dev.off()

# Who are the best linked contributors?
AllContribsLinks <- select(AllRevistas, Contributor, NombreR)
LinksPerContributorPerMagazine <- count(AllContribsLinks, Contributor, NombreR)
LinksPerContributor <- LinksPerContributorPerMagazine[,c(1,2)]
LinksPerContributor %>%
  group_by(Contributor) %>%
  summarise(n_distinct(NombreR)) -> LinksContribsToMagazines
LinksContribsToMagazines <- LinksContribsToMagazines[order(LinksContribsToMagazines$`n_distinct(NombreR)`, decreasing = T), ]

# Delete rows containing Anónimo and Directores
LinksContribsToMagazines <- LinksContribsToMagazines[LinksContribsToMagazines$Contributor != "Anónimo", ]
LinksContribsToMagazines <- LinksContribsToMagazines[LinksContribsToMagazines$Contributor != "Directores", ]

# Visualise the first 23 contributors, i.e. the ones with contributions
# to more than 3 magazines
LinksContribsToMagazinesRed <- LinksContribsToMagazines[1:23,]

# Configure the Tif-File and plot it
tiff(paste0("23-Best-Linked-Contributors.tif"), width=20*ppi, height=8*ppi, compression = "lzw", res=ppi)
# Set margins
par(mar=c(4,4,4,2))
# Make the plot
xx <- barplot(LinksContribsToMagazinesRed$`n_distinct(NombreR)`, 
              main = "Colaboradores mejores vinculados, más de 3 revistas", 
              col="skyblue", ylim=c(0,8))
## Add text at top of bars
text(x = xx, y = LinksContribsToMagazinesRed$`n_distinct(NombreR)`, 
     label = LinksContribsToMagazinesRed$Contributor, 
     pos = 3, cex = 0.8, col = "red", srt = 90)
## Add x-axis labels 
axis(1, at=xx, labels=LinksContribsToMagazinesRed$`n_distinct(NombreR)`,
     tick=FALSE, srt = 90, line=-0.5, cex.axis=0.5)
dev.off()
# In this sample of 12 magazines, Rubén Darío (7) is the best linked contributor,
# as well as Enrique Gómez Carillo (6)


########################## Social Network Analysis ############################
# First we create an edgelist by extracting all the edges
edgesraw <- select(AllRevistas, Contributor, NombreR)
# Now we create a weighted edgelist with a structure from / to / n
AllRevistasEdges <- count(edgesraw, Contributor, NombreR)
colnames(AllRevistasEdges)[1] <- "from"
colnames(AllRevistasEdges)[2] <- "to"
colnames(AllRevistasEdges)[3] <- "n"

# remove the rows with contributors who may apply to multiple persons
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Anónimo", ] # 12 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "La dirección", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Directores", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Redacción", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "SD", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Administración", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Revista Moderna", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Documentos oficiales", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Le Temps", ] 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Congreso De Colombia", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "France, Mercure de", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Información Sobre La revista", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "La redacción", ] # 1 
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "No Se Pudo Localizar Este número", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Publicidad", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Review of Revieus", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Revista de Bibliografía chilena", ] # 1 removed
AllRevistasEdges <- AllRevistasEdges[AllRevistasEdges$from != "Vicepresidente", ] # 1 removed

# 973 edges remain; Save the result
write.csv(AllRevistasEdges, file = "AllRevistasEdges.csv", fileEncoding = "UTF-8", row.names=FALSE)

# Create the nodelist from this edgelist
# The data structure we are constructing here has three columns 
# id (i.e. the names of the nodes) / 
# n (the number of contributions) / 
# type (magazine or person).
AllRevistasNodes <- aggregate(n ~ from, data=AllRevistasEdges, FUN=sum)
# Add the column "type"
AllRevistasNodes <- cbind(type = "person", AllRevistasNodes)
# Reorder the columns of the dataframe
AllRevistasNodes <- AllRevistasNodes[,c(2,3,1)]
colnames(AllRevistasNodes)[1] <- "id"
# How many contributions per magazine are there?
AllRevistasRevistas <- count(AllRevistasEdges, to)
AllRevistasRevistas <- cbind(type = "magazine", AllRevistasRevistas)
AllRevistasRevistas <- AllRevistasRevistas[,c(2,3,1)]
colnames(AllRevistasRevistas)[1] <- "id"
colnames(AllRevistasRevistas)[2] <- "n"
# Convert column "type" to "character" 
AllRevistasNodes$type <- as.character(AllRevistasNodes$type)
class(AllRevistasNodes$type)
# should be "character"
# same for the magazine data frame
AllRevistasRevistas$type <- as.character(AllRevistasRevistas$type)
class(AllRevistasRevistas$type)
# should be "character"

# bind the two dataframes together
AllRevistasNodes <- rbind(AllRevistasRevistas, AllRevistasNodes)

# Save the result
write.csv(AllRevistasNodes, file = "All-Revistas-Nodes.csv", fileEncoding = "UTF-8", row.names=FALSE)

# Create an alternative nodelist for other the calculation of measures
# of a bimodal weighted network.
# The data structure which is constructed here has FOUR columns:
# id (a number) / 
# name (the names of the nodes) / 
# type (magazine or person)
# weight (the number of contributions).
AllRevistasNodesAlt <- AllRevistasNodes
# rename the first column to "name"
colnames(AllRevistasNodesAlt)[1] <- "name"
# rename the second column to "weight"
colnames(AllRevistasNodesAlt)[2] <- "weight"
# add an index column
AllRevistasNodesAlt$id <- 1:nrow(AllRevistasNodesAlt)
# reorder the dataframe and drop the "type" column
AllRevistasNodesAlt <- AllRevistasNodesAlt[,c(4,1,2)]

# Save the result
write.csv(AllRevistasNodesAlt, file = "All-Revistas-Nodes-Alt.csv", fileEncoding = "UTF-8", row.names=FALSE)

# And we create a second alternative nodelist
# The data structure which is constructed here is 
# id (a number) / 
# vertex (the names of the nodes) / 
# nsum (the number of contributions).
# This nodelist is necessary for the 
# interactive visualization of a weighted network.
AllRevistasNodesAltII <- AllRevistasNodes
# rename the first column to "vertex"
colnames(AllRevistasNodesAltII)[1] <- "vertex"
# rename the second column to "nsum"
colnames(AllRevistasNodesAltII)[2] <- "nsum"
# add an index column
AllRevistasNodesAltII$id <- 1:nrow(AllRevistasNodesAltII)
# reorder the dataframe
AllRevistasNodesAltII <- AllRevistasNodesAltII[,c(4,1,3,2)]

# Create an alternative edgelist for 
# use in the calculation of the bimodal network
edgelist <- AllRevistasEdges
nodelist <- AllRevistasNodesAltII

colnames(edgelist)[1] <- "source" # rename the column "from" to "source"
colnames(edgelist)[2] <- "target" # rename the column "to" to "target"
# This avoids a later confusion of column names

# The following code creates an edgelist, in which the names in the column
# "from" are being replaced by ids 
edgesCon <- edgelist %>% 
  left_join(nodelist, by = c("source" = "vertex")) %>% 
  rename(from = id) 
# In the first step, both tables are combined; 
# in doing so, both edge columns "from" and "source" (from the edgelist)
# and vertex (from the nodelist) are being compared.
# In the second step, the column "id" is being renamed to "from"
# Now the data frame has 6 columns: source/target/n/from/type/nsum

edgesCon <- edgesCon %>% 
  left_join(nodelist, by = c("target" = "vertex")) %>% 
  rename(to = id) 
# Again, both tables are combined;
# in doing so, both edge columns "target" (from the edgelist)
# and vertex (from the nodelist) are being compared.
# In the second step, the column "id" is being renamed, this time
# to "to" 
# Now there are 9 columns

edgesCon <- select(edgesCon, from, to, n) # Now we select the 
# 3 columns with the IDs and the number of contributions
head(edgesCon) # Inspect the head of the dataset
# rename the columns
colnames(edgesCon) <- c("V1","V2","weight")

# While "best linked" is calculated on the basis of absolute counts,
# we would like to use social network analysis to calculate the betweenness
# values of individual contributors
# For such a calculation, we take into respect that this is a two-mode
# or bimodal network of contributors and magazines

# copy the existing node list into a new object
nodes <- AllRevistasNodesAlt

# convert the existing edgelist into a matrix
tm <- edgesCon
tm <- as.matrix(tm)
head(tm)

# transpose the list
mt <- tm[, c(2, 1, 3)]
head(mt) 

# Load tnet
library(tnet)

# Calculating centrality in tnet
# Check whether this conforms to tnet standards
net <- as.tnet(tm, type="weighted two-mode tnet") 
# There is no error messages, so it's fine

# Calculate two-mode degree
out <- degree_tm(net, measure="degree") # over here, the degrees 
# for all nodes are being calculated, not only for the first column!
colnames(out)[2] <- "two-mode degree" # put an appropriate column name

# Create one-mode projection
net1 <- projecting_tm(net, "Newman")

# Calculate one-mode degree
tmp <- degree_w(net1)[,"degree"]

# Append to table
out <- data.frame(out, projecteddegree=tmp)

# Calculate betweenness and append to table
tmp <- betweenness_w(net1)[,"betweenness"]
out <- data.frame(out, projectedbetweenness=tmp)

# set names
nodes %>%
  select(name) -> nodename

out[,"node"] <- nodename

# save the result
write.csv(out, file = "WeightedTWoModeNet-ComparisonDegree.csv", fileEncoding = "UTF-8", row.names=FALSE)

#################### Two Visualizations of the network #######################
# Now we create two of these fancy interactive visualizations
OUTDIR <- "ianetworkgraphs/" # appoint a directory for the output
dir.create(OUTDIR, FALSE, TRUE) # tell R to create this directory 

# Call the necessary packages
library(tidyverse)
library(tidygraph)
library(ggraph)
library(visNetwork)
library(networkD3)
library(htmlwidgets)

# We re-use the "edgesCon"-edgelist we created above 
# (the one using numbers instead of human-readable names),
# but we provide new column names
colnames(edgesCon) <- c("from", "to", "n")

# and we use the nodelist we already prepared
nodelist <- AllRevistasNodesAltII
# We want to use the names as labels, so we rename column number 2
colnames(nodelist)[2] <- "label" 
# We delete column "type", because it is not needed any longer
nodelist$type <- NULL 

# The following visualization uses the Fruchtermann-Reingold-Layout
# and thus shows a weighted graph
edgesCon <- mutate(edgesCon, width = n/5 + 1) # adds the column "width"

# The following variant creates a visualization in which the labels
# are shown with mouse-over
nodess <- data.frame(id = 1:748,
                     
                     # add labels on nodes
                     label = paste("Node", 1:748), # as many labels as the nodelist contains
                     
                     # size adding value
                     value = 1:748,          
                     
                     # tooltip (html or character), when the mouse is above
                     title = paste0("<p><b>", 1:748,"</b><br>Node !</p>"))

nodelist$title <- nodess$title
nodelist$title <- gsub(nodelist, "Node !", nodelist$label)
# Ignore the warning message

#edgesCon <- mutate(edgesCon, width = n/5 + 1) # This we already had
visNetwork(nodelist, edgesCon, width = "100%") %>% 
  visInteraction(hover = T) %>%
  visNodes(color = list(background = "lightblue", 
                        border = "darkblue",
                        highlight = "yellow"),
           shadow = list(enabled = TRUE, size = 10))  %>%
  visLayout(randomSeed = 12) -> intViz1

saveWidget(intViz1, file="ianetworkgraphs/InteractiveViz-DataSprint2-a.html")
browseURL("ianetworkgraphs/InteractiveViz-DataSprint2-a.html")

# Finally, we'll create a colored variant, in which the labels
# are also shown using mouse-over
# edgesCon <- mutate(edgesCon, width = n/5 + 1) # This we already had above
nodes_d3 <- mutate(nodelist, id = id - 1)
edges_d3 <- mutate(edgesCon, from = from - 1, to = to - 1)
forceNetwork(Links = edges_d3, Nodes = nodes_d3, Source = "from", Target = "to", 
             NodeID = "label", Group = "id", Value = "n", 
             opacity = 1, fontSize = 20, zoom = TRUE) -> intViz2

# Save this variant again as html and explore it in the browser
saveWidget(intViz2, file="ianetworkgraphs/InteractiveViz-DataSprint2-b.html")
browseURL("ianetworkgraphs/InteractiveViz-DataSprint2-b.html")
# Bingo!
