#!/bin/bash

helm dependency update
helm template .
