
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Controller -dir "C:/Users/Olivia/OneDrive/Desktop/sepehr/Controller/Controller/planAhead_run_1" -part xc6slx9ftg256-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Olivia/OneDrive/Desktop/sepehr/Controller/Controller/Controller.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Olivia/OneDrive/Desktop/sepehr/Controller/Controller} }
set_property target_constrs_file "Controller.ucf" [current_fileset -constrset]
add_files [list {Controller.ucf}] -fileset [get_property constrset [current_run]]
link_design
