destruct() {
    SCRIPT_PATH="$(realpath "$0")"
    rm -f "$SCRIPT_PATH"
    exit 1
}
trap destruct INT TERM EXIT

#!/bin/bash

# Default values (optional)
USERNAME=""
PASSWORD=""

# Parse command-line arguments
while getopts "u:p:" opt; do
  case $opt in
    u) USERNAME="$OPTARG" ;;
    p) PASSWORD="$OPTARG" ;;
    *) echo "Usage: $0 -u <username> -p <password>" >&2
       exit 1
       ;;
  esac
done

# Check if required arguments are provided
if [ -z "$USERNAME" ] || [ -z "$PASSWORD" ]; then
  echo "Error: Both username (-u) and password (-p) are required."
  echo "Usage: $0 -u <username> -p <password>"
  exit 1
fi

# Use the variables
echo "Username: $USERNAME"
echo "Password: $PASSWORD"

# Rest of your script...

am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null
am start com.paymaya > /dev/null

# Define arrays of first and last names
first_names=(
    "John" "Jane" "Alex" "Chris" "Taylor" "Jordan" "Morgan" "Casey" "Drew" "Riley"
    "Abe" "Adela" "Adrian" "Aileen" "Alfonso" "Althea" "Amado" "Amara" "Andres" "Angelica"
    "Antonio" "Ariana" "Arnel" "Arlene" "Armando" "Arvin" "Asher" "Aubrey" "Aurelio" "Aurora"
    "Benigno" "Bernadette" "Bernardo" "Bianca" "Benedict" "Benny" "Benjamin" "Bertoldo" "Bethany" "Blanca"
    "Carlos" "Carmen" "Cecilia" "Cesar" "Chad" "Charles" "Charmaine" "Cheryl" "Clarence" "Clarissa"
    "Claudine" "Clifford" "Cristina" "Cristo" "Daniela" "Dante" "David" "Deborah" "Dennis" "Diana"
    "Dino" "Diosdado" "Dolores" "Dominic" "Donato" "Doris" "Eduardo" "Edwin" "Elaine" "Elena"
    "Eliseo" "Emmanuel" "Emmanuelle" "Enrico" "Erika" "Ernesto" "Esteban" "Esther" "Eugene" "Eulalia"
    "Evelyn" "Felipe" "Felisa" "Fernando" "Fidel" "Flora" "Florencio" "Florita" "Francisco" "Francisca"
    "Gabriel" "Gemma" "Genaro" "Geraldine" "Gerardo" "Gilbert" "Gloria" "Gregorio" "Guillermo" "Hector"
    "Helen" "Hilda" "Horacio" "Irene" "Isabel" "Isidro" "Ismael" "Jacqueline" "Javier" "Jesse"
    "Jessica" "Jesus" "Jocelyn" "Jorge" "Jose" "Josefa" "Josephine" "Joshua" "Juan" "Julius"
    "Julieta" "Justina" "Karla" "Katherine" "Kathleen" "Katrina" "Kris" "Kristian" "Kristina"
    "Laarni" "Lance" "Lani" "Lara" "Lauro" "Leandro" "Leila" "Leonardo" "Leticia" "Lilibeth"
    "Liza" "Lorelei" "Lourdes" "Aidan" "Alvin" "Amos" "Andre" "Anita" "Aria" "Ava"
    "Bea" "Brennan" "Brooke" "Caleb" "Camille" "Carl" "Carmen" "Chloe" "Christian" "Clarence"
    "Clara" "Claudia" "Colleen" "Connie" "Cora" "Daisy" "Dante" "Daryl" "Dawn" "Dean"
    "Diana" "Diego" "Dina" "Dion" "Doris" "Drew" "Dylan" "Eden" "Edgar" "Eileen"
    "Elaine" "Elena" "Eli" "Elise" "Ella" "Elliot" "Emily" "Emma" "Enzo" "Erica"
    "Erik" "Ethan" "Eva" "Eve" "Fay" "Felix" "Fiona" "Flora" "Francis" "Freddie"
    "Gabby" "Gage" "Gail" "Garry" "Gavin" "Gemma" "George" "Gina" "Glen" "Gloria"
    "Grace" "Graham" "Grant" "Gwen" "Hana" "Hannah" "Harold" "Harry" "Hazel" "Heidi"
    "Helen" "Henry" "Holly" "Hope" "Ian" "Irene" "Iris" "Isabel" "Jack" "Jacob"
    "Jade" "James" "Jane" "Jared" "Jason" "Jasper" "Javier" "Jay" "Jean" "Jeff"
    "Jill" "Jim" "Joan" "Joe" "Joel" "John" "Jill" "Jodie" "Joey" "Jordan"
    "Joseph" "Josephine" "Josh" "Joy" "Judy" "Julia" "Julian" "Julie" "Justin" "Kara"
    "Karla" "Kate" "Katherine" "Keith" "Kelly" "Ken" "Kenny" "Kevin" "Kim" "Kimberly"
    "Kris" "Krista" "Kristen" "Kyle" "Lana" "Lara" "Laura" "Lauren" "Leah" "Leo"
    "Leslie" "Liam" "Lily" "Linda" "Lindsay" "Lisa" "Liz" "Liza" "Logan" "Louis"
    "Lucas" "Lydia" "Lyle" "Mabel" "Mackenzie" "Madeline" "Madison" "Maggie" "Mandy"
    "Mara" "Maria" "Marcia" "Margaret" "Marlene" "Martha" "Martin" "Mason" "Maya" "Megan"
    "Melanie" "Melody" "Mia" "Michael" "Michelle" "Mickey" "Mildred" "Milo" "Mindy" "Mitch"
    "Mona" "Monica" "Morgan" "Moses" "Mya" "Nadia" "Nancy" "Natalie" "Nathan" "Nina" "Noah"
    "Nora" "Norma" "Olivia" "Oscar" "Owen" "Paige" "Pamela" "Patricia" "Patrick" "Paul"
    "Paula" "Peter" "Peyton" "Philip" "Phoebe" "Rachael" "Ralph" "Randy" "Rebecca" "Reed"
    "Riley" "Robert" "Robin" "Rochelle" "Roderick" "Roger" "Roland" "Rosa" "Rose" "Ruth"
    "Ryan" "Sadie" "Sally" "Sam" "Samantha" "Samuel" "Sandra" "Sandy" "Sarah" "Savannah" "Scott"
    "Sean" "Shane" "Shannon" "Sharon"
)

