local composer = require( "composer" )

--give the name to the scene
sceneName = "splash_screen"

--creating scene object 
local scene = composer.newScene(sceneName)


--------------------------------------------------------------------------------------
--LOCAL VARIABLES
--------------------------------------------------------------------------------------
--local variables for this scene
--company logo
local bkg
local companyLogo
local companyFire
local companyFire2
local companyFire3
local companyFire4
local companyFire5
local companyFire6
local companyFire7
local companyFire8
local companyFire9

--copany name
local name1
local name2
local name3
local name4
local name5
local name6
local name7
local name8
local name9

--character variables
local dragon
local dragon1
local dragon2
local dragon3
local dragon4
local dragon5
local dragon6
local dragon7
local dragon8
local dragon9

--sound variables
local bkgSound
local bkgChannel
local titleSound
local titleChannel
--------------------------------------------------------------------------------------
--LOCAL FUNCTIONS
--------------------------------------------------------------------------------------

local function setFire( )
    bkgChannel = audio.play(bkgSound)
   transition.to(companyLogo, {alpha = 0, time = 1200})
   transition.to(companyFire, {alpha = 1, time = 1300})
   transition.to(companyFire2,{alpha = 1, time = 1700})
   transition.to(companyFire, {alpha = 0, time = 1700})
   transition.to(companyFire3, {alpha = 1, time = 1800})
   transition.to(companyFire2, {alpha = 0, time = 1800})
   transition.to(companyFire4, {alpha = 1, time = 1900})
   transition.to(companyFire3, {alpha = 0, time = 1900})
   transition.to(companyFire5, {alpha = 1, time = 1950})
   transition.to(companyFire4, {alpha = 0, time = 1950})
   transition.to(companyFire6, {alpha = 1, time = 2000})
   transition.to(companyFire5, {alpha = 0, time = 2000})
   transition.to(companyFire7, {alpha = 1, time = 2050})
   transition.to(companyFire6, {alpha = 0, time = 2050})
   transition.to(companyFire8, {alpha = 1, time = 2100})
   transition.to(companyFire7, {alpha = 0, time = 2100})
   transition.to(companyFire9, {alpha = 1, time = 2150})
   transition.to(companyFire8, {alpha = 0, time = 2150})
end

local function burnName( )
    transition.to(name, {alpha = 1, time = 1200})
    transition.to(name2, {alpha = 1, time = 1500})
    transition.to(name, {alpha = 0, time = 1500})
    transition.to(name3, {alpha = 1, time = 1800})
    transition.to(name2, {alpha = 0, time = 1800})
    transition.to(name4, {alpha = 1, time = 2100})
    transition.to(name3, {alpha = 0, time = 2100})
    transition.to(name5, {alpha = 1, time = 2300})
    transition.to(name4, {alpha = 0, time = 2300})
    transition.to(name6, {alpha = 1, time = 2500})
    transition.to(name5, {alpha = 0, time = 2500})
    transition.to(name7, {alpha = 1, time = 2600})
    transition.to(name6, {alpha = 0, time = 2600})
    transition.to(name8, {alpha = 1, time = 2700})
    transition.to(name7, {alpha = 0, time = 2700})
    transition.to(name9, {alpha = 1, time = 2800})
    transition.to(name8, {alpha = 0, time = 2800})
end

local function titlePlay(  )
    titleChannel = audio.play(titleSound)
end

local function dragonAnimation()
    transition.to(dragon1, {alpha = 1, time = 1200})
    transition.to(dragon, {alpha = 0, time = 1200})
    transition.to(dragon2, {alpha = 1, time = 1300})
    transition.to(dragon1, {alpha = 0, time = 1300})
    transition.to(dragon3, {alpha = 1, time = 1400})
    transition.to(dragon2, {alpha = 0, time = 1400})
    transition.to(dragon4, {alpha = 1, time = 1600})
    transition.to(dragon3, {alpha = 0, time = 1600})
    transition.to(dragon5, {alpha = 1, time = 1800})
    transition.to(dragon4, {alpha = 0, time = 1800})
    transition.to(dragon6, {alpha = 1, time = 2000})
    transition.to(dragon5, {alpha = 0, time = 2000})
    transition.to(dragon7, {alpha = 1, time = 2200})
    transition.to(dragon6, {alpha = 0, time = 2200})
    transition.to(dragon8, {alpha = 1, time = 2400})
    transition.to(dragon7, {alpha = 0, time = 2400})
    transition.to(dragon9, {alpha = 1, time = 2600})
    transition.to(dragon8, {alpha = 0, time = 2600})

end

