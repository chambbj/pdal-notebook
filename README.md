# pdal-notebook

We have created a Docker image preloaded with PDAL, Jupyter, and a number of commonly used Python packages.

Start by pulling the image. Next, run it, forwarding port 8888, and mounting the notebooks directory.

```
docker pull chambbj/pdal-notebook
docker run -it --init --rm -p 8888:8888 -v $(pwd)/notebooks:/notebooks chambbj/pdal-notebook
```

Open Jupyter in your browswer at http://localhost:8888 with the provided token.