last_names=(
    "Abad" "Alcantara" "Alfonso" "Almeda" "Alvarado" "Amador" "Angeles" "Antonio" "Aragon" "Arceo"
    "Bautista" "Bautista" "Beltran" "Benitez" "Bermudez" "Bernardo" "Besa" "Bishop" "Blanco" "Bolaños"
    "Caballero" "Cabrera" "Cajigas" "Calderon" "Calixto" "Camarillo" "Candelaria" "Cano" "Capistrano"
    "Castillo" "Cayabyab" "Ceballos" "Ceniza" "Chavez" "Chiong" "Clemente" "Concepcion" "Cordero" "Cruz"
    "Dela Cruz" "Delgado" "Dizon" "Domingo" "Dumlao" "Duran" "Escobar" "Espino" "Esteban" "Estrada"
    "Felix" "Flores" "Gacusan" "Gamboa" "Garcia" "Gonzales" "Gonzalez" "Guerrero" "Gumapac" "Hernandez"
    "Ibarra" "Iglesias" "Javier" "Joaquin" "Joven" "Jurado" "Lacson" "Laguardia" "Lao" "Lao" "Lazo"
    "Lopez" "Luna" "Macapagal" "Magsaysay" "Malonzo" "Manalo" "Manlapig" "Marasigan" "Mariano" "Marquez"
    "Martinez" "Mendoza" "Mercado" "Morales" "Navarro" "Natividad" "Nunez" "Ocampo" "Olivarez" "Ong"
    "Panganiban" "Pascual" "Pineda" "Quinto" "Ramos" "Reyes" "Rico" "Rivera" "Rodriguez" "Romero"
    "Santos" "Serrano" "Sison" "Sison" "Tan" "Teehankee" "Tiongson" "Torres" "Tungol" "Valdez"
    "Vargas" "Villaruel" "Villanueva" "Yap" "Yap" "Zaragoza"
    )

