/* Copyright 2020 Intel Corporation
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#pragma once

#include <string>

// Add actual workload definitions here ...
extern std::string ProcessUseData(std::string in_str);
extern std::string write_file(std::string in_str);
extern std::string build_file(std::string filename);
extern std::string plus(std::string in_str);
extern std::string GetCountOrKey(std::string name, std::string hex_key);