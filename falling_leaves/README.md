In order to make the leaves I started with a simple particle system, allowing the particles to flow off the screen. By adding a random starting point for the particles, and perlin noise and gravity, a more natural and flowing system was created. 

To design the leaves, I assigned them random green colors, and shaped them out of a rectangle for the stem and elipse for the body. 

By creating a function that changed the PVectors to zero when the leaves reached the bottom of the screen, it was possible to make them stay still when they reached the floor. 