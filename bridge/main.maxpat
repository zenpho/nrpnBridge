{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 5,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ 655.0, 79.0, 591.0, 413.0 ],
		"bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"editing_bgcolor" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 490.0, 178.0, 38.0, 20.0 ],
					"style" : "",
					"text" : "LSB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 178.0, 38.0, 20.0 ],
					"style" : "",
					"text" : "MSB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 246.0, 12.0, 331.0, 154.0 ],
					"style" : "",
					"text" : "\tthe problem:\n\t- your MIDI sequener has terrible NRPN handling\n\n\tthe solution:\n\t- your hardware sends NRPN\n\t- the mapper receives NRPN maps to pbend on ch1-ch16\n\t-\n\t- your sequencer records/plays/edits pbend ch1-ch16\n\t- \n\t- the mapper receives pbend on ch1-ch16 maps to NRPN\n\t- your hardware receives NRPN"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 23.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 12.0, 203.0, 32.0 ],
					"style" : "",
					"text" : "NRPN bridge"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 386.0, 178.0, 51.0, 20.0 ],
					"style" : "",
					"text" : "as 14bit"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.550004, 0.691972, 0.738073, 1.0 ],
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 139.0, 251.0, 189.0, 20.0 ],
					"style" : "",
					"text" : "< to/from sequencer (as pbend)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 22.0, 332.0, 249.0, 22.0 ],
					"style" : "",
					"text" : "midiformat 6"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.550004, 0.691972, 0.738073, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 236.0, 57.0, 20.0 ],
					"style" : "",
					"text" : "\"Max1\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.253026, 0.192594, 0.325723, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 363.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "< to hardware",
					"textcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.253026, 0.192594, 0.325723, 1.0 ],
					"color" : [ 0.085715, 0.322121, 0.114154, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 363.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "midiout",
					"textcolor" : [ 0.701961, 0.415686, 0.886275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 293.0, 85.0, 22.0 ],
					"style" : "",
					"text" : "s_fromBend 1",
					"varname" : "s_toBend"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.550004, 0.691972, 0.738073, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 75.0, 266.0, 57.0, 20.0 ],
					"style" : "",
					"text" : "\"Max1\""
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.112868, 0.320914, 0.149506, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 68.0, 119.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "< from hardware",
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.550004, 0.691972, 0.738073, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 22.0, 266.0, 42.0, 22.0 ],
					"style" : "",
					"text" : "midiin",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 179.0, 192.0, 71.0, 22.0 ],
					"style" : "",
					"text" : "s_toBend 3",
					"varname" : "s_router2[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 103.0, 192.0, 71.0, 22.0 ],
					"style" : "",
					"text" : "s_toBend 2",
					"varname" : "s_router2[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 22.0, 192.0, 71.0, 22.0 ],
					"style" : "",
					"text" : "s_toBend 1",
					"varname" : "s_router2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.550004, 0.691972, 0.738073, 1.0 ],
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 22.0, 236.0, 49.0, 22.0 ],
					"style" : "",
					"text" : "midiout",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "s_plist.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 357.0, 203.0, 171.0, 190.0 ],
					"varname" : "s_plist",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 22.0, 148.0, 92.5, 22.0 ],
					"style" : "",
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.112868, 0.320914, 0.149506, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 22.0, 119.0, 42.0, 22.0 ],
					"style" : "",
					"text" : "midiin",
					"textcolor" : [ 0.439216, 0.74902, 0.254902, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 2,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "s_plist.maxpat",
				"bootpath" : "~/Desktop/zpo/m7-nrpnParser/v3a",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "s_prow.maxpat",
				"bootpath" : "~/Desktop/zpo/m7-nrpnParser/v3a",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "s_toBend.maxpat",
				"bootpath" : "~/Desktop/zpo/m7-nrpnParser/v3a",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "s_fromBend.maxpat",
				"bootpath" : "~/Desktop/zpo/m7-nrpnParser/v3a",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"textcolor" : [ 0.862745, 0.870588, 0.878431, 1.0 ]
	}

}
