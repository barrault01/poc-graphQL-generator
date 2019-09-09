#!/usr/bin/env node

const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
})

function execute(command) {
  const exec = require('child_process').exec

  exec(command, (err, stdout, stderr) => {
    process.stdout.write(stdout)
  })
}

readline.question(`Inform your GraphQL endpoint (default is http://localhost:8080/graphql): `, (endpoint) => {

  if (typeof str === 'undefined') {
      str = "http://localhost:8080/graphql"
  }
  console.log(`###### Downloading schema from ${str} ######`);

  execute(`yarn apollo schema:download --endpoint=${str} schema.json`)
  readline.close()
})
