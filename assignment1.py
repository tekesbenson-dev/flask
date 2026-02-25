from flask import Flask, jsonify, request
import pymysql
import os

app = Flask(__name__)

# Folder to save uploaded images
app.config["UPLOAD_FOLDER"] = "uploads"

# Create folder if it does not exist
if not os.path.exists("uploads"):
    os.makedirs("uploads")


# Route for adding fresh produce
@app.route("/api/add_freshproduce", methods=["POST"])
def add_freshproduce():

    # Get form data
    name = request.form["name"]
    category = request.form["category"]
    weight = request.form["weight"]
    unit = request.form["unit"]
    expiry = request.form["expiry"]
    price = request.form["price"]
    stock = request.form["stock"]

    # Get photo
    photo = request.files["photo"]
    filename = photo.filename

    # Save photo
    photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)
    photo.save(photo_path)

    # Connect to MySQL
    connection = pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="online"
    )

    cursor = connection.cursor()

    # Insert query
    sql = """
    INSERT INTO freshproduce
    (name, category, weight, unit, expiry, price, stock, photo)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """

    data = (name, category, weight, unit, expiry, price, stock, filename)

    cursor.execute(sql, data)
    connection.commit()

    cursor.close()
    connection.close()

    return jsonify({"message": "Fresh produce added successfully"})

@app.route("/api/add_packagedfood", methods=["POST"])
def add_packagedfood():

    name = request.form["name"]
    brand = request.form["brand"]
    weight = request.form["weight"]
    unit = request.form["unit"]
    expiry = request.form["expiry"]
    price = request.form["price"]
    stock = request.form["stock"]

    photo = request.files["photo"]
    filename = photo.filename

    photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)
    photo.save(photo_path)

    connection = pymysql.connect(
        host="localhost",
        user="root",
        password="",
        database="online"
    )

    cursor = connection.cursor()

    sql = """
    INSERT INTO packagedfood
    (name, brand, weight, unit, expiry, price, stock, photo)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """

    data = (name, brand, weight, unit, expiry, price, stock, filename)

    cursor.execute(sql, data)
    connection.commit()

    cursor.close()
    connection.close()

    return jsonify({"message": "Packaged food added successfully"})


if __name__ == "__main__":
    app.run(debug=True)