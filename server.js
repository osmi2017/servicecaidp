const express = require('express');
const http = require('http');
const socketIo = require('socket.io');
const mysql = require('mysql');
const cors = require('cors'); // Import the 'cors' package

const app = express();
const server = http.createServer(app);
const io = socketIo(server, {
  cors: {
    origin: '*', // Allow requests from any host
    methods: ['GET', 'POST'],
    allowedHeaders: ['my-custom-header'],
    credentials: true,
  },
});

// Apply CORS middleware
app.use(cors()); // Allow requests from any host
app.use(express.json()); // Middleware to parse JSON requests

const db = mysql.createConnection({
  host: '127.0.0.1',
  user: 'c1191545c',
  password: '##@Margelan123*',
  database: 'c1191545c_aai'
});

// Connect to the database
db.connect((err) => {
  if (err) throw err;
  console.log('Connected to the database');
});

// Socket.IO logic
io.on('connection', (socket) => {
  console.log('New client connected');

  socket.on('new_message', (data) => {
    // Save message to database if needed
    const { user_id, contentieu_id, message } = data;
    const timestamp = new Date().toISOString().slice(0, 19).replace('T', ' ');
    console.log(data)
    const sql = 'INSERT INTO messags (user_id, contentieu_id, message, created_at) VALUES (?, ?, ?, ?)';
    db.query(sql, [user_id, contentieu_id, message, timestamp], (error, results) => {
      if (error) {
        console.error('Error saving message:', error);
        return;
      }
      // Emit the new message to all clients
      io.emit('new_message', data);
    });
  });

  socket.on('disconnect', () => {
    console.log('Client disconnected');
  });
});

// Define a route for sending messages
app.post('/send-message', (req, res) => {
  const { message } = req.body; // Assuming the message is sent in the request body
  console.log(message);
  
  // Emit the new message to all clients
  io.emit('new_message', { message });

  // Save the message to the database if needed
  // (Please ensure proper validation, sanitation, and error handling for database operations)

  res.status(200).send('Message sent successfully');
});

// Start the server
const PORT = process.env.PORT || 3000;
server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
