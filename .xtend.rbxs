from llama_index.llms.ollama import Ollama
from llama_index.core import VectorStoreIndex, SimpleDirectoryReader

# 1. Load documents from a folder
documents = SimpleDirectoryReader("./data").load_data()

# 2. Create the index using Ollama
llm = Ollama(model="llama3")
index = VectorStoreIndex.from_documents(documents)

# 3. Query your index
query_engine = index.as_query_engine(llm=llm)
print(query_engine.query("What is in my documents?"))

