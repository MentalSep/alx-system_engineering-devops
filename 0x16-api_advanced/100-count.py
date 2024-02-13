#!/usr/bin/python3
"""
Module wokring with Reddit API
"""
import requests


def count_words(subreddit, word_list, hot_list=[], after=None):
    """
    Returns the number of times a word appears in a subreddit
    """
    url = "https://www.reddit.com/r/{}/hot.json?limit=100".format(subreddit)
    headers = {'User-Agent': 'Mozilla/5.0'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return None
    for i in response.json().get('data').get('children'):
        hot_list.append(i.get('data').get('title'))
    after = response.json().get('data').get('after')
    if after is None:
        word_count = {}
        for word in word_list:
            word_count[word] = 0
            for title in hot_list:
                word_count[word] += title.lower().split(' ').count(word.lower())
        for k, v in sorted(word_count.items(), key=lambda item: item[1], reverse=True):
            if v != 0:
                print("{}: {}".format(k, v))
        return
    return count_words(subreddit, word_list, hot_list, after)