local function dragonBack()
    transition.to(dragon, {alpha = 1})
    transition.to(dragon9, {alpha = 0})
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    --create the background of the scene
    bkg = display.newImageRect("Images/background.png", display.contentWidth, display.contentHeight+30)
    --set the position
    bkg.x = 510
    bkg.y = 390
    --associating displayed objects to these scene
    sceneGroup:insert(bkg)
    --set the background image to back
    bkg:toBack()

    --create the sound
    --background sound
    bkgSound = audio.loadStream("Sounds/fire.wav")
    --title sound
    titleSound = audio.loadStream("Sounds/title.wav")


    --------------------------------------------------------------------------------------------
    --OBJECT CREATION
    --------------------------------------------------------------------------------------------
    ----------------------------------------------------------
    --COMPANY LOGO
    ---------------------------------------------------------
    --create the company logo
    companyLogo = display.newImage("Images/CompanyLogo.png")
    --set the position, the size and visibility of the company logo
    companyLogo.x = display.contentWidth/2+130
    companyLogo.y = display.contentHeight/2
    companyLogo:scale(1, 1)
    companyLogo.alpha = 1
    sceneGroup:insert(companyLogo)

    --create the first layer of the fire image
    companyFire = display.newImage("Images/fireText (1).png")
    --set the position, the size and visibility
    companyFire.x = display.contentWidth/2+130
    companyFire.y = display.contentHeight/2
    companyFire:scale(0.6, 0.6)
    companyFire.alpha = 0
    sceneGroup:insert(companyFire)

    --create the first layer of the fire image
    companyFire2 = display.newImage("Images/fireText2.png")
    --set the position, the size and visibility
    companyFire2.x = display.contentWidth/2+130
    companyFire2.y = display.contentHeight/2
    companyFire2:scale(0.6, 0.6)
    companyFire2.alpha = 0
    sceneGroup:insert(companyFire2)

    --create the first layer of the fire image
    companyFire3 = display.newImage("Images/fireText3.png")
    --set the position, the size and visibility
    companyFire2.x = display.contentWidth/2+130
    companyFire3.y = display.contentHeight/2
    companyFire3:scale(0.6, 0.6)
    companyFire3.alpha = 0
    sceneGroup:insert(companyFire3)

    --create the first layer of the fire image
    companyFire4 = display.newImage("Images/fireText4.png")
    --set the position, the size and visibility
    companyFire4.x = display.contentWidth/2+130
    companyFire4.y = display.contentHeight/2
    companyFire4:scale(0.6, 0.6)
    companyFire4.alpha = 0
    sceneGroup:insert(companyFire4)

    --create the first layer of the fire image
    companyFire5 = display.newImage("Images/fireText5.png")
    --set the position, the size and visibility
    companyFire5.x = display.contentWidth/2+130
    companyFire5.y = display.contentHeight/2
    companyFire5:scale(0.6, 0.6)
    companyFire5.alpha = 0
    sceneGroup:insert(companyFire)

    --create the first layer of the fire image
    companyFire6 = display.newImage("Images/fireText6.png")
    --set the position, the size and visibility
    companyFire6.x = display.contentWidth/2+130
    companyFire6.y = display.contentHeight/2
    companyFire6:scale(0.6, 0.6)
    companyFire6.alpha = 0
    sceneGroup:insert(companyFire6)

    --create the first layer of the fire image
    companyFire7 = display.newImage("Images/fireText7.png")
    --set the position, the size and visibility
    companyFire7.x = display.contentWidth/2+130
    companyFire7.y = display.contentHeight/2
    companyFire7:scale(0.6, 0.6)
    companyFire7.alpha = 0
    sceneGroup:insert(companyFire7)

    --create the first layer of the fire image
    companyFire8 = display.newImage("Images/fireText8.png")
    --set the position, the size and visibility
    companyFire8.x = display.contentWidth/2+130
    companyFire8.y = display.contentHeight/2
    companyFire8:scale(0.6, 0.6)
    companyFire8.alpha = 0
    sceneGroup:insert(companyFire8)

    --create the first layer of the fire image
    companyFire9 = display.newImage("Images/fireText9.png")
    --set the position, the size and visibility
    companyFire9.x = display.contentWidth/2+130
    companyFire9.y = display.contentHeight/2
    companyFire9:scale(0.6, 0.6)
    companyFire9.alpha = 0
    sceneGroup:insert(companyFire9)
    
    -----------------------------------------------------------
    --COMPANY NAME
    -----------------------------------------------------------
    --create the first layer
    name = display.newImage("Images/GameVille1.png")
    --set the position, size and visibility
    name.x = display.contentWidth/2+150
    name.y = 700
    name:scale(0.5, 0.5)
    name.alpha = 0
    sceneGroup:insert(name)

    --create the second layer
    name2 = display.newImage("Images/GameVille2.png")
    --set the position, size and visibility
    name2.x = display.contentWidth/2+150
    name2.y = 700
    name2:scale(0.5, 0.5)
    name2.alpha = 0
    sceneGroup:insert(name2)

    --create the third layer
    name3 = display.newImage("Images/GameVille3.png")
    --set the position, size and visibility
    name3.x = display.contentWidth/2+150
    name3.y = 700
    name3:scale(0.5, 0.5)
    name3.alpha = 0
    sceneGroup:insert(name3)
     
    --create the fourth layer
    name4 = display.newImage("Images/GameVille4.png")
    --set the position, size and visibility
    name4.x = display.contentWidth/2+150
    name4.y = 700
    name4:scale(0.5, 0.5)
    name4.alpha = 0
    sceneGroup:insert(name4)

    --create the fifth layer
    name5 = display.newImage("Images/GameVille5.png")
    --set the position, size and visibility
    name5.x = display.contentWidth/2+150
    name5.y = 700
    name5:scale(0.5, 0.5)
    name5.alpha = 0
    sceneGroup:insert(name5)

    --create the sixth layer
    name6 = display.newImage("Images/GameVille6.png")
    --set the position, size and visibility
    name6.x = display.contentWidth/2+150
    name6.y = 700
    name6:scale(0.5, 0.5)
    name6.alpha = 0
    sceneGroup:insert(name6)

    --create the seventh layer
    name7 = display.newImage("Images/GameVille7.png")
    --set the position, size and visibility
    name7.x = display.contentWidth/2+150
    name7.y = 700
    name7:scale(0.5, 0.5)
    name7.alpha = 0
    sceneGroup:insert(name7)

    --create the eighth layer
    name8 = display.newImage("Images/GameVille8.png")
    --set the position, size and visibility
    name8.x = display.contentWidth/2+150
    name8.y = 700
    name8:scale(0.5, 0.5)
    name8.alpha = 0
    sceneGroup:insert(name8)

    --create the nineth layer
    name9 = display.newImage("Images/GameVille9.png")
    --set the position, size and visibility
    name9.x = display.contentWidth/2+150
    name9.y = 700
    name9:scale(0.5, 0.5)
    name9.alpha = 0
    sceneGroup:insert(name9)

    ---------------------------------------------------------
    --DRAGON
    ---------------------------------------------------------
    dragon = display.newImage("Images/Dino.png")
    --set the position, size and visibility
    dragon.x = 100
    dragon.y = 400
    dragon:scale(0.6, 0.6)
    dragon.alpha = 1
    sceneGroup:insert(dragon)

    dragon1 = display.newImage("Images/Dino1.png")
    --set the position, size and visibility
    dragon1.x = 100
    dragon1.y = 400
    dragon1:scale(0.6, 0.6)
    dragon1.alpha = 0
    sceneGroup:insert(dragon1)

    dragon2 = display.newImage("Images/Dino2.png")
    --set the position, size and visibility
    dragon2.x = 100
    dragon2.y = 400
    dragon2:scale(0.6, 0.6)
    dragon2.alpha = 0
    sceneGroup:insert(dragon2)

    dragon3 = display.newImage("Images/Dino3.png")
    --set the position, size and visibility
    dragon3.x = 100
    dragon3.y = 400
    dragon3:scale(0.6, 0.6)
    dragon3.alpha = 0
    sceneGroup:insert(dragon3)

    dragon4 = display.newImage("Images/Dino4.png")
    --set the position, size and visibility
    dragon4.x = 100
    dragon4.y = 400
    dragon4:scale(0.6, 0.6)
    dragon4.alpha = 0
    sceneGroup:insert(dragon4)

    dragon5 = display.newImage("Images/Dino5.png")
    --set the position, size and visibility
    dragon5.x = 100
    dragon5.y = 400
    dragon5:scale(0.6, 0.6)
    dragon5.alpha = 0
    sceneGroup:insert(dragon5)

    dragon6 = display.newImage("Images/Dino6.png")
    --set the position, size and visibility
    dragon6.x = 100
    dragon6.y = 400
    dragon6:scale(0.6, 0.6)
    dragon6.alpha = 0
    sceneGroup:insert(dragon6)

    dragon7 = display.newImage("Images/Dino7.png")
    --set the position, size and visibility
    dragon7.x = 100
    dragon7.y = 400
    dragon7:scale(0.6, 0.6)
    dragon7.alpha = 0
    sceneGroup:insert(dragon7)

    dragon8 = display.newImage("Images/Dino8.png")
    --set the position, size and visibility
    dragon8.x = 100
    dragon8.y = 400
    dragon8:scale(0.6, 0.6)
    dragon8.alpha = 0
    sceneGroup:insert(dragon8)

    dragon9 = display.newImage("Images/Dino9.png")
    --set the position, size and visibility
    dragon9.x = 100
    dragon9.y = 400
    dragon9:scale(0.6, 0.6)
    dragon9.alpha = 0
    sceneGroup:insert(dragon9)
    ----------------------------------------------------------------------------------------------------
    --CALL THE FUNCTIONS
    ----------------------------------------------------------------------------------------------------

    timer.performWithDelay(500, setFire)
    burnName()
    timer.performWithDelay(3000, titlePlay)
    dragonAnimation()
    timer.performWithDelay(3000, dragonBack)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene