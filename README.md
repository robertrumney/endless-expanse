# Endless Expanse

A Unity shader for creating an infinite white space with a seamless horizon.

## Overview

Endless Expanse is a custom Unity shader that simulates an infinite white room, often referred to as "infinity space." This effect creates a seamless transition between the ground and the sky, ideal for showcasing objects without the distraction of complex backgrounds or for creating minimalistic environments.

## Features

- Seamless ground-to-sky gradient
- Customizable horizon blending
- Easy to integrate into any Unity project

## Getting Started

To use the shader in your Unity project:

1. Download or clone this repository.
2. Import the shader into your Unity project's Assets folder.
3. Create a new Material and select the `Custom/EndlessExpanse` shader.
4. Adjust the Material properties to suit your scene.
5. Apply the Material to your skybox in lighting settings.

## Customization

The shader properties can be customized directly in the Unity Inspector:

- `_Color` - The primary color of the space, typically set to white.
- `_HorizonColor` - The color of the horizon, can be a slight gradient for depth.
- `_HorizonBlendRange` - Controls the sharpness of the horizon blend.
- `_HorizonHeight` - Adjusts the vertical position of the horizon line.

## Contribution

Contributions are welcome! If you'd like to improve EndlessExpanse, feel free to fork this repository and submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details.
