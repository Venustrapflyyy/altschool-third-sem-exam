resource "kubernetes_ingress_v1" "voting-ingress" {
  metadata {
    name      = "azure-vote-back"
    labels = {
      name = "azure-vote-back"
    }
    annotations = {
      "kubernetes.io/ingress.class" : "nginx"
    }
  }

  spec {
    rule {
              host = "voting.zainabakinlawon.me"
      http {
        path {
          backend {
            service{
              name = "azure-vote-back"
              port {
                number = 80
              }
            }
          }
        }
      }
          }
  }
}

resource "kubernetes_ingress_v1" "micro-ingress" {
  metadata {
    name      = "azure-vote-back"
        namespace = "sock-shop"
    labels = {
      name = "front-end"
    }
    annotations = {
      "kubernetes.io/ingress.class" : "nginx"
    }
  }

  spec {
    rule {
      host = "sock-shop.zainabakinlawon.me"
      http {
            namespace = "sock-shop"
    labels = {
      name = "front-end"
    }
    annotations = {
      "kubernetes.io/ingress.class" : "nginx"
    }
  }
 }
}

  spec {
    rule {
      host = "sock-shop.zainabakinlawon.me"
      http {
              path {
          backend {
            service{
              name = "front-end"
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  } 
}
