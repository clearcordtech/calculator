FROM python
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python3", "-m" , "gunicorn", "--bind", "0.0.0.0:5000","wsgi:app",]