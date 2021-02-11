Docker is a software that allow users to run lightweight virtual machines. You can build Docker "containers" with a Dockerfile. A container is a single lightweight virtual machine running an os, with its own memory space and storage. It is created on an image, which is a template with preconfigured software. A container differs from a virtual machine because it uses the same kernel as the host computer, whereas a virtual machine has its own kernel. Containers are faster and lighter.

If you're running big apps that needs lot of containers/services, such as a database, web servers, monitoring tools, ftp, ssh..., you'll need a way to properly manage multiple Docker containers. It's not an easy task; you need to restart automatically crashed containers, to share data between them, to make sure some are fetchable from outside and some not... That's what Kubernetes does.

In Kubernetes, you have:

Deployment: an object that runs and manages N instances of a given Docker image. For example, you can have a deployment that will launch and manage 10 Apache servers.
Service: an object that links a deployment externally or to other containers. For exemple, a deployment that will link the IP 192.168.0.1 to the 10 Apache servers and pick the one that has the least work load.
Pod: A pod is a running instance of a deployment, you can run a shell into it. It has its own IP and its own memory space.
All the above objects are described in YAML files.

Minikube is the software that we use to create a virtual machine that runs Kubernetes, and insures compatibility with VirtualBox. It features many tools, such as a dashboard to see how are you'r pods going.

Run ./setup.sh
