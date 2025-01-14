/* MIT License
* 
* Copyright (C) 2019, 2020, 2021 Famedly GmbH & Quan Pham
* 
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
* 
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
* 
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

import 'authentication_identifier.dart';
import 'authentication_types.dart';

class AuthenticationJwtTokenIdentifier extends AuthenticationIdentifier {
  String token;

  AuthenticationJwtTokenIdentifier({required this.token})
      : super(type: AuthenticationIdentifierTypes.userId);

  AuthenticationJwtTokenIdentifier.fromJson(Map<String, Object?> json)
      : token = json['token'] as String,
        super.fromJson(json);

  @override
  Map<String, Object?> toJson() {
    final data = super.toJson();
    data['token'] = token;
    return data;
  }
}
