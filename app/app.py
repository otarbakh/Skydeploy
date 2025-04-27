from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def home():
    url = "https://ergast.com/api/f1/current/driverStandings.json"
    response = requests.get(url)
    data = response.json()  


    standings = data['MRData']['StandingsTable']['StandingsLists'][0]['DriverStandings']

    drivers = []
    for driver in standings:
        position = driver['position']
        name = f"{driver['Driver']['givenName']} {driver['Driver']['familyName']}"
        points = driver['points']
        drivers.append({"position": position, "name": name, "points": points})

    return render_template('index.html', drivers=drivers)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)