FROM condaforge/mambaforge:24.9.2-0
WORKDIR /workspaces

RUN mamba install jupyter numpy pandas

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]






