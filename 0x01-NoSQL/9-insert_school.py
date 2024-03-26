#!/usr/bin/env python3
"""
Insert documents
"""


def insert_school(mongo_collection, **kwargs):
    """
      Inserts a new document in
      collection based on kwargs

    :param mongo_collection:
    :param kwargs:
    :return:
    """
    new_documents = mongo_collection.insert_one(kwargs)
    return new_documents.inserted_id
