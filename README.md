### Steps to update code , build image , push it to repository , run image on server 
1) Clone repo on server –
git clone https://github.com/shivver83/DevOps_Demo_Shivangi.git

2) Update HelloWorld.java
cd DevOps_Demo_Shivangi/src/main/java

3) cd to DevOps_Demo_Shivangi directory( as dockerfile resides at this path)  and run –
docker build -t sgupt26/devopsshivangi:act12 .

4) Run image sgupt26/devopsshivangi: act12  with command –
docker run -d -p 10.0.0.4:8000:8080  sgupt26/devopsshivangi:act12
Here app is running on 8080 port inside container , on host it will be accessible on 8000 port .
Make sure ports are open in azure portal , also add port to firewall/iptables if needed.

5) See if container running on desired port – 8000

6) Validate , changes made in HelloWorld.java  are visible in browser with new image on 8000 port 
http://<server public ip>:8000/devopsarea-1.0/
