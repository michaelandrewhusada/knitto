clusters=(jakarta bandung surabaya)
for c in "${clusters[@]}"; do
  kubectl --context kind-$c apply -f namespace.yaml
  kubectl --context kind-$c apply -f php-deployment.yaml
  kubectl --context kind-$c apply -f nginx-deployment.yaml
  kubectl --context kind-$c apply -f hpa-nginx.yaml
done
