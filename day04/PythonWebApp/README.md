# Flask BMI Calculator

This is a simple web application built with Flask that calculates Body Mass Index (BMI).

## Installation for App using bash

1. Clone the repository:

    ```bash
    git clone https://github.com/udaychopade27/Bash-Scripting/day04/PythonWebApp.git
    ```

2. Navigate to the project directory:

    ```bash
    cd /PythonWebApp
    ```

3. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

## Usage

1. Run the Flask application:

    ```bash
    python app.py
    ```

2. Open your web browser and go to [http://127.0.0.1:5000].

3. Enter your weight and height to calculate your BMI.

4. View the BMI calculation result.

## Installation for App using bash Script
1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/udaychopade27/Bash-Scripting/day04/PythonWebApp.git
    ```

2. Navigate to the directory containing the script:

    ```bash
    cd Bash-Scripting/day04/PythonWebApp
    ```

3. Make the script executable:

    ```bash
    chmod +x Deployappusingdocker.sh 
    ```

4. Execute the script:

    ```bash
    ./Deployappusingdocker.sh 
    ```

5. Follow the on-screen prompts to build the Docker image, run the Docker container,


## Script Details

- The script first checks if Docker installed on the system. If not, it prompts the user to install them before proceeding.
- It then builds a Docker image for the BMI project using the provided Dockerfile.
- After successfully building the Docker image, it runs a Docker container based on that image.
- Finally, it deploy the app on port 5000

## Error Handling

- The script includes error handling to ensure that each step is successful before proceeding to the next one.
- If any step fails, the script displays an error message and exits, preventing subsequent commands from executing.


## Files

- `app.py`: Contains the Flask application code.
- `templates/`: Folder containing HTML templates.
- `static/`: Folder containing CSS stylesheets.

## Dependencies

- Flask==2.0.1
- pysqlite3==0.4.6


## Contributing

Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or create a pull request.

