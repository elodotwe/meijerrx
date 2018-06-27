.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;
.super Lcom/appcelerator/analytics/APSAnalyticsEventFactory;
.source "TiAnalyticsEventFactory.java"


# static fields
.field public static final MAX_GEO_ANALYTICS_FREQUENCY:J = 0xea60L

.field public static final TAG:Ljava/lang/String; = "TiAnalyticsEventFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/appcelerator/analytics/APSAnalyticsEventFactory;-><init>()V

    return-void
.end method

.method public static createErrorEvent(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Lcom/appcelerator/analytics/APSAnalyticsEvent;
    .locals 8
    .param p0, "t"    # Ljava/lang/Thread;
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "tiVersionInfo"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 40
    .local v1, "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 41
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "thread_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "error_msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ti_version"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<<<<<<<<<<<<<<< STACK TRACE >>>>>>>>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 46
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .line 48
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 49
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    new-instance v1, Lcom/appcelerator/analytics/APSAnalyticsEvent;

    .end local v1    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    const-string v5, "ti.crash"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/appcelerator/analytics/APSAnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .restart local v1    # "event":Lcom/appcelerator/analytics/APSAnalyticsEvent;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 54
    const/4 v4, 0x0

    .line 56
    return-object v1
.end method

.method public static locationToJSONString(Landroid/location/Location;)Ljava/lang/String;
    .locals 3
    .param p0, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 61
    if-nez p0, :cond_0

    .line 69
    :goto_0
    return-object v1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->locationToJSONObject(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v0

    .line 66
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 67
    .end local v0    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
