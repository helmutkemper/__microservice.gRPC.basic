#!/bin/bash

GO_WORK_DIR=/node/src/app/nodeJs
cd ${GO_WORK_DIR}
exec node ./dynamic_codegen/greeter_server.js

