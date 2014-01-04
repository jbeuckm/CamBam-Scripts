sub main

    dim newselection as Generic.List(of Entity) = new Generic.List(of Entity)()

    for each ent as Entity in view.SelectedEntities
    	if typeof ent is Surface
	   	  newselection.Add(ent)
			end if
			next ent
			
			view.Select(newselection.ToArray())
			view.RefreshView()

CamBamConfig.Defaults.ReloadTreeAfterScript = false

end sub
