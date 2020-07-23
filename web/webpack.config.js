const HtmlWebpackPlugin = require("html-webpack-plugin");
const path = require("path");

module.exports = {
  context: path.resolve(__dirname),
  entry: "./src/index.tsx",
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        loader: "babel-loader",
        exclude: /node_modules/,
        options: {
          presets: [
            "@babel/preset-env",
            "@babel/typescript",
            "@babel/preset-react"
          ]
        }
      },
      {
        test: /\.scss$/,
        use: ["style-loader", "css-loader", "sass-loader"]
      }
    ]
  },
  plugins: [new HtmlWebpackPlugin({ template: "public/index.html" })],
  output: {
    filename: "bundle.js",
    path: path.resolve(__dirname, "dist")
  }
};
