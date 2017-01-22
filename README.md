# docker
Docker development environment

Docker must be installed, please visit 	[Docker installation site](https://docs.docker.com/engine/installation/) to get started


Steps to create environment on Mac and Linux:

1. Give executable permission to develop script

    ```bash
       chmod +x develop.sh
    ```
2. Spin up docker environment

    ```bash
       ./develop.sh up -d --build
    ``` 
3. Run composer inside of php container
    ```bash
        docker exec -it php composer install
    ```

5. Open ```http://localhost``` in browser and check
