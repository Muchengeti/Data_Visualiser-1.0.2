FROM node as builder

# set working directory
RUN mkdir /visualizer
WORKDIR /visualizer

# add `/visualizer/node_modules/.bin` to $PATH
ENV PATH /visualizer/node_modules/.bin:$PATH

COPY . /visualizer
RUN npm install
RUN npm run-script build 


FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /visualizer/dist/ /usr/share/nginx/html/
