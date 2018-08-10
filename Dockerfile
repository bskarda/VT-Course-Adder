# To run
# docker build . -t vt-course-add
# docker run --rm -it vt-course-add
FROM python:2

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./course_adder.py" ]
