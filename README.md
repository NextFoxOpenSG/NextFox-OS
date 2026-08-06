# NextFoxOS

**NextFoxOS** is an immutable operating system focused on performance and gaming experience, developed by **NextFox Open SG**. This project is designed to offer a robust and personalized platform based on bootc technologies, optimized for modern desktops and Linux gaming enthusiasts.

---

## 🎮 Quick Commands (Justfile)

This repository includes an automated command manager using `just`. Some of the most useful commands for local administration and compilation are:

* **Build local image:** `just build`
* **Build virtual machines / ISOs:** `just build-qcow2`, `just build-raw`, `just build-iso`
* **Run virtual environment (QEMU):** `just run-vm`
* **Update system and gaming tools:** `just update-gaming`
* **Verify script syntax:** `just check`

---

## 🚀 How to Switch to Your Image

Once your image is compiled or published in the container registry (GHCR), you can migrate your current system by running:

```bash
sudo bootc switch ghcr.io/<your-username>/<image-name>

📝 Credits and Acknowledgments
This project is built upon the foundation of the excellent work by the Universal Blue community.

Original template: image-template by the Universal Blue project.

Special thanks to all maintainers and contributors of bootc, Podman, and the Linux immutable container ecosystem that make these types of projects possible.
