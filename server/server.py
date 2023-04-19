from flask import Flask
import redis
import dotenv
import os

app = Flask(__name__)
dotenv.load_dotenv()
