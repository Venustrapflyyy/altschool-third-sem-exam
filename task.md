# First task 
- I would be automating the deployment of a "Next.js and MongoDB web application, designed with simplicity for learning and real-world applicability in mind",on an AWS EC2 instance, for my first exam task. 
- Before the automation, I would first manually deploy the application to make sure that it runs correctly. 

## Steps 
-To manually deploy my application, I SSH'ed into my instance and updated my apt reporsitory `sudo apt update`. 
- I created a directory 'sample-app' `mkdir sample-app`. 
- I then cloned the app repository into my directory `git clone https://github.com/hoangvvo/nextjs-mongodb-app.git sample-app`. 
-  I started installing the dependencies the app needs to run; 
- next.js `sudo apt install npm`, `npm install next`, `import next from 'next';`. 
- react `npm init -y`, `npm install react react-dom`. 
- 