# Generate a random first and last name with suffixes
first_name="${first_names[$RANDOM % ${#first_names[@]}]} ${first_names[$RANDOM % ${#first_names[@]}]} ${first_names[$RANDOM % ${#first_names[@]}]}"
last_name="${last_names[$RANDOM % ${#last_names[@]}]}${last_names[$RANDOM % ${#last_names[@]}]}"

# // Checking if Supported.

screen_size=$(su -c "wm size")
echo $screen_size



if [[ "$screen_size" == "Physical size: 1080x2400" ]]; then
    echo Enabling Airplane Mode
    settings put global airplane_mode_on 1 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    svc data disable > /dev/null

    am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null

    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    echo Setting up...
    input tap 888 375
    sleep 3
    input tap 888 375
    sleep 3
    input tap 888 375
    sleep 3
    input tap 888 375
    sleep .1

    input tap 540 375
    sleep 5

    echo Opening PayMaya...
    monkey -p com.paymaya -c android.intent.category.LAUNCHER 1
    sleep 4

    echo Clicking Allow
    input tap 539 2028
    sleep 3

    echo Clicking Get Started
    input tap 539 2205
    sleep 2

    echo Clicking Continue Twice
    input tap 539 2159
    sleep 2
    input tap 539 2159
    sleep 2

    echo Granting Permission
    input tap 539 2009
    sleep 3.5

    echo Clicking Start Account
    input tap 539 1794
    sleep 3

    echo Typing first name
    input tap 501 967
    sleep 3.5
    input text "$first_name"

    echo Typing last name
    sleep 3.5
    input tap 501 1175
    input tap 501 1175
    sleep 3.5
    input text "$last_name"

    echo Clicking continue
    sleep 3.5
    input tap 501 1360

    echo Enabling Mobile Data
    settings put global airplane_mode_on 0 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null
    svc data enable > /dev/null

elif [[ "$screen_size" == "Physical size: 1080x2460" ]]; then
    echo Enabling Airplane Mode
    settings put global airplane_mode_on 1 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    svc data disable > /dev/null

    am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null

    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    echo Setting up...
    input tap 888 375
    sleep 3
    input tap 888 375
    sleep 2
    input tap 888 375
    sleep 2
    input tap 888 375
    sleep .1
    input tap 540 375
    sleep 5
    echo Opening PayMaya...
    monkey -p com.paymaya -c android.intent.category.LAUNCHER 1
    sleep 4

    echo Clicking Allow
    input tap 536 2135

   echo Clicking Get Started
    input tap 533 2363
    sleep 3

    echo Clicking Continue Twice
    input tap 440 2133
    sleep 3
    input tap 440 2133
    sleep 3

    echo Granting Permission
    input tap 520 2188
    sleep 2

    echo Granting Permission
    input tap 529 2182
    sleep 2

    echo Clicking Start Account
    input tap 504 1821
    sleep 3

    echo Typing first name
    input tap 501 967
    sleep 3.5
    input text "$first_name"

    echo Typing last name
    sleep 3.5
    input tap 501 1175
    input tap 501 1175
    sleep 3.5
    input text "$last_name"

    echo Clicking continue
    sleep 3.5
    input tap 501 1360

    echo Enabling Mobile Data
    settings put global airplane_mode_on 0 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null
    svc data enable > /dev/null

