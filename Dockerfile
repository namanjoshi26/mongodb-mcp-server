FROM node:20-alpine
RUN npm install -g mongodb-mcp-server
ENV MDB_MCP_CONNECTION_STRING=mongodb+srv://joshinaman1741_db_user:lRJhJ8YXFSrkpSp1@cluster0.vo8njzv.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
EXPOSE 8080
CMD ["mongodb-mcp-server", "--transport", "http", "--httpHost", "0.0.0.0", "--httpPort", "$PORT"]
