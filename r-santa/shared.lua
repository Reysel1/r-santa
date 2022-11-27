QBCore = exports["qb-core"]:GetCoreObject()

CFG = {}

CFG.ALL = {
    
    ["xmax_tree"] = { --add more regal points 

        --exmple

        {    
            x = 575.05, 
            y = -2588.65, 
            z = 6.31, 
            h = 224.58,  
            model = 'prop_xmas_tree_int', 
            helptext = "~g~G~w~ - Recoger regalo" --the text 3d
        };
        {
            x = 1892.79, 
            y = -4494.46, 
            z = 937.65, 
            h = 224.58,  
            model = 'prop_xmas_tree_int', 
            helptext = "~g~G~w~ - collect gift" --the text 3d
        };
    },
        
    ["xmax_snowman"] = { --add more points the snowam points

        --example: 

        {
            x = 569.46, 
            y = -2583.69, 
            z = 6.29, 
            h = 224.58,  
            model = 'prop_prlg_snowpile', 
            helptext =  "~g~G~w~ - pick up ball" --the text 3d
        }
        
    },

    ["items"] = {  --- add hear a items randoms

        --example: 

        [1] = { 
            itemsname = "phone", --name the item 
            label = "Movil" -- label 
        };
         
    },

    ["PROGGRSSTIME"] = 3000; -- on ms


    ["LANGS"] = {
        --NOTIFY
         ["HAVEREGAL"] = "~r~You have no gifts to collect";
         ["HAVESNOW"] = "~r~You already have a snow globe.";
         ["ADDSNOW"] = "You have caught a %s snowballs.";
         ["ADDITEMRANDOM"] = "You have taken a %s.";
         --PROGESS
         ["PROGRESS"] = "Collecting gift";
         ["PROGRESSNOW"] = "Collecting Snowball";

    }

     
}
