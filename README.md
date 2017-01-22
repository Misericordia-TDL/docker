# docker
Docker development environment

Steps to create environment:

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