# F1 tenth ros2-humble  simulator
-> clone the repository , (particle_filter branch)
-> Prerequiste : follow this step to install docker and nvidia-docker toolkit [docker&nvidia-docker](https://github.com/f1tenth/f1tenth_gym_ros?tab=readme-ov-file#with-an-nvidia-gpu)
-> from root of directory:
    -> image build command : ./scripts/build/f1tenth.sh
    -> run the container : ./scripts/build/devel.sh
    -> if need to open multiple terminal in already running container do : docker exec -it <name_of_container>