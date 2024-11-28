    
#!/bin/bash 

      sudo apt-get update
      sudo apt-get install python3 -y
      sudo apt-get install curl git zip -y
      sudo apt-get install docker.io -y
      sudo systemctl enable --now docker
      sudo systemctl start docker
     
      docker run -d -p 80:80 --name teste inovatech-web