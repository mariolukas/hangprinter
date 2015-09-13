include <measured_numbers.scad>
include <design_numbers.scad>
use <parts.scad>
use <placed_parts.scad>
use <render_parts.scad>

// TODO:
//  - Place hot end reliably
// Style:
//  - Spaces separate arguments and long words only
//  - Global parameters starts with capital letter, others don't
//  - Modules that are meant as anti-materia starts with capital letter

// Rendering control
render_bottom_plate = true;
render_sandwich     = false;
render_abc_motors   = true;
render_fish_rings   = false;
render_lines        = false;
render_extruder     = true;
render_hotend       = false;
render_ramps        = true;
render_plates       = false;
render_filament     = false;

module full_render(){
  if(render_bottom_plate){
    bottom_plate();
  }
  if(render_sandwich){
    placed_sandwich();
  }
  if(render_abc_motors){
    placed_abc_motors();
  }
  if(render_fish_rings){
    placed_fish_rings();
  }
  if(render_lines){
    color("green")
    placed_lines();
  }
  if(render_extruder){
    placed_extruder();
  }
  if(render_hotend){
    placed_hotend();
  }
  if(render_ramps){
    placed_ramps();
  }
  if(render_plates){
    placed_plates();
  }
  if(render_filament){
    filament();
  }
}
full_render();
