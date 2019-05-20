//=========== (C) Copyright 1999 Valve, L.L.C. All rights reserved. ===========
//
// The copyright to the contents herein is the property of Valve, L.L.C.
// The contents may be used and/or copied only with the written permission of
// Valve, L.L.C., or in accordance with the terms and conditions stipulated in
// the agreement/contract under which the contents have been supplied.
//=============================================================================

// No spaces in event names, max length 32
// All strings are case sensitive
//
// valid data key types are:
//   string : a zero terminated string
//   bool   : unsigned int, 1 bit
//   byte   : unsigned int, 8 bit
//   short  : signed int, 16 bit
//   long   : signed int, 32 bit
//   float  : float, 32 bit
//   local  : any data, but not networked to clients
//
// following key names are reserved:
//   local      : if set to 1, event is not networked to clients
//   unreliable : networked, but unreliable
//   suppress   : never fire this event
//   time	: firing server time
//   eventid	: holds the event ID

"sdkevents"
{
	"player_death"
	{
		// this extends the original player_death 
		"userid"				"short"		// user ID who died				
		"attacker"				"short"		// user ID who killed
		"weapon"				"string"	// weapon name killer used 
		"weaponid"				"short"		// ID of weapon killed used
		"damagebits"			"long"		// bits of type of damage
		"customkill"			"short"		// type of custom kill
		"assister"				"short"		// user ID of assister
		"weapon_logclassname"	"string"	// weapon name that should be printed on the log
	}
	
	"player_hurt"
	{
		"userid"	"short"   	// user ID who was hurt			
		"attacker"	"short"	 	// user ID who attacked
		"weapon"	"string" 	// weapon name attacker used
	}
	
	"player_changeclass"
	{
		"userid"	"short"		// user ID who changed class
		"class"		"short"		// class that they changed to
	}

	"spec_target_updated"
	{
	}
	
	"teamplay_round_start"			// round restart
	{
		"full_reset"	"bool"		// is this a full reset of the map
	}
	
	"achievement_earned"
	{
		"player"		"byte"		// entindex of the player
		"achievement"	"short"		// achievement ID
	}
}
