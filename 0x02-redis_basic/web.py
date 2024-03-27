import redis
import requests
from functools import wraps
from typing import Callable

redis_store = redis.Redis()


def data_cacher(method: Callable) -> Callable:
    @wraps(method)
    def invoker(url) -> str:
        redis_store.incr('count:{}'.format(url))
        result = redis_store.get('result:{}'.format(url))
        if result:
            return result.decode('utf-8')
        result = method(url)
        redis_store.set('count:{}'.format(url), 0)
        redis_store.setex('result:{}'.format(url), 10, result)
        return result
    return invoker


@data_cacher
def get_page(url: str) -> str:
    return requests.get(url).text
