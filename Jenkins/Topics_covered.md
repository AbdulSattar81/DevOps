Jobs. 
Build. 
build_numbers (#1, #2, ...). 
Pipelines. 
Stage. 
Compilation. 
Code_quality_check/scan. 
vulnerability_scan. 
  
Unit_test(testing of the pipeline from start till the end before pushing to production). 
  
workspaces(each pipeline is assigned a working directory at this location for example for CICD_2026. 
ex: /Users/abdulsattar/.jenkins/workspace/CICD_2026). 

Controller(master) & Agent(slave). 
- Set the executor of controller to 0, because the build job can view all the file(even if there are any secrets while running, so its a security risk.). 

- Each Agent has multiple executors, and each executor can run the entire pipeline.


