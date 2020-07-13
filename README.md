# go-async-task

**go-async-task** is a worker which processes tasks(jobs) asynchronously.

<p align="left">       
   <a href="https://hits.seeyoufarm.com"/><img src="https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fgjbae1212%2Fgo-async-task"/></a>   
   <a href="/LICENSE"><img src="https://img.shields.io/badge/license-MIT-GREEN.svg" alt="license"/></a>
</p>

## Installation
```bash
$ go get -u github.com/gjbae1212/go-async-task
```

## Usage
```go
# create worker 
worker, _ := async_task.NewAsyncTask()

# process task asynchronously
_ = worker.AddTask(ctx, task)
```

## LICENSE
This project is following The MIT.
