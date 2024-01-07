const { TelegramClient } = require('telegram');
          const { StringSession } = require('telegram/sessions');
          const input = require('input'); // npm i input
          const fs = require('fs');
          const path = require('path');
         
          
          const apiId = 159555528;
          const apiHash = '134200000000000eaf9a';
          const stringSession = new StringSession('1Aghthyhtyh'); // fill this later with the value from session.save()
          
          (async () => {
            console.log('Loading interactive example...');
            const client = new TelegramClient(stringSession, apiId, apiHash, {
              connectionRetries: 5,
            });
            
            // await client.start();
            await client.connect(); // This assumes you have already authenticated with .start()
            const filePath = '/cerbero/gstreamer-1.0-android-universal-1.22.5.tar.xz'
            
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
            await client.sendFile('me', {file: filePath}).then(file => {
              console.log('Uploaded file:', file);
            }).catch(error => {
              console.error('Error uploading file:', error);
            });

          })();
