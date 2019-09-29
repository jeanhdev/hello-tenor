import places from 'places.js';

const addressInput = document.getElementById('address');

if (addressInput) {
  const options = {
    appId: 'plZFQQOS0IY1',
    apiKey: 'b2c56133e9dec26b58daccf1ef4667c0',
    container: '#address',
  };

  places(options);
}
