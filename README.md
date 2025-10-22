MongoDB MCP Server on Render
This repository is a minimal setup for deploying a MongoDB MCP (Model Context Protocol) server on Render using the official npm package.
No application code is required—Render will run the MCP server using the npx command and connect to your MongoDB Atlas cluster.

Deployment Steps
Create a MongoDB Atlas Cluster

Go to MongoDB Atlas.

Create a free-tier cluster.

Get your connection string (format: mongodb+srv://username:password@cluster0.mongodb.net/myDatabase).

Create a New Web Service on Render

Go to Render and create a new Web Service.

Connect this GitHub repository (even if it only contains this README).

Set the Start Command to:

text
npx -y mongodb-mcp-server@latest --transport http --httpHost=0.0.0.0 --httpPort=10000
Add an environment variable:

text
MDB_MCP_CONNECTION_STRING=mongodb+srv://username:password@cluster0.mongodb.net/myDatabase
Click Deploy.

Access Your MCP Server

Once deployed, your MCP server will be available at:

text
https://<your-service-name>.onrender.com
Test with:

text
curl https://<your-service-name>.onrender.com/health
Environment Variables
MDB_MCP_CONNECTION_STRING
Your MongoDB Atlas connection string (replace with your actual credentials).

Notes
This repository does not contain any application code; all logic is handled by the official mongodb-mcp-server npm package.

For advanced configuration, see the MongoDB MCP Server documentation.

Security
Never commit your actual credentials to the repository.

Use Render’s environment variable settings to keep secrets safe.

This setup is ideal for quickly exposing a MongoDB MCP server with a public HTTP endpoint for use with AI tools and agents.
