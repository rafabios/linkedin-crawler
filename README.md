Run
=====================================

1. Install
```console
python -m pip install poetry
poetry install
```

2. Running GUI crawler
```
poetry run HEADLESS=0 EMAIL=[linkedin-email-account] PASSWORD=[linkedin-password] python crawler/crawler.py --profile=[linkedin-profile-slug]
```

3. Running headless crawler
```
poetry run HEADLESS=1 EMAIL=[linkedin-email-account] PASSWORD=[linkedin-password] python crawler/crawler.py --profile=[linkedin-profile-slug]
```

4. Withing Docker - Build
```
docker build -t linkedin-crawler:latest .
``` 

5. Withing Docker - Run it
```
docker run -it \
	-e EMAIL='x@x.com'\
	-e PASSWORD='XXXXX'\
	-e HEADLESS='1' \
	-e PROFILE='XXXXX'\
	linkedin-crawler:latest 
``` 

###### Headless should be 1 since to work without GUI.
