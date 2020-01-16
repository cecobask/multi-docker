docker build -t baskski/complex-client:latest -t baskski/complex-client:$SHA -f ./client/Dockerfile ./client
docker build -t baskski/complex-server:latest -t baskski/complex-server:$SHA -f ./server/Dockerfile ./server
docker build -t baskski/complex-worker:latest -t baskski/complex-worker:$SHA -f ./worker/Dockerfile ./worker

docker push baskski/complex-client:latest
docker push baskski/complex-server:latest
docker push baskski/complex-worker:latest
docker push baskski/complex-client:$SHA
docker push baskski/complex-server:$SHA
docker push baskski/complex-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=baskski/complex-server:$SHA
kubectl set image deployments/client-deployment client=baskski/complex-client:$SHA
kubectl set image deployments/worker-deployment worker=baskski/complex-worker:$SHA