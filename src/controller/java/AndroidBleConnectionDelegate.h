/*
 *   Copyright (c) 2020 Project CHIP Authors
 *   All rights reserved.
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 */

#ifndef ANDROID_BLE_CONNECTION_DELEGATE_H
#define ANDROID_BLE_CONNECTION_DELEGATE_H

#include <ble/BleConnectionDelegate.h>

using namespace chip::Ble;

class AndroidBleConnectionDelegate : public BleConnectionDelegate
{
public:
    void NewConnection(BleLayer * bleLayer, void * appState, const uint16_t connDiscriminator);
};

#endif // ANDROID_BLE_CONNECTION_DELEGATE_H
