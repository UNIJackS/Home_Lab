#!/bin/bash

name=<Name of screen>
command='stop\n'

screen -S $name -X stuff $command
