# catalyst
A very basic 'game engine' I made a few years ago to learn OpenGL.
It contains a working camera/movement system and a luxurious bottomless cube, which you spawn inside of.

<img width="563" height="450" alt="image" src="https://github.com/user-attachments/assets/cfbde69b-b966-4832-a0e6-1fe7fabf4da9" />

### Controls
- Mouse: look around
- W: move forward
- A: move left
- S: move backward
- D: move right
- Space: move up
- Shift: move down

### Installation
The included nix flake contains a devshell with all the dependencies.
If you don't want to use it, you can instead install them yourself. They can be found in the `buildInputs` list in the flake.nix file.
Once the dependencies are taken care of, run `cmake .` in the project directory and then `make`.
Finally, to start the application, run the produced executable: `./catalyst`
