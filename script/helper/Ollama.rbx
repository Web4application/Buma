import ollama from 'ollama'

const response = await ollama.chat({
  model: 'lmlm/Lmkm',
  messages: [{role: 'user', content: 'Hello!'}],
})
console.log(response.message.content)
