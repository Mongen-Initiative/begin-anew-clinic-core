#!/bin/bash
. bin/activate
uvicorn sql_app.main:app --reload
