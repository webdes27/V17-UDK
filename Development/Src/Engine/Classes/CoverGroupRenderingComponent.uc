/**
 * Copyright 1998-2014 Epic Games, Inc. All Rights Reserved.
 */
class CoverGroupRenderingComponent extends PrimitiveComponent
	native(AI);

cpptext
{
	virtual FPrimitiveSceneProxy* CreateSceneProxy();
	virtual void UpdateBounds();
	virtual UBOOL ShouldRecreateProxyOnUpdateTransform() const;
};

defaultproperties
{
	HiddenGame=TRUE
}
