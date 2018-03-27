#!/bin/bash
rosbag record /callout \
       /goal_complete \
       /mux/selected \
       /policy/current_goal \
       /policy/current_steer \
       /state \
       /state_cmd \
       /steer \
       /ui/joy \
       /ui/steer 
