# BNG-NordschleifeRaceWeek

## Installation

Drag and drop zip file to your %userfolder%/mods folder. 

Alternate install (to edit the flowgraph) is to drop all files except the zip directly in userfolder, merging contents.

## Mod Info

Customizable persistent progress flowgraph mission for the modded Nurburgring BeamNG map.

You can edit stages to change car model and config to use your own configs and change the target times for each medal. Times are stored in milliseconds. Your custom configs are saved in the userfolder, make sure you use correct config path and model name.

To support additional stages edit the "progress" file to reflect correct amount of stages and add a time value for that stage. Here is an overview of the parameters stored in the progress file:

SCOUNT is the amount of stages. Stages with IDs beyond that value are ignored.

CSID is the current stage. Should not be changed except to force retry a stage.

STAGE1,STAGE2,ETC are time values for each stage. Set to -1 for incomplete stages.
