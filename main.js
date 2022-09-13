const {app, BrowserWindow} = require('electron')  
const {spawn,exec} = require('child_process');

// initialize the window variable
let win  

function createWindow() { 
    // spawn the flask app
    const python = spawn('python', ['app_adera.py']);

    // configure the electron window
    win = new BrowserWindow({width: 1000, height: 800,autoHideMenuBar: true}) 
    
    // open the intro route
    win.loadURL("http://127.0.0.1:5000/")
}

function terminateAll() {
    // on quit kill all python instances (this is necessary to stop adera when electron window closes)
    exec("taskkill /F /IM python.exe", (error, stdout, stderr) => { // we need a better way, we are killing everything Python, not just our process...
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
    // quit app
    app.quit()
})}

// when ready, create the app
app.on('ready', createWindow) 

// when all electron windows are closed, stop all processes
app.once('window-all-closed', terminateAll);
