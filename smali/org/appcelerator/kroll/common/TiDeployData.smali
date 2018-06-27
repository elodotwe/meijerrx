.class public Lorg/appcelerator/kroll/common/TiDeployData;
.super Ljava/lang/Object;
.source "TiDeployData.java"


# static fields
.field protected static final DEBUGGER_ENABLED:Ljava/lang/String; = "debuggerEnabled"

.field protected static final DEBUGGER_PORT:Ljava/lang/String; = "debuggerPort"

.field protected static final FASTDEV_LISTEN:Ljava/lang/String; = "fastdevListen"

.field protected static final FASTDEV_PORT:Ljava/lang/String; = "fastdevPort"

.field protected static final PROFILER_ENABLED:Ljava/lang/String; = "profilerEnabled"

.field protected static final PROFILER_PORT:Ljava/lang/String; = "profilerPort"

.field private static final TAG:Ljava/lang/String; = "TiDeployData"


# instance fields
.field private deployData:Lorg/json/JSONObject;

.field private krollApp:Lorg/appcelerator/kroll/KrollApplication;


# direct methods
.method public constructor <init>(Lorg/appcelerator/kroll/KrollApplication;)V
    .locals 10
    .param p1, "app"    # Lorg/appcelerator/kroll/KrollApplication;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->krollApp:Lorg/appcelerator/kroll/KrollApplication;

    .line 45
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    .line 48
    :try_start_0
    check-cast p1, Landroid/content/Context;

    .end local p1    # "app":Lorg/appcelerator/kroll/KrollApplication;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 50
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    if-nez v0, :cond_0

    .line 51
    const-string v7, "TiDeployData"

    const-string v8, "AssetManager is null, can\'t read deploy.json"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-void

    .line 55
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    const-string v7, "deploy.json"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 56
    .local v5, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 58
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 60
    .local v2, "count":I
    :cond_1
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 61
    if-eqz v6, :cond_1

    .line 62
    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 73
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 66
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "deployJson":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 68
    const-string v7, "TiDeployData"

    const-string v8, "deploy.json does not exist, skipping"

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 75
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v3    # "deployJson":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v4

    .line 76
    .local v4, "e":Ljava/io/IOException;
    const-string v7, "TiDeployData"

    const-string v8, "IO error while reading deploy.json"

    invoke-static {v7, v8, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v3    # "deployJson":Ljava/lang/String;
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    .line 71
    const-string v7, "TiDeployData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded deploy.json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DEBUG_MODE"

    invoke-static {v7, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 77
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v3    # "deployJson":Ljava/lang/String;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v4

    .line 78
    .local v4, "e":Lorg/json/JSONException;
    const-string v7, "TiDeployData"

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isDeployTypeDisabled()Z
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "deployType":Ljava/lang/String;
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->krollApp:Lorg/appcelerator/kroll/KrollApplication;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->krollApp:Lorg/appcelerator/kroll/KrollApplication;

    invoke-interface {v1}, Lorg/appcelerator/kroll/KrollApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v1, "production"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDebuggerPort()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 99
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDeployTypeDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "debuggerPort"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getFastDevListen()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getFastDevPort()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    return v0
.end method

.method public getProfilerPort()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 123
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDeployTypeDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "profilerPort"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public isDebuggerEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDeployTypeDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "debuggerEnabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isProfilerEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/appcelerator/kroll/common/TiDeployData;->isDeployTypeDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/appcelerator/kroll/common/TiDeployData;->deployData:Lorg/json/JSONObject;

    const-string v2, "profilerEnabled"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
