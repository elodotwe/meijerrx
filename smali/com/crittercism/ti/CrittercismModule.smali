.class public Lcom/crittercism/ti/CrittercismModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "CrittercismModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrittercismAndroidModule"

.field private static UUID:Ljava/lang/String;

.field private static appContext:Lorg/appcelerator/titanium/TiApplication;

.field private static didCrashOnLastLoad:Z

.field private static initialized:Z

.field private static isOptedOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    sput-boolean v1, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/crittercism/ti/CrittercismModule;->appContext:Lorg/appcelerator/titanium/TiApplication;

    .line 36
    sput-boolean v1, Lcom/crittercism/ti/CrittercismModule;->isOptedOut:Z

    .line 37
    sput-boolean v1, Lcom/crittercism/ti/CrittercismModule;->didCrashOnLastLoad:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/crittercism/ti/CrittercismModule;Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lcom/crittercism/ti/CrittercismModule;
    .param p1, "x1"    # Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/crittercism/ti/CrittercismModule;->convertExceptionToThrowable(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/crittercism/ti/CrittercismModule;->isOptedOut:Z

    return p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/crittercism/ti/CrittercismModule;->didCrashOnLastLoad:Z

    return p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/crittercism/ti/CrittercismModule;->UUID:Ljava/lang/String;

    return-object p0
.end method

.method private collectCritterData()V
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lcom/crittercism/ti/CrittercismModule$2;

    invoke-direct {v0, p0}, Lcom/crittercism/ti/CrittercismModule$2;-><init>(Lcom/crittercism/ti/CrittercismModule;)V

    .line 266
    .local v0, "cb":Lcom/crittercism/app/CritterCallback;
    new-instance v2, Lcom/crittercism/app/CritterUserDataRequest;

    invoke-direct {v2, v0}, Lcom/crittercism/app/CritterUserDataRequest;-><init>(Lcom/crittercism/app/CritterCallback;)V

    invoke-virtual {v2}, Lcom/crittercism/app/CritterUserDataRequest;->requestOptOutStatus()Lcom/crittercism/app/CritterUserDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crittercism/app/CritterUserDataRequest;->requestDidCrashOnLastLoad()Lcom/crittercism/app/CritterUserDataRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/crittercism/app/CritterUserDataRequest;->requestUserUUID()Lcom/crittercism/app/CritterUserDataRequest;

    move-result-object v1

    .line 271
    .local v1, "request":Lcom/crittercism/app/CritterUserDataRequest;
    invoke-virtual {v1}, Lcom/crittercism/app/CritterUserDataRequest;->makeRequest()V

    .line 272
    return-void
.end method

