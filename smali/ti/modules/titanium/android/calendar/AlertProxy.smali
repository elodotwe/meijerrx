.class public Lti/modules/titanium/android/calendar/AlertProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AlertProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final EVENT_REMINDER_ACTION:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final STATE_DISMISSED:I = 0x2

.field public static final STATE_FIRED:I = 0x1

.field public static final STATE_SCHEDULED:I


# instance fields
.field protected alarmTime:Ljava/util/Date;

.field protected begin:Ljava/util/Date;

.field protected end:Ljava/util/Date;

.field protected eventId:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected minutes:I

.field protected state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 48
    invoke-direct {p0}, Lti/modules/titanium/android/calendar/AlertProxy;-><init>()V

    .line 49
    return-void
.end method

.method public static createAlert(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/android/calendar/EventProxy;I)Lti/modules/titanium/android/calendar/AlertProxy;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .param p2, "minutes"    # I

    .prologue
    .line 140
    invoke-static {p1, p2}, Lti/modules/titanium/android/calendar/AlertProxy;->createAlert(Lti/modules/titanium/android/calendar/EventProxy;I)Lti/modules/titanium/android/calendar/AlertProxy;

    move-result-object v0

    return-object v0
.end method

.method public static createAlert(Lti/modules/titanium/android/calendar/EventProxy;I)Lti/modules/titanium/android/calendar/AlertProxy;
    .locals 11
    .param p0, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .param p1, "minutes"    # I

    .prologue
    const/4 v10, 0x0

    .line 104
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 135
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 108
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 111
    .local v0, "alarmTime":Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getBegin()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 112
    const/16 v6, 0xc

    neg-int v7, p1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 114
    const-string v6, "event_id"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "begin"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getBegin()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    const-string v6, "end"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getEnd()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    const-string v6, "alarmTime"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    const-string v6, "state"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string v6, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v6, "creationTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    const-string v6, "receivedTime"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v6, "notifyTime"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    invoke-static {}, Lti/modules/titanium/android/calendar/AlertProxy;->getAlertsUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 125
    .local v3, "alertUri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "alertId":Ljava/lang/String;
    new-instance v1, Lti/modules/titanium/android/calendar/AlertProxy;

    invoke-direct {v1}, Lti/modules/titanium/android/calendar/AlertProxy;-><init>()V

    .line 128
    .local v1, "alert":Lti/modules/titanium/android/calendar/AlertProxy;
    iput-object v2, v1, Lti/modules/titanium/android/calendar/AlertProxy;->id:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getBegin()Ljava/util/Date;

    move-result-object v6

    iput-object v6, v1, Lti/modules/titanium/android/calendar/AlertProxy;->begin:Ljava/util/Date;

    .line 130
    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getEnd()Ljava/util/Date;

    move-result-object v6

    iput-object v6, v1, Lti/modules/titanium/android/calendar/AlertProxy;->end:Ljava/util/Date;

    .line 131
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, v1, Lti/modules/titanium/android/calendar/AlertProxy;->alarmTime:Ljava/util/Date;

    .line 132
    iput v10, v1, Lti/modules/titanium/android/calendar/AlertProxy;->state:I

    .line 133
    iput p1, v1, Lti/modules/titanium/android/calendar/AlertProxy;->minutes:I

    goto/16 :goto_0
.end method

.method public static getAlertsForEvent(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/AlertProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p1}, Lti/modules/titanium/android/calendar/AlertProxy;->getAlertsForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAlertsForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/AlertProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    const-string v0, "event_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "alarmTime ASC,begin ASC,title ASC"

    invoke-static {v0, v1, v2}, Lti/modules/titanium/android/calendar/AlertProxy;->queryAlerts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getAlertsInstanceUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/calendar_alerts/by_instance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlertsUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/calendar_alerts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryAlerts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "queryArgs"    # [Ljava/lang/String;
    .param p2, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/AlertProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v7, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/AlertProxy;>;"
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v7

    .line 65
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/AlertProxy;->getAlertsUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "begin"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "end"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "alarmTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "state"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "minutes"

    aput-object v4, v2, v3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 70
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 71
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    new-instance v6, Lti/modules/titanium/android/calendar/AlertProxy;

    invoke-direct {v6}, Lti/modules/titanium/android/calendar/AlertProxy;-><init>()V

    .line 73
    .local v6, "alert":Lti/modules/titanium/android/calendar/AlertProxy;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->id:Ljava/lang/String;

    .line 74
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->eventId:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->begin:Ljava/util/Date;

    .line 76
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->end:Ljava/util/Date;

    .line 77
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->alarmTime:Ljava/util/Date;

    .line 78
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->state:I

    .line 79
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lti/modules/titanium/android/calendar/AlertProxy;->minutes:I

    .line 80
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    .end local v6    # "alert":Lti/modules/titanium/android/calendar/AlertProxy;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static queryAlerts(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "queryArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/AlertProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p1, p2, p3}, Lti/modules/titanium/android/calendar/AlertProxy;->queryAlerts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlarmTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->alarmTime:Ljava/util/Date;

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "Ti.Android.Calendar.Alert"

    return-object v0
.end method

.method public getBegin()Ljava/util/Date;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->begin:Ljava/util/Date;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->minutes:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lti/modules/titanium/android/calendar/AlertProxy;->state:I

    return v0
.end method
