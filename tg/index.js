const { TelegramClient } = require('telegram');
          const { StringSession } = require('telegram/sessions');
          const input = require('input'); // npm i input
          const fs = require('fs');
          const path = require('path');
         
          
          const apiId = 15928;
          const apiHash = '134206d8d33aa6c8eaf9a';
          const stringSession = new StringSession('1AgAOMTQ5cuNDEBu3sFSmSjRk72B7TWkhgPq9ehASDLzIHxUybo8ndcFfHBUfIFTjC+srOFyzdWJDxwcaxADR5XUp624gAJYJq3YoGvTnazG0fy2lthxe+y2QjXY+/c+m01KRC9ehXgY3UXGl50hrOmd0/vj0PkyBFmlo7ejp12gbsEzK+YtJCT8PaJxybjksF9rRAruP+CecAs2EPi+XPE46kXkAfoMEcFaZPLCxZn+qUDgI88X7G75ARtLnE5ZhooohqbNApZc2yaOMl+8z3w8yRD77q860h+FR6R70s9RzOvVB42veUWQssc9Qg8Qm/6bIbk6nSAzXG9CwLv0TmmtFseiI2WQk='); // fill this later with the value from session.save()
          
          (async () => {
            console.log('Loading interactive example...');
            const client = new TelegramClient(stringSession, apiId, apiHash, {
              connectionRetries: 5,
            });
            
            await client.start();
            await client.connect(); // This assumes you have already authenticated with .start()
            const filePath = '/workspace/gstreamer-qt-docker/gstreamer-1.0-android-universal-1.22.5.tar.xz'
            
            if (fs.existsSync(filePath)) {
                await client.sendMessage('me', { message: 'Hello! Файл существует' });
                console.log('Файл существует');
            } else {
                await client.sendMessage('me', { message: 'Hello! Файл не существует' });
                console.log('Файл не существует');
            }

            // await client.sendFile('me', {file:'${{ github.workspace }}' + '/app-debug.apk'}).then(file => {
            //   console.log('Uploaded file:', file);
            // }).catch(error => {
            //   console.error('Error uploading file:', error);
            // });
            await client.sendFile('me', {file:'/workspace/gstreamer-qt-docker' + '/gstreamer-1.0-android-universal-1.22.5.tar.xz'}).then(file => {
              console.log('Uploaded file:', file);
            }).catch(error => {
              console.error('Error uploading file:', error);
            });

          })();