.method private convertExceptionToThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 9
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "stack"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 224
    const-string v6, "\n"

    invoke-virtual {p4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "scriptStack":[Ljava/lang/String;
    aget-object v2, v3, v7

    .line 226
    .local v2, "errorName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "error":Ljava/lang/Error;
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Ljava/lang/StackTraceElement;

    .line 242
    .local v4, "stacktrace":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StackTraceElement;

    const-string v6, "Unknown"

    const-string v7, "Unknown"

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, v7, p1, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    .local v5, "stacktraceElement":Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 244
    invoke-virtual {v0, v4}, Ljava/lang/Error;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v4    # "stacktrace":[Ljava/lang/StackTraceElement;
    .end local v5    # "stacktraceElement":Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .line 245
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private convertExceptionToThrowable(Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;)Ljava/lang/Throwable;
    .locals 8
    .param p1, "exception"    # Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;

    .prologue
    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->lineSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "errorMessage":Ljava/lang/String;
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "error":Ljava/lang/Throwable;
    :try_start_0
    new-instance v3, Ljava/lang/StackTraceElement;

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    iget-object v6, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->sourceName:Ljava/lang/String;

    iget v7, p1, Lorg/appcelerator/kroll/KrollExceptionHandler$ExceptionMessage;->line:I

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    .local v3, "stacktraceElement":Ljava/lang/StackTraceElement;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/StackTraceElement;

    .line 207
    .local v2, "stacktrace":[Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "stacktrace":[Ljava/lang/StackTraceElement;
    .end local v3    # "stacktraceElement":Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .line 209
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static onAppCreate(Lorg/appcelerator/titanium/TiApplication;)V
    .locals 2
    .param p0, "app"    # Lorg/appcelerator/titanium/TiApplication;

    .prologue
    .line 51
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "App context is defined."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sput-object p0, Lcom/crittercism/ti/CrittercismModule;->appContext:Lorg/appcelerator/titanium/TiApplication;

    .line 54
    return-void
.end method


# virtual methods
.method public didCrashOnLastAppLoad()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 183
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->didCrashOnLastLoad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "getNotificationTitle() has been deprecated."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptOutStatus()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->isOptedOut:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/crittercism/ti/CrittercismModule;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 8
    .param p1, "appID"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param
    .param p2, "config"    # Lorg/appcelerator/kroll/KrollDict;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x1

    .line 60
    sget-object v4, Lcom/crittercism/ti/CrittercismModule;->appContext:Lorg/appcelerator/titanium/TiApplication;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAppProperties()Lorg/appcelerator/titanium/TiProperties;

    move-result-object v4

    const-string v5, "com-appcelerator-apm-id"

    invoke-virtual {v4, v5, p1}, Lorg/appcelerator/titanium/TiProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    if-nez p1, :cond_0

    .line 63
    const-string v4, "CrittercismAndroidModule"

    const-string v5, "Crittercism appID is null.  Crittercism will not be initialized."

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    .line 68
    .local v0, "critterConfig":Lcom/crittercism/app/CrittercismConfig;
    invoke-virtual {v0, v7}, Lcom/crittercism/app/CrittercismConfig;->setNdkCrashReportingEnabled(Z)V

    .line 71
    if-eqz p2, :cond_1

    .line 72
    :try_start_0
    const-string v4, "customVersionName"

    invoke-virtual {p2, v4}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "customVersionName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 74
    invoke-virtual {v0, v2}, Lcom/crittercism/app/CrittercismConfig;->setCustomVersionName(Ljava/lang/String;)V

    .line 75
    const-string v4, "CrittercismAndroidModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customVersionName : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v2    # "customVersionName":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/crittercism/ti/CrittercismModule;->appContext:Lorg/appcelerator/titanium/TiApplication;

    invoke-static {v4, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_1
    new-instance v1, Lcom/crittercism/ti/CrittercismModule$1;

    invoke-direct {v1, p0}, Lcom/crittercism/ti/CrittercismModule$1;-><init>(Lcom/crittercism/ti/CrittercismModule;)V

    .line 90
    .local v1, "crittercismHandler":Lorg/appcelerator/titanium/TiExceptionHandler;
    const-string v4, "crittercism"

    invoke-static {v1, v4}, Lorg/appcelerator/kroll/KrollRuntime;->addAdditionalExceptionHandler(Lorg/appcelerator/kroll/KrollExceptionHandler;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/crittercism/ti/CrittercismModule;->collectCritterData()V

    .line 93
    sput-boolean v7, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    goto :goto_0

    .line 79
    .end local v1    # "crittercismHandler":Lorg/appcelerator/titanium/TiExceptionHandler;
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CrittercismAndroidModule"

    const-string v5, "Error initializing Crittercism"

    invoke-static {v4, v5, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p1, "breadcrumb"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "Crittercism not initialized, method call failed."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public logHandledException(Lorg/appcelerator/kroll/KrollException;)V
    .locals 4
    .param p1, "e"    # Lorg/appcelerator/kroll/KrollException;

    .prologue
    .line 110
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollException;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollException;->getLineNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollException;->getStack()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/crittercism/ti/CrittercismModule;->convertExceptionToThrowable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "Crittercism not initialized, method call failed."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAsyncBreadcrumbMode(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "breadcrumbMode"    # Ljava/lang/Boolean;

    .prologue
    .line 172
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "This method does not exist for Android."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 146
    sget-boolean v2, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v2, :cond_0

    .line 147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v1, "metadataJSON":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "Email"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V

    .line 157
    .end local v1    # "metadataJSON":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 150
    .restart local v1    # "metadataJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "metadataJSON":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "CrittercismAndroidModule"

    const-string v3, "Crittercism not initialized, method call failed."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-boolean v2, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v2, :cond_0

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    .local v1, "metadataJSON":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V

    .line 131
    .end local v1    # "metadataJSON":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 124
    .restart local v1    # "metadataJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "metadataJSON":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "CrittercismAndroidModule"

    const-string v3, "Crittercism not initialized, method call failed."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setOptOutStatus(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "optOutStatus"    # Ljava/lang/Boolean;

    .prologue
    .line 162
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setOptOutStatus(Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "Crittercism not initialized, method call failed."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-boolean v0, Lcom/crittercism/ti/CrittercismModule;->initialized:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {p1}, Lcom/crittercism/app/Crittercism;->setUsername(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const-string v0, "CrittercismAndroidModule"

    const-string v1, "Crittercism not initialized, method call failed."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
