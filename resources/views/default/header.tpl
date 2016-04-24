<!doctype html>
<!--
  Material Design Lite
  Copyright 2015 Google Inc. All rights reserved.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License
-->

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$config["appName"]}</title>

    <!-- Page styles -->
    <link href="https://fonts.lug.ustc.edu.cn/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/theme/android/css/material.min.css">
    <link rel="stylesheet" href="/theme/android/css/styles.css">
    <style>
    #view-source {
      position: fixed;
      display: block;
      right: 0;
      bottom: 0;
      margin-right: 40px;
      margin-bottom: 40px;
      z-index: 900;
    }
    </style>
  </head>
  <body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

      <div class="android-header mdl-layout__header mdl-layout__header--waterfall">
        <div class="mdl-layout__header-row">
          <span class="android-title mdl-layout-title">
            <img class="android-logo-image" src="/theme/android/images/logo2.png">
          </span>
          <!-- Add spacer, to align navigation to the right in desktop -->
          <div class="android-header-spacer mdl-layout-spacer"></div>
        
            
            <div class="mdl-textfield__expandable-holder">
              <input class="mdl-textfield__input" type="text" id="search-field">

          </div>
          <!-- Navigation -->
          <div class="android-navigation-container">
            <nav class="android-navigation mdl-navigation">
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/">首页</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/tos">TOS</a>
              {if $user->isLogin}
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/user">用户中心</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/user/logout">登出</a>
              {else}
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/auth/login">登陆</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="/auth/register">注册</a>
              {/if}
            </nav>
          </div>
          <span class="android-mobile-title mdl-layout-title">
            <img class="android-logo-image" src="/theme/android/images/logo.png">
          </span>
        </div>
      </div>

      <div class="android-drawer mdl-layout__drawer">
        <span class="mdl-layout-title">
          <img class="android-logo-image" src="/theme/android/images/logo-white.png">
        </span>
        <nav class="mdl-navigation">
          <a class="mdl-navigation__link" href="/">首页</a>
          <a class="mdl-navigation__link" href="/tos">TOS</a>
          {if $user->isLogin}
          <a class="mdl-navigation__link" href="/user">用户中心</a>
          <a class="mdl-navigation__link" href="/user/logout">登出</a>
          {else}
          <a class="mdl-navigation__link" href="/auth/login">登陆</a>
          <a class="mdl-navigation__link" href="/auth/register">注册</a>
          {/if}
          <div class="android-drawer-separator"></div>
        </nav>
      </div>