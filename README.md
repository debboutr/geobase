In this repository, you would get to understand how to set Geodjango in your Django project the easier way.

This repository is featured in a video tutorial available on my YouTube channel, 'Joshyvibe'

____________Check it out and subscribe____________

[Visit my YouTube Channel to watch video](https://youtu.be/0KvkY8MbnhU)



![Geodjango Youtube Thumbnail](https://github.com/user-attachments/assets/552a8cdd-20e4-418c-962a-a7f7efeeb2fa)
# ... tar it ...
docker run --rm --volumes-from postgres -v $(pwd):/backup ubuntu tar cvf /backup/backup.tar /var/lib/postgresql/data
# ... untar it ...
docker run --rm --volumes-from postgres  -v $(pwd):/backup ubuntu bash -c "cd /var/lib/postgresql/data && tar xvf /backup/backup.tar --strip 1"
