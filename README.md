# Robot Description

This repository allows visualization of the Fra2mo robot through Gazebo and RViz, used during the Robotics Lab course.

The repository is structured to be a module of a larger project, specifically providing simulation and abstraction of the robot itself. 

Each module is designed to have its own specific Dockerfile.

## Getting Started

### 1. Build the Docker image
```bash
cd docker_scripts
./docker_build_image.sh
```

### 2. Run the Docker container
```bash
./docker_run_container.sh
```

### 3. Connect to an existing container (optional)
```bash
./docker_connect.sh
```

### 4. Launch the simulation

**For RViz visualization only:**
```bash
ros2 launch rl_fratomo_description display_fratomo.launch.py
```

**For Gazebo simulation:**
```bash
ros2 launch rl_fratomo_description spawn_fratomo_gazebo.launch.py
```