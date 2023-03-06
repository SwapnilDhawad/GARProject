FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt
RUN mkdir -p $HOME/.kube
RUN cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
RUN chown $(id -u):$(id -g) $HOME/.kube/config
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
