          ________                             
         /  _____/  _____ _____  ______  ______
        /   \  ___ /     \\__  \ \____ \/  ___/
        \    \_\  \  Y Y  \/ __ \|  |_> >___ \ 
         \______  /__|_|  (____  /   __/____  >
                \/      \/     \/|__|       \/ 


This library will make it easy for you to translate an address
into geocode. It uses the google maps api v3 and uses the json
response to get the data.

Usage
=====

    class User < ActiveRecord::Base
      include Gmaps
      before_validation do
        # Use Gmaps funtions...
      end
    end

Route an address with it's countries:

    Gmaps.countries('Lisbon', 'Riga') 
    => [["Portugal", 353952], ["Spain", 584955], ["France", 1014932], ["Belgium", 189957], ["Germany", 704382], ["Poland", 800685], ["Lithuania", 269954], ["Latvia", 84771]] 

Get only the distance (in meter)

    Gmaps.distance('Berlin', 'Talin') => 1558639

Different forms of formatting the address input in a unified way:

    Gmaps.formatted_address 'Barcelona' => "Barcelona, Spain" 
    Gmaps.country 'Barcelona' => "Spain" 
    Gmaps.city 'Barcelona, Paradis 3, 2 1' => 'Barcelona'



    
