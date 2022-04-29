# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `yarn install`

### Add below to `node_modules/react-scripts/config/webpack.config.js` in the rules section

```
rules: [
   /*...............*/
   // needed for draco3d loading.
   // see https://github.com/webpack/webpack/issues/7352 for more info
   {
     test: /draco_decoder\.wasm$/,
     type: "javascript/auto", // ← !!
     loader: "file-loader",
     options: {
       publicPath: "dist/"
     }
   },
   /*...............*/
```

### `yarn start`
### `yarn build`
