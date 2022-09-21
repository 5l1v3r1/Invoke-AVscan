# Usage
This a simple AV scanner based on service filtering
To invoke it, host it on a local web server and iex it
iex(new-object net.webclient).DownloadString('http://ip:port/Invoke-AVscan.ps1')

After that, to invoke the function just type Invoke-AVscan