elif [[ "$screen_size" == "Physical size: 1080x2160" ]]; then
    echo Enabling Airplane Mode
    settings put global airplane_mode_on 1 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    svc data disable > /dev/null

    am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    echo Setting up...
    input tap 893 276
    sleep 3
    input tap 893 276
    sleep 3
    input tap 893 276
    sleep 3
    input tap 893 276
    sleep 3

    input tap 540 278
    sleep 7

    echo Opening PayMaya...
    monkey -p com.paymaya -c android.intent.category.LAUNCHER 1
    sleep 5

    echo Clicking Get Started
    input tap 550 1990
    sleep 3

    echo Clicking Continue Twice
    input tap 550 1945
    sleep 3
    input tap 550 1945
    sleep 3

    echo Granting Permission
    input tap 528 1968
    sleep 2

    echo Granting Permission
    input tap 550 1560
    sleep 2

    echo Clicking Start Account
    input tap 550 1640
    sleep 3

    echo Typing first name
    input tap 182 747
    sleep 3.5
    input text "$first_name"

    echo Typing last name
    sleep 3.5
    input tap 110 1000
    input tap 110 1000
    sleep 3.5
    input text "$last_name"

    echo Clicking continue
    sleep 3.5
    input tap 535 1115


    echo Enabling Mobile Data
    settings put global airplane_mode_on 0 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null
    svc data enable > /dev/null

elif [[ "$screen_size" == "Physical size: 1080x2246" ]]; then
    echo Enabling Airplane Mode
    settings put global airplane_mode_on 1 > /dev/null
    #su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    svc data disable > /dev/null

    am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null

    echo Setting up...
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3

    input tap 540 375
    sleep 5

    echo Opening PayMaya...
    monkey -p com.paymaya -c android.intent.category.LAUNCHER 1
    sleep 4

    echo Clicking Get Started
    input tap 550 1990
    sleep 2

    echo Clicking Continue Twice
    input tap 550 1945
    sleep 2
    input tap 550 1945
    sleep 2

    echo Granting Permission
    input tap 464 1936
    sleep 2

    echo Granting Permission
    input tap 510 1436
    sleep 2

    echo Clicking Start Account
    input tap 524 1633
    sleep 2

    echo Typing first name
    input tap 470 1901
    sleep 2
    input text "$first_name"

    echo Typing last name
    sleep 2
    input tap 510 1096
    input tap 510 1096
    sleep 2
    input text "$last_name"

    echo Clicking continue
    sleep 2
    input tap 525 1210


    echo Enabling Mobile Data
    settings put global airplane_mode_on 0 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null
    svc data enable > /dev/null

elif [[ "$screen_size" == "Physical size: 720x1600" ]]; then
    echo Enabling Airplane Mode
    settings put global airplane_mode_on 1 > /dev/null
    #su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    am broadcast -a android.intent.action.AIRPLANE_MODE --ez state true > /dev/null
    svc data disable > /dev/null

    am start com.google.android.play.games/com.google.android.play.games.MainActivity > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null
    pm clear com.paymaya > /dev/null

    echo Setting up...
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3
    input tap 600 280
    sleep 3

    input tap 360 280
    sleep 5

    echo Opening PayMaya...
    monkey -p com.paymaya -c android.intent.category.LAUNCHER 1
    sleep 4

    echo Clicking Get Started
    input tap 365 965
    sleep 2

    echo Clicking Continue Twice
    input tap 350 1250
    sleep 2
    input tap 350 1420
    sleep 2

    echo Granting Permission
    input tap 350 1420
    sleep 2

    echo Granting Permission
    input tap 350 1420
    sleep 2

    echo Granting Permission
    input tap 350 1000
    sleep 2

    echo Clicking Start Account
    input tap 350 1150
    sleep 2

    #echo Typing first name
    #input tap 470 1901
    input keyevent 61
    input keyevent 66
    sleep 2
    input text "$first_name"
    sleep 2

    input keyevent 61
    input keyevent 66
    sleep 2
    input text "$last_name"

    echo Clicking continue
    sleep 2
    input tap 350 850


    echo Enabling Mobile Data
    settings put global airplane_mode_on 0 > /dev/null
    su -c am broadcast -a android.intent.action.AIRPLANE_MODE --ez state false > /dev/null
    svc data enable > /dev/null

else
    echo 'Device not Supported.'
fi
echo "Done"
destruct
