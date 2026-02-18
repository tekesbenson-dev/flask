from flask import Flask, jsonify, request

app = Flask(__name__)

# First route: http://127.0.0.1
@app.route("/api/home")
def home():
    return jsonify(message="home Route accessed")

# Second route: http://127.0.0.1
@app.route('/api/products')
def products():
    return jsonify({"message": "Welcome to PRODUCTS API!"})

# Calculator route
@app.route("/api/calc", methods=["GET", "POST"])
def calculator():
    if request.method == "POST":
        number1 = request.form["number1"]
        number2 = request.form["number2"]
        sum_result = int(number1) + int(number2)
        return jsonify({"The answer is": sum_result})
    return jsonify(message="Calculator is ready. Use Postman for math.")
    
@app.route("/api/interest")
def simple_interest():
    p = 20000
    r = 7
    t = 8
    # Calculation: (Principal * Rate * Time) / 100
    interest = (p * r * t) / 100
    return jsonify({
        "The Simple Interest is": interest
    })

# This must always be at the very bottom of your file
if __name__ == "__main__":
    app.run(debug=True)

