
#!/bin/bash

tensorflow_model_server  --rest_api_port="${PORT}" --allow_version_labels_for_unavailable_models --model_config_file=/models/models.config "$@"