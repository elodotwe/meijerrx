.class public Lti/modules/titanium/android/TiJSIntervalService;
.super Lti/modules/titanium/android/TiJSService;
.source "TiJSIntervalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiJSIntervalService"


# instance fields
.field private runners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSService;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    .line 38
    return-void
.end method

.method private destroyRunners()V
    .locals 6

    .prologue
    .line 107
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 108
    iget-object v4, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    .line 110
    .local v1, "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    invoke-virtual {v1}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->stop()V

    goto :goto_0

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :catch_0
    move-exception v2

    .line 116
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "TiJSIntervalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thrown while clearing interval service runners: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 112
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method private findRunnerOfProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_0

    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 101
    :goto_0
    return-object v1

    .line 93
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    monitor-enter v3

    .line 94
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    .line 95
    .local v1, "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    iget-object v4, v1, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->proxy:Lorg/appcelerator/titanium/proxy/ServiceProxy;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    monitor-exit v3

    goto :goto_0

    .line 99
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 101
    goto :goto_0
.end method


# virtual methods
.method protected executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 12
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 43
    const-string v7, "interval"

    .line 45
    .local v7, "EXTRA_NAME":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getIntent()Lorg/appcelerator/titanium/proxy/IntentProxy;

    move-result-object v10

    .line 46
    .local v10, "intentProxy":Lorg/appcelerator/titanium/proxy/IntentProxy;
    if-eqz v10, :cond_0

    const-string v1, "interval"

    invoke-virtual {v10, v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    const-string v1, "TiJSIntervalService"

    const-string v2, "The intent is missing the extra value \'interval\', therefore the code will be executed only once."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-super {p0, p1}, Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    .line 85
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {v10}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 53
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 54
    .local v8, "extras":Landroid/os/Bundle;
    const-string v1, "interval"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 55
    .local v11, "intervalObj":Ljava/lang/Object;
    const-wide/16 v4, -0x1

    .line 56
    .local v4, "interval":J
    instance-of v1, v11, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 57
    check-cast v11, Ljava/lang/Number;

    .end local v11    # "intervalObj":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 60
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 61
    const-string v1, "TiJSIntervalService"

    const-string v2, "The intent\'s extra \'interval\' value is negative or non-numeric, therefore the code will be executed only once."

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-super {p0, p1}, Lti/modules/titanium/android/TiJSService;->executeServiceCode(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    if-nez v1, :cond_4

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    .line 70
    :cond_4
    iget-object v6, p0, Lti/modules/titanium/android/TiJSIntervalService;->url:Ljava/lang/String;

    .line 71
    .local v6, "fullUrl":Ljava/lang/String;
    const-string v1, "://"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v1

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/ServiceProxy;->getCreationUrl()Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v2

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    :cond_5
    const-string v1, "app://"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 76
    const-string v1, "app:/"

    const-string v2, "Resources"

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    :cond_6
    :goto_1
    new-instance v0, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;-><init>(Lti/modules/titanium/android/TiJSIntervalService;Landroid/app/Service;Lorg/appcelerator/titanium/proxy/ServiceProxy;JLjava/lang/String;)V

    .line 83
    .local v0, "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {v0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->start()V

    goto/16 :goto_0

    .line 78
    .end local v0    # "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    :cond_7
    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 79
    const-string v1, "file:///android_asset/"

    const-string v2, ""

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "TiJSIntervalService"

    const-string v1, "onDestroy"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lti/modules/titanium/android/TiJSIntervalService;->destroyRunners()V

    .line 126
    invoke-super {p0}, Lti/modules/titanium/android/TiJSService;->onDestroy()V

    .line 127
    return-void
.end method

.method public unbindProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lti/modules/titanium/android/TiJSIntervalService;->findRunnerOfProxy(Lorg/appcelerator/titanium/proxy/ServiceProxy;)Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;

    move-result-object v0

    .line 133
    .local v0, "runner":Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;
    if-eqz v0, :cond_0

    .line 134
    const-string v1, "TiJSIntervalService"

    const-string v2, "Stopping IntervalServiceRunner because of unbind"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Lti/modules/titanium/android/TiJSIntervalService$IntervalServiceRunner;->stop()V

    .line 137
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/android/TiJSIntervalService;->runners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method
