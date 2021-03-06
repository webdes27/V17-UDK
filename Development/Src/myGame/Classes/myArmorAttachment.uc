class myArmorAttachment extends SkeletalMeshActor;

var Name AttachmentSocket;

simulated function AttachTo(Pawn OwnerPawn)
{
	if (OwnerPawn.Mesh != None)
	{
		if ( SkeletalMeshComponent != None )
		{
			// Weapon Mesh Shadow
			SkeletalMeshComponent.SetShadowParent(OwnerPawn.Mesh);

			OwnerPawn.Mesh.AttachComponent(SkeletalMeshComponent, 'b_Root');
			SkeletalMeshComponent.SetAnimTreeTemplate(OwnerPawn.Mesh.AnimTreeTemplate);
			SkeletalMeshComponent.AnimSets = OwnerPawn.Mesh.AnimSets;
			SkeletalMeshComponent.SetParentAnimComponent(OwnerPawn.Mesh);
			SkeletalMeshComponent.SetLightEnvironment(myPawn(OwnerPawn).LightEnvironment);
		}
	}
	else
	{
		return;
	}
}

/**
 * Detach weapon from skeletal mesh
 */
simulated function DetachFrom( SkeletalMeshComponent MeshCpnt )
{
	// Weapon Mesh Shadow
	if ( SkeletalMeshComponent != None )
	{
		SkeletalMeshComponent.SetShadowParent(None);
		SkeletalMeshComponent.SetLightEnvironment(None);
	}
	if ( MeshCpnt != None )
	{
		// detach weapon mesh from player skelmesh
		if ( SkeletalMeshComponent != None )
		{
			MeshCpnt.DetachComponent( SkeletalMeshComponent );
		}
	}
}

DefaultProperties
{
	bNoDelete=false
}
