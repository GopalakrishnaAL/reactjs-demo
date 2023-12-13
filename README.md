1. Clone and Deploy Application:
Clone the ReactJS application from the specified GitHub repository using the command git clone https://github.com/rvsp/reactjs-demo.git.
Navigate to the project directory using cd reactjs-demo.
Install dependencies with npm install.
Run the application locally using npm start.

2. Dockerization:
Create a Dockerfile in the project root with instructions for building the Docker image.
Create a docker-compose.yml file to define services, ports, and dependencies for containerization.

3. Bash Scripting:
Create a build.sh script to automate the Docker image building process.
Create a deploy.sh script to facilitate the deployment of the Docker image to the respective repositories.

4. Version Control:
Create .gitignore and .dockerignore files to exclude unnecessary files and directories from version control and Docker image build.

5. Docker Hub:
Create two repositories on Docker Hub: "dev" (public) and "prod" (private).
Ensure proper tagging and versioning of Docker images before pushing.

6. Jenkins:
Install Jenkins on the desired server.
Configure Jenkins, set up users, and define necessary credentials.
Add a Jenkins job to execute the build and deployment scripts.
Integrate Jenkins with the GitHub repository and configure automatic build triggers.

7. AWS:
Launch 12 EC2 micro instances on the AWS console.
Configure Security Groups to allow access only from specified IP addresses.
Ensure proper key pair management for secure access to instances.

8. Monitoring:
Set up a monitoring system, such as Prometheus, to track the health status of the application.
Configure alerting rules within Prometheus to notify stakeholders when the application experiences issues.

9. Submission:
Include the GitHub repository URL, deployed site URL, and Docker image names in the submission.
Upload screenshots of key components:
Jenkins (login page, configuration settings, execute step commands).
AWS EC2 console showing launched instances and configured Security Groups.
Docker Hub repositories with image tags.
The deployed site to showcase successful application deployment.
Monitoring system status, especially highlighting alerts and health checks.






                   ------------------------------------------------------------------------------------------------------------------

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.<br />
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.<br />
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br />
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: https://facebook.github.io/create-react-app/docs/code-splitting

### Analyzing the Bundle Size

This section has moved here: https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size

### Making a Progressive Web App

This section has moved here: https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app

### Advanced Configuration

This section has moved here: https://facebook.github.io/create-react-app/docs/advanced-configuration

### Deployment

This section has moved here: https://facebook.github.io/create-react-app/docs/deployment

### `npm run build` fails to minify

This section has moved here: https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify
