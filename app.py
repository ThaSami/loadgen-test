from flask import Flask
import random
import sys
from prometheus_flask_exporter.multiprocess import GunicornPrometheusMetrics

app = Flask(__name__)
metrics = GunicornPrometheusMetrics(app)

@app.route('/')
def hello_world():
    answer=0
    loop = random.randint(28000,30000)
    for i in range(0,loop):
        answer+= (random.random() * random.random()) / (random.random()+1)
    return str(answer)

if __name__ == '__main__':
    if len(sys.argv) > 1:
        port = sys.argv[1]
    else:
        port = 5000
    app.run(host='0.0.0.0', port=port, debug=False,threaded=True)