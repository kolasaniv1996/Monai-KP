RUN pip install torch torchvision datasets



# Set the working directory 
WORKDIR /app



# Copy the current directory contents into the container at /app 
COPY /distributed_training.py launch.sh /app
COPY /brain-mri-lgg.png /app/data/

# Run the bash file
RUN chmod u+x launch.sh
CMD ["./launch.sh"]
