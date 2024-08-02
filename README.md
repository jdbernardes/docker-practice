# docker-practice


# Concepts to remember:
1 - the file to make docket to ignore some files of my project is .dockerignore

2 - When creating my app I have added the following entry point: ENTRYPOINT [ "poetry", "run", "streamlit", "run", "docker_practice/app/app.py", "--server.port=8501",
"--server.address=0.0.0.0" ] which will be explained below:

    2.1 - "poetry", "run", "streamlit", "run", "docker_practice/app/app.py": this is basically the command that I will run locally whenever starting my strealit app
    2.2 - "--server.port=8501", "--server.address=0.0.0.0": here I am defining the port in which streamlit will listen and the address (in my case localhost)

3 - To build the image the command is "docker build -t <name-of-my-immage> ." Note> the dot is the path where the Dockerfile is located in mycase was in the same directory I was running

4 - Finally to run this container I need to execute: "docker run -d -p 8501:8501 --name my-first-container first-streamlit-app" see details below:

    4.1 -d: means detached which means that when I run it will not lock my terminal
    4.2 -p 8501:8501: means that I am mapping my container's port 8501 to my pc port 8501 which means that I'll be able to run this app from my browser
    4.3 --name: is the name if my container
    4.4 last but not least the name of the image that I want to use to run my container
