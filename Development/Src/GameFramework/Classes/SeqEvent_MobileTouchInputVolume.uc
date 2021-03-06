/**
 * Copyright 1998-2014 Epic Games, Inc. All Rights Reserved.
 */
class SeqEvent_MobileTouchInputVolume extends SequenceEvent;

defaultproperties
{
	ObjName="Touch Input Volume"
	ObjCategory="Input"

	OutputLinks(0)=(LinkDesc="Touch")
	OutputLinks(1)=(LinkDesc="Release")
	OutputLinks(2)=(LinkDesc="Double Tap")

	bAutoActivateOutputLinks=false
	bPlayerOnly=false
}
