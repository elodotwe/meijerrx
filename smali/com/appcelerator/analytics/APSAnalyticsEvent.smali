.class public Lcom/appcelerator/analytics/APSAnalyticsEvent;
.super Ljava/lang/Object;
.source "APSAnalyticsEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APSAnalyticsEvent"

.field private static final isoDateFormatter:Ljava/text/SimpleDateFormat;

.field private static utc:Ljava/util/TimeZone;


# instance fields
.field private eventAppGuid:Ljava/lang/String;

.field private eventMid:Ljava/lang/String;

.field private eventPayload:Ljava/lang/String;

.field private eventSeq:I

.field private eventSid:Ljava/lang/String;

.field private eventTimestamp:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private expandPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->utc:Ljava/util/TimeZone;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    .line 45
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/appcelerator/analytics/APSAnalyticsEvent;->utc:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventPayload"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v2, -0x1

    iput v2, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSeq:I

    .line 69
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v1, "o":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->init(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "o":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "APSAnalyticsEvent"

    const-string v3, "Error packaging string."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, v2}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->init(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSeq:I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->init(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method

.method public static getDateFormatForTimestamp()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventPayload"    # Lorg/json/JSONObject;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventType:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventMid:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSid:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getInstance()Lcom/appcelerator/analytics/APSAnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appcelerator/analytics/APSAnalyticsHelper;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventPayload:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->expandPayload:Z

    .line 92
    return-void
.end method


# virtual methods
.method public getEventAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventMid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSeq()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSeq:I

    return v0
.end method

.method public getEventSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public mustExpandPayload()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->expandPayload:Z

    return v0
.end method

.method public setEventSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSeq:I

    .line 144
    return-void
.end method

.method public setEventSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/appcelerator/analytics/APSAnalyticsEvent;->eventSid:Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method
