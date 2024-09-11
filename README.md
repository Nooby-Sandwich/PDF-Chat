# ChatPDF

A web application for interacting with PDF documents using a chatbot interface. Users can upload PDF files, which are ingested and indexed to enable question-answering using a language model.

## Features

- Upload PDF documents and ingest them for querying.
- Ask questions related to the content of the PDF.
- Receive concise answers based on the context retrieved from the document.

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/chatpdf-app.git
    cd chatpdf-app
    ```

2. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

## Usage

1. Run the application:

    ```bash
    streamlit run app.py
    ```

2. Open your web browser and navigate to `http://localhost:8501`.

## Requirements

- Python 3.10+
- `streamlit`
- `streamlit-chat`
- `langchain-community`
- `pillow==10.3.0`
- `fastembed`

## Docker

To build and run the Docker image:

1. Build the Docker image:

    ```bash
    docker build -t chatpdf-app .
    ```

2. Run the Docker container:

    ```bash
    docker run -p 8501:8501 chatpdf-app
    ```

3. Open your web browser and navigate to `http://localhost:8501`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, please contact 
[Email](mailto:avin5mantri@gmail.com).
