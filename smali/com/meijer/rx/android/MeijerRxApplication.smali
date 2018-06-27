.class public final Lcom/meijer/rx/android/MeijerRxApplication;
.super Lorg/appcelerator/titanium/TiApplication;
.source "MeijerRxApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MeijerRxApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 9

    .prologue
    .line 30
    invoke-super {p0}, Lorg/appcelerator/titanium/TiApplication;->onCreate()V

    .line 32
    new-instance v0, Lcom/meijer/rx/android/MeijerRxAppInfo;

    invoke-direct {v0, p0}, Lcom/meijer/rx/android/MeijerRxAppInfo;-><init>(Lorg/appcelerator/titanium/TiApplication;)V

    iput-object v0, p0, Lcom/meijer/rx/android/MeijerRxApplication;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 33
    invoke-virtual {p0}, Lcom/meijer/rx/android/MeijerRxApplication;->postAppInfo()V

    .line 36
    new-instance v0, Lcom/meijer/rx/android/AssetCryptImpl;

    invoke-direct {v0}, Lcom/meijer/rx/android/AssetCryptImpl;-><init>()V

    invoke-static {v0}, Lorg/appcelerator/kroll/util/KrollAssetHelper;->setAssetCrypt(Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;)V

    .line 39
    new-instance v0, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;

    invoke-direct {v0}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;-><init>()V

    .line 42
    const-string v1, "com.appcelerator.apm"

    const-class v2, Lcom/appcelerator/apm/CrittercismBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    const-string v1, "appcelerator.https"

    const-class v2, Lappcelerator/https/HttpsBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    const-string v1, "ti.ga"

    const-class v2, Lti/ga/TigaBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 51
    const-string v1, "ti.map"

    const-class v2, Lti/map/MapBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-string v1, "ti.push"

    const-class v2, Lti/push/TipushBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v1, "com.obscure.keychain"

    const-class v2, Lcom/obscure/keychain/KeychainBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-string v1, "ti.barcode"

    const-class v2, Lti/barcode/BarcodeBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-string v1, "com.tripvi.drawerlayout"

    const-class v2, Lcom/tripvi/drawerlayout/DrawerlayoutBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-string v1, "com.mscripts.androidkeychain"

    const-class v2, Lcom/mscripts/androidkeychain/AndroidkeychainBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 69
    const-string v1, "ti.imagefactory"

    const-class v2, Lti/imagefactory/ImageFactoryBootstrap;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/runtime/v8/V8Runtime;->addExternalModule(Ljava/lang/String;Ljava/lang/Class;)V

    .line 73
    invoke-static {p0, v0}, Lorg/appcelerator/kroll/KrollRuntime;->init(Landroid/content/Context;Lorg/appcelerator/kroll/KrollRuntime;)V

    .line 75
    invoke-virtual {p0}, Lcom/meijer/rx/android/MeijerRxApplication;->postOnCreate()V

    .line 124
    invoke-static {p0}, Lcom/crittercism/ti/CrittercismModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 127
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "crittercism"

    const-string v2, "com.appcelerator.apm"

    const-string v3, "ec36d909-befa-4ca1-b518-1e3f152ead61"

    const-string v4, "1.1.5"

    const-string v5, "App Crash Reporting"

    const-string v6, "Crittercism"

    const-string v7, ""

    const-string v8, "Copyright (c) 2013 by Crittercism"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 139
    invoke-static {p0}, Lappcelerator/https/HttpsModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 142
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "https"

    const-string v2, "appcelerator.https"

    const-string v3, "2163621d-1a78-4215-8244-bda08724ffed"

    const-string v4, "1.1.3"

    const-string v5, "Authenticate server in HTTPS connections made by TiHTTPClient"

    const-string v6, "Matt Langston"

    const-string v7, "Appcelerator Commercial License"

    const-string v8, "Copyright (c) 2014 by Appcelerator, Inc. All Rights Reserved."

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 154
    invoke-static {p0}, Lti/ga/TigaModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 157
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "tiga"

    const-string v2, "ti.ga"

    const-string v3, "e0babc76-21f5-4fbf-8581-ae0b00235068"

    const-string v4, "2.0.0"

    const-string v5, "tiga"

    const-string v6, "Ben Bahrenburg (bencoding)"

    const-string v7, "Apache 2"

    const-string v8, "Copyright (c) 2014 by Ben Bahrenburg (bencoding)"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 170
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "map"

    const-string v2, "ti.map"

    const-string v3, "f0d8fd44-86d2-4730-b67d-bd454577aeee"

    const-string v4, "2.3.7"

    const-string v5, "External version of Map module to support new Google Map v2 sdk"

    const-string v6, "Hieu Pham"

    const-string v7, "Apache Public License v2"

    const-string v8, "Copyright (c) 2013 by Appcelerator, Inc."

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 182
    invoke-static {p0}, Lti/push/TipushModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 185
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "tipush"

    const-string v2, "ti.push"

    const-string v3, "0315afc4-9658-479a-a967-ccfe568d7146"

    const-string v4, "1.0"

    const-string v5, "Push Notification Handler"

    const-string v6, "Manoj Kumar"

    const-string v7, "MIT"

    const-string v8, "@ 2015"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 198
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "keychain"

    const-string v2, "com.obscure.keychain"

    const-string v3, "eb0a9be8-02b5-43a2-a115-a220b293d202"

    const-string v4, "2.1"

    const-string v5, "Keychain access module for iPhone"

    const-string v6, "Paul Mietz Egli"

    const-string v7, "Apache 2.0"

    const-string v8, "Copyright (c) 2011 Paul Mietz Egli"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 211
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "barcode"

    const-string v2, "ti.barcode"

    const-string v3, "fe2e658e-0eaf-44a6-b6d1-c074d6b986a3"

    const-string v4, "2.3.5"

    const-string v5, "Lets you process 1D/2D barcodes."

    const-string v6, "Stephen Tramer & Jeff English"

    const-string v7, "Apache License, Version 2.0"

    const-string v8, "Copyright (c) 2010-2013 by Appcelerator, Inc."

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 223
    invoke-static {p0}, Lcom/tripvi/drawerlayout/DrawerlayoutModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 226
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "drawerlayout"

    const-string v2, "com.tripvi.drawerlayout"

    const-string v3, "f0a61bb9-3c4d-457f-84c7-3980a13e3dd2"

    const-string v4, "1.3.6"

    const-string v5, "TiUIView adaptor for DrawerLayout"

    const-string v6, "metacortex"

    const-string v7, "MIT license"

    const-string v8, "Copyright (c) 2013 by Tripvi Inc."

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 238
    invoke-static {p0}, Lcom/mscripts/androidkeychain/AndroidkeychainModule;->onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V

    .line 241
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "androidkeychain"

    const-string v2, "com.mscripts.androidkeychain"

    const-string v3, "c6bd5486-e594-436d-ba4c-475b88867d65"

    const-string v4, "1.0"

    const-string v5, "This module is meant to read values from sharedPrefernce of android."

    const-string v6, "Harshal"

    const-string v7, "mScripts"

    const-string v8, "mScripts"

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 254
    new-instance v0, Lorg/appcelerator/kroll/KrollModuleInfo;

    const-string v1, "imagefactory"

    const-string v2, "ti.imagefactory"

    const-string v3, "0aab25d7-0486-40ab-94a3-ed4f9a293414"

    const-string v4, "2.2.2"

    const-string v5, "Image Factory"

    const-string v6, "Jeff English"

    const-string v7, "Apache License, Version 2.0"

    const-string v8, "Copyright (c) 2013 by Appcelerator,  Inc."

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/kroll/KrollModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {v0}, Lorg/appcelerator/kroll/KrollModule;->addCustomModuleInfo(Lorg/appcelerator/kroll/KrollModuleInfo;)V

    .line 266
    return-void
.end method

.method public verifyCustomModules(Lorg/appcelerator/titanium/TiRootActivity;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method
