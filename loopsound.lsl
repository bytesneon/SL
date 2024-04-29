//Playable sounds that can only be heard within a certain radius of your camera position
//Replace "00000000-0000-0000-0000-000000000000" with your sound uuid
//Change radius value in llSetSoundRadius
 
default
{
    state_entry()
    {
        llLoopSound("00000000-0000-0000-0000-000000000000", 1.0);
        llSetSoundRadius(2.0);
    }
}
