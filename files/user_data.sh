#!/usr/bin/env bash

yum update
yum install docker -y
usermod -aG docker ec2-user
systemctl enable docker
systemctl start docker

yum install git -y

# cat << HEREDOC > /root/.ssh/id_rsa
# -----BEGIN OPENSSH PRIVATE KEY-----
# b3BlbnNzaC1rZXktdjEAAAAACmFlczI1Ni1jdHIAAAAGYmNyeXB0AAAAGAAAABCjgLjS/P
# Si5yYBHMZYktKQAAAAEAAAAAEAAAIXAAAAB3NzaC1yc2EAAAADAQABAAACAQDOGtXzCYM/
# +4mA7BbLSj3zAYmFdqUALAsUPdtJsbBpV64zOx4cT2z304MVPDyUbDz6Y8YiaY2JiXsy2c
# ojwNgwQTQYNx5Xri2e3kaLeaY7FLUPsQUdPdLSeP6MDPgEDGhqU6+NviSl1Lf6UKbuCivI
# TKMP95y4mtXHOdziGgTnlpWQBMhsVpf0vnQS3vBi/QGJqR6+4bI2zBCvkLWM6EAw9smBD2
# Y+mpOvPI1QtEFW6kGCDLAlAWTW0aXxyzGOIz/hueffaAMtUWMHS6YgYJhawsSbmHja6tBA
# dbw4omZpjSoUvaYfqWU3loOWntidUruBGINWjepiLaFVgMs/yyMVRQXNE4vLKu/WNA04WH
# tzYwklspRrj8CeK1RK+WGHIGRyN19HmJqM9GeG1OFlyQ5iATDhHDj0ImkMLgBSi1NhZLUe
# KxPnoHaLt+lxge7eP0vUM0IVLOnGJz7o7dfk0S6LCL35Ol2Jd7VptGiBzkrjyjaGPBtIE7
# bAuq7+kZ2O7rvPznR3Kn8G4Rext8egQH/MJzww9/08Lh1joh2h1JmAwwufsi89Zp1RvBtx
# 12TsV8ZiSvvRs3OgbbCjags09DbGb56UQsCo9ABzKv21viOV6sl982XFE/7V7KIPsxGSc5
# hQaSSVrGG0qQC1c/jGQ+i2m/RRdOS2wN6y0zRjj2Ib2wAAB1CXtEQLOX2Eb+tYJAolhnxe
# Xz4yzgvOTaR094su8eNt+shmiffBPmVozzwFN7DdJODezamNFt12okWtuO46eXA6PAQ7Fd
# FURkYAt9K9hOa52CSzJnoI0Jzo14I4tmOt3guJvgA9VnVBfHziG4E8LgqzznZ3B/Df+YR2
# Xh26UoGLeG6idYi0ZupUlDdwG/bRAf/hJKunrIyvKQWXFVA5g+Agqpr+bk7C6WXG33d/6O
# I1B999hl9rnCWNSJT9gVizzmTwbFEth8VuMsUp7Dd7Xu6JN9niDmXhVHGDt9GoHv+qwER2
# 78EEb6Rw0yhGWgVxk4q1Yawdn/jYb2wgQMlPOB8O99KByrlT2DjHX7Q3yeZFQXZHqWvd+o
# 5Pb0wIwI51mpmEOpqsRIhFxq/EDX0ZlwnffRqZfy7xEZvTvaDRj7dOLpVXpZ/OygUIleW8
# FI9QTy1WeLMq+NJKZv0l0k/AhmzpwbYcpuKYeI9AswYBehSM6TaQjdVeag0L1ke5Wvcsk6
# KKqKO19b345evLgWh2myZnp8YEmcH1qpK23RA+HK2ss5alMAzpqKfiaRT+YYKCSUSfKIM/
# e/9TMPZ8iX2bIkaG0wNrZOHml8ddvfdD8AunspwWSLG+hAtTOgWvs2wV3NIAst/pFCBZTe
# ES9vRAe4wkuCnK2/iipz7E7fW0Ilmf+0vwI+I3cOhB2j3EpiKzjWxaWM3mpIFTgdXwmrvp
# thjLsHTkDWec9LoA8pAMh0TFc2oJb18atjaWf/o1GWt5lYNAvAbtsbcVK7rwIOTCbMdpRq
# AgtCOECtn9mc/2bkZAjtrU1XPPq+blk+0RpB0cEg802xT5FJagGcgy1Psl9wLeUulJocIZ
# NAFYpDiZHQnCVLzB/mnRwoOG8QJ1jW7XUXsVdgfNJG4IFN3RG6dtt8WeBkJIpc/QWrDWE8
# MMkLGaNbM3G07VgQKX91yHJL6tb82hxC+HTkYX/gZNKFev+IAQEWK0RbQCp2+eJD7McPGa
# 2u4LWYLDhQ/TNdj/cdmtdLrsCUrutmCDHyjvT8eYJTbs7CjSbLJV/nUCXFeHwy07kGgLdy
# YnY95+C0di2Fhz9kQB8sBSSfp2va1pOlM5QFNqfWzoBJz76bVKFRLKH/E3zZtgAFBJ6NxH
# /EraBj+PZsKhs6DMPhumztg3bQwXF0dsGuePivxKaOSperiHYM4Nl9xwCP+cBGgU4QhbYG
# Frv+nhO74Xg5WxDdZ3jhxLCi6HWQ7GEZ0K/o4+2PjEcTIhfG0d94wy54hBmKxGgKSCFTos
# Z2CCSIYePVIrWGxFYY9WjND5WErkoYgwo52lwzJWPtsAxsLTZaAsBRY/uz4FGRmKJKyYIK
# ws4JVo80KLEUNmr1FydHnmqBQbCl+H/cvkhP/8yBuVrm7Qhje3Dcht+I/2svmNR2QM2eog
# HQ0ZGs8evl1W2NoE2lNCi7tPrD4jEUEGCeXo+FwT+IXyOXWjKJZ+J2ECqCVM6bd571r7PX
# x5Uce6Ox445bisspz+olel5KCMh/+EUf5iuQyeY/mJGtwdc36PLoirEkGvviUjas14TjeB
# ac3/60hfUlKULmWtyKcgawgyz3bnkrG2sm+qMLkR1g6Qnmdjrvwe/+SNw/8uVleFcbAtSg
# 3ShUxOT7dDQ2QHJbfpQBu7E05q6n/kowY5C8eGfzfYSkHXVIXzvUcW3ItuYYKvHKeVHGQ6
# 4Ssrv+af3sFoU37PLG/ZxcnGeaHJSsU06Shx1EX4zwobmqmaIchhnJn3BWZDSyOD9XesSs
# gZEVVB71JdJQRU4mP0L6puftQRhq8MUwAbLKy3fkuJr7cf2QCJhdZBSvYFkkaLrlDzY4+L
# OTB4xP28mtvdpLC9FAfouW0cZoqYXWWqF/zUOulU5GTnsxNZ3xCKSsx0un55GOMPtX04Te
# yDIx7i/ELarLZxCAEtMVi6rwL6kUkbt2v4yz314HVqTv72b2s5hp3DDbSalIV+hfJB2dyF
# 59h/8NPHk67Qn6izcHMY3NWc2jWVwHoIuNkg1Db7xuV2nBtdJlV3vJlngar/5YieISlZWw
# DHOcfF7tMHIUyR9itJsmM2IV5+nmWw6JBzEKvtdH2nQ3GXnyICi2A/04P2MaHW+SNX+h8+
# uJYcLl8y3bADTbmZZaD70vD3d0ypUCtNwsIQVtD5VTekZA369QtlyNjRNTtMvYvWlervj/
# lw8Sx9wakI+WZRCnpDE4Vvz3hs0WQDi3GZsRHcA6ob2nCcCFCMFGmMIwVp8e3xxRlZqZzn
# oQ5Z88LGBMCyaAQeC1v8uWnsBKUolp+kS2SqAzOsRzOLoa5RgZZgwdC8XWI6k6TS+pGXTM
# UmmfC42okBEtovUSSLJ6z0CxmD08drv9I8n1Zbt0iO1cSPwj1qJ7a/gHusLN3wrcjkamc8
# fOlYX5Vvu7qWocroHUrgbW99aqQPtfEVvS6GQ3V9i3arSGOocIwbokM+xrfDB9f2RYj9CI
# I2eH0b+m0yPB5HCrC5azi/1RI=
# -----END OPENSSH PRIVATE KEY-----
# HEREDOC

# chmod 0400 /root/.ssh/id_rsa

mkdir -p /src/my-app

cd /src/my-app

# ssh-keyscan github.com >> /root/.ssh/known_hosts
git clone git@github.com:Aflatun6/terraform-demo.git

cd terraform-demo

docker build -t app:latest --build-arg HOSTNAME=$(hostname) .
docker run -di --name my-app -p 80:80 app:latest