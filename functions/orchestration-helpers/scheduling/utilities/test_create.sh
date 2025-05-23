# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

project=$1
region=$2
workflow_name=$3

workflow_properties='{"location":"'$region'","project_id":"'$project'"}'

python3 firestore_crud.py --gcp_project $project \
                          --workflow_name $workflow_name \
                          --operation_type CREATE \
                          --crond_expression '0 7 * * *' \
                          --time_zone 'America/Los_Angeles' \
                          --date_format '%Y-%m-%d' \
                          --workflow_status ENABLED \
                          --workflow_properties $workflow_properties