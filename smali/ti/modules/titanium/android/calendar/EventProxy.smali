.class public Lti/modules/titanium/android/calendar/EventProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "EventProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_CONFIRMED:I = 0x1

.field public static final STATUS_TENTATIVE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TiEvent"

.field public static final VISIBILITY_CONFIDENTIAL:I = 0x1

.field public static final VISIBILITY_DEFAULT:I = 0x0

.field public static final VISIBILITY_PRIVATE:I = 0x2

.field public static final VISIBILITY_PUBLIC:I = 0x3


# instance fields
.field protected allDay:Z

.field protected begin:Ljava/util/Date;

.field protected description:Ljava/lang/String;

.field protected end:Ljava/util/Date;

.field protected extendedProperties:Lorg/appcelerator/kroll/KrollDict;

.field protected hasAlarm:Z

.field protected hasExtendedProperties:Z

.field protected id:Ljava/lang/String;

.field protected lastDate:Ljava/util/Date;

.field protected location:Ljava/lang/String;

.field protected recurrenceDate:Ljava/lang/String;

.field protected recurrenceExceptionDate:Ljava/lang/String;

.field protected recurrenceExceptionRule:Ljava/lang/String;

.field protected recurrenceRule:Ljava/lang/String;

.field protected status:I

.field protected title:Ljava/lang/String;

.field protected visibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 47
    iput-boolean v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    iput-boolean v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    .line 49
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->extendedProperties:Lorg/appcelerator/kroll/KrollDict;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 61
    invoke-direct {p0}, Lti/modules/titanium/android/calendar/EventProxy;-><init>()V

    .line 62
    return-void
.end method

.method public static createEvent(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/android/calendar/CalendarProxy;Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/EventProxy;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "calendar"    # Lti/modules/titanium/android/calendar/CalendarProxy;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 263
    invoke-static {p1, p2}, Lti/modules/titanium/android/calendar/EventProxy;->createEvent(Lti/modules/titanium/android/calendar/CalendarProxy;Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/EventProxy;

    move-result-object v0

    return-object v0
.end method

.method public static createEvent(Lti/modules/titanium/android/calendar/CalendarProxy;Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/EventProxy;
    .locals 10
    .param p0, "calendar"    # Lti/modules/titanium/android/calendar/CalendarProxy;
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 193
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v1, v5

    .line 258
    :goto_0
    return-object v1

    .line 196
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v8

    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Lti/modules/titanium/android/calendar/EventProxy;

    invoke-direct {v1}, Lti/modules/titanium/android/calendar/EventProxy;-><init>()V

    .line 199
    .local v1, "event":Lti/modules/titanium/android/calendar/EventProxy;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v4, "eventValues":Landroid/content/ContentValues;
    const-string v8, "hasAlarm"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v8, "hasExtendedProperties"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 204
    const-string v6, "TiEvent"

    const-string v7, "Title was not created, no title found for event"

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 205
    goto :goto_0

    .line 208
    :cond_1
    const-string v5, "title"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->title:Ljava/lang/String;

    .line 209
    const-string v5, "title"

    iget-object v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v5, "calendar_id"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/CalendarProxy;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v5, v8, :cond_2

    .line 214
    const-string v5, "eventTimezone"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_2
    const-string v5, "location"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 218
    const-string v5, "location"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->location:Ljava/lang/String;

    .line 219
    const-string v5, "eventLocation"

    iget-object v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->location:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_3
    const-string v5, "description"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    const-string v5, "description"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->description:Ljava/lang/String;

    .line 223
    const-string v5, "description"

    iget-object v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->description:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_4
    const-string v5, "begin"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 226
    const-string v5, "begin"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    .line 227
    iget-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    if-eqz v5, :cond_5

    .line 228
    const-string v5, "dtstart"

    iget-object v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    :cond_5
    const-string v5, "end"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    const-string v5, "end"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    .line 233
    iget-object v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 234
    const-string v5, "dtend"

    iget-object v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    :cond_6
    const-string v5, "allDay"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 238
    const-string v5, "allDay"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->allDay:Z

    .line 239
    const-string v8, "allDay"

    iget-boolean v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->allDay:Z

    if-eqz v5, :cond_a

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    :cond_7
    const-string v5, "hasExtendedProperties"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 243
    const-string v5, "hasExtendedProperties"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    .line 244
    const-string v8, "hasExtendedProperties"

    iget-boolean v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    if-eqz v5, :cond_b

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    :cond_8
    const-string v5, "hasAlarm"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 248
    const-string v5, "hasAlarm"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v1, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    .line 249
    const-string v5, "hasAlarm"

    iget-boolean v8, v1, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    if-eqz v8, :cond_c

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/events"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 253
    .local v3, "eventUri":Landroid/net/Uri;
    const-string v5, "TiEvents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created event with uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "eventId":Ljava/lang/String;
    iput-object v2, v1, Lti/modules/titanium/android/calendar/EventProxy;->id:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2    # "eventId":Ljava/lang/String;
    .end local v3    # "eventUri":Landroid/net/Uri;
    :cond_a
    move v5, v7

    .line 239
    goto/16 :goto_1

    :cond_b
    move v5, v7

    .line 244
    goto :goto_2

    :cond_c
    move v6, v7

    .line 249
    goto :goto_3
.end method

.method public static getEventsUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtendedPropertiesUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extendedproperties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstancesWhenUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/instances/when"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static queryEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "queryArgs"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v8, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :goto_0
    return-object v8

    .line 152
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v9, ""

    .line 155
    .local v9, "visibility":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 156
    const-string v9, "accessLevel"

    .line 161
    :goto_1
    const/16 v1, 0xb

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "description"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "eventLocation"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "dtstart"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "dtend"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "allDay"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "hasAlarm"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string v3, "eventStatus"

    aput-object v3, v2, v1

    const/16 v1, 0x9

    aput-object v9, v2, v1

    const/16 v1, 0xa

    const-string v3, "hasExtendedProperties"

    aput-object v3, v2, v1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    .local v7, "eventCursor":Landroid/database/Cursor;
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    new-instance v6, Lti/modules/titanium/android/calendar/EventProxy;

    invoke-direct {v6}, Lti/modules/titanium/android/calendar/EventProxy;-><init>()V

    .line 167
    .local v6, "event":Lti/modules/titanium/android/calendar/EventProxy;
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->id:Ljava/lang/String;

    .line 168
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->title:Ljava/lang/String;

    .line 169
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->description:Ljava/lang/String;

    .line 170
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->location:Ljava/lang/String;

    .line 171
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    .line 172
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    .line 173
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->allDay:Z

    .line 174
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    .line 175
    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->status:I

    .line 176
    const/16 v1, 0x9

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->visibility:I

    .line 177
    const/16 v1, 0xa

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, v6, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    .line 179
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 158
    .end local v6    # "event":Lti/modules/titanium/android/calendar/EventProxy;
    .end local v7    # "eventCursor":Landroid/database/Cursor;
    :cond_1
    const-string v9, "visibility"

    goto/16 :goto_1

    .line 173
    .restart local v6    # "event":Lti/modules/titanium/android/calendar/EventProxy;
    .restart local v7    # "eventCursor":Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 174
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 177
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 181
    .end local v6    # "event":Lti/modules/titanium/android/calendar/EventProxy;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "queryArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lti/modules/titanium/android/calendar/EventProxy;->getEventsUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dtstart ASC"

    invoke-static {v0, p0, p1, v1}, Lti/modules/titanium/android/calendar/EventProxy;->queryEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static queryEvents(Lorg/appcelerator/titanium/TiContext;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "queryArgs"    # [Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p1, p2, p3, p4}, Lti/modules/titanium/android/calendar/EventProxy;->queryEvents(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static queryEvents(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "queryArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {p1, p2}, Lti/modules/titanium/android/calendar/EventProxy;->queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static queryEventsBetweenDates(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "date1"    # J
    .param p2, "date2"    # J
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "queryArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v9, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    :goto_0
    return-object v9

    .line 95
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/EventProxy;->getInstancesWhenUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 99
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-static {v6, p0, p1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 100
    invoke-static {v6, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 102
    const-string v10, ""

    .line 103
    .local v10, "visibility":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 104
    const-string v10, "accessLevel"

    .line 109
    :goto_1
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "begin"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "end"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "hasAlarm"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "eventStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object v10, v2, v3

    const-string v5, "startDay ASC, startMinute ASC"

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 113
    .local v8, "eventCursor":Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 114
    const-string v1, "TiEvent"

    const-string v2, "Unable to get any results when pulling events by date range"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v8    # "eventCursor":Landroid/database/Cursor;
    :cond_1
    const-string v10, "visibility"

    goto :goto_1

    .line 119
    .restart local v8    # "eventCursor":Landroid/database/Cursor;
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    new-instance v7, Lti/modules/titanium/android/calendar/EventProxy;

    invoke-direct {v7}, Lti/modules/titanium/android/calendar/EventProxy;-><init>()V

    .line 121
    .local v7, "event":Lti/modules/titanium/android/calendar/EventProxy;
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->id:Ljava/lang/String;

    .line 122
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->title:Ljava/lang/String;

    .line 123
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->description:Ljava/lang/String;

    .line 124
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->location:Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    .line 126
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    .line 127
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->allDay:Z

    .line 128
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    .line 129
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->status:I

    .line 130
    const/16 v1, 0x9

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v7, Lti/modules/titanium/android/calendar/EventProxy;->visibility:I

    .line 132
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 128
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 135
    .end local v7    # "event":Lti/modules/titanium/android/calendar/EventProxy;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "date1"    # J
    .param p2, "date2"    # J
    .param p4, "calendar"    # Lti/modules/titanium/android/calendar/CalendarProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lti/modules/titanium/android/calendar/CalendarProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 269
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendars._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lti/modules/titanium/android/calendar/CalendarProxy;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v5}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryEventsBetweenDates(Lorg/appcelerator/titanium/TiContext;JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "date1"    # J
    .param p3, "date2"    # J
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "queryArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "JJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-static/range {p1 .. p6}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLjava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static queryEventsBetweenDates(Lorg/appcelerator/titanium/TiContext;JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "date1"    # J
    .param p3, "date2"    # J
    .param p5, "calendar"    # Lti/modules/titanium/android/calendar/CalendarProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/appcelerator/titanium/TiContext;",
            "JJ",
            "Lti/modules/titanium/android/calendar/CalendarProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p1, p2, p3, p4, p5}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAlert(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/AlertProxy;
    .locals 2
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 308
    const-string v1, "minutes"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 309
    .local v0, "minutes":I
    invoke-static {p0, v0}, Lti/modules/titanium/android/calendar/AlertProxy;->createAlert(Lti/modules/titanium/android/calendar/EventProxy;I)Lti/modules/titanium/android/calendar/AlertProxy;

    move-result-object v1

    return-object v1
.end method

.method public createReminder(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/ReminderProxy;
    .locals 3
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 289
    const-string v2, "minutes"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, "minutes":I
    const/4 v0, 0x0

    .line 291
    .local v0, "method":I
    const-string v2, "method"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const-string v2, "method"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 295
    :cond_0
    invoke-static {p0, v1, v0}, Lti/modules/titanium/android/calendar/ReminderProxy;->createReminder(Lti/modules/titanium/android/calendar/EventProxy;II)Lti/modules/titanium/android/calendar/ReminderProxy;

    move-result-object v2

    return-object v2
.end method

.method public getAlerts()[Lti/modules/titanium/android/calendar/AlertProxy;
    .locals 2

    .prologue
    .line 301
    invoke-static {p0}, Lti/modules/titanium/android/calendar/AlertProxy;->getAlertsForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    .local v0, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/AlertProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/android/calendar/AlertProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/android/calendar/AlertProxy;

    return-object v1
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->allDay:Z

    return v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, "Ti.Android.Calendar.Event"

    return-object v0
.end method

.method public getBegin()Ljava/util/Date;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->begin:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->end:Ljava/util/Date;

    return-object v0
.end method

.method public getExtendedProperties()Lorg/appcelerator/kroll/KrollDict;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 399
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-object v5

    .line 403
    :cond_0
    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 404
    .local v7, "extendedProperties":Lorg/appcelerator/kroll/KrollDict;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 405
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/EventProxy;->getExtendedPropertiesUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v11

    const-string v3, "value"

    aput-object v3, v2, v12

    const-string v3, "event_id = ?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, "extPropsCursor":Landroid/database/Cursor;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "name":Ljava/lang/String;
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 412
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v7, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 414
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 415
    goto :goto_0
.end method

.method public getExtendedProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 421
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v5

    .line 424
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 425
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/EventProxy;->getExtendedPropertiesUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v9

    const-string v3, "event_id = ? and name = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v9

    aput-object p1, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    .local v6, "extPropsCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 430
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 431
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 432
    goto :goto_0
.end method

.method public getHasAlarm()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasAlarm:Z

    return v0
.end method

.method public getHasExtendedProperties()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->lastDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->recurrenceDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceExceptionDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->recurrenceExceptionDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceExceptionRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->recurrenceExceptionRule:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrenceRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->recurrenceRule:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()[Lti/modules/titanium/android/calendar/ReminderProxy;
    .locals 2

    .prologue
    .line 282
    invoke-static {p0}, Lti/modules/titanium/android/calendar/ReminderProxy;->getRemindersForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    .local v0, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/ReminderProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/android/calendar/ReminderProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/android/calendar/ReminderProxy;

    return-object v1
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->status:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lti/modules/titanium/android/calendar/EventProxy;->visibility:I

    return v0
.end method

.method public setExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 441
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-boolean v2, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    if-nez v2, :cond_1

    .line 445
    iput-boolean v9, p0, Lti/modules/titanium/android/calendar/EventProxy;->hasExtendedProperties:Z

    .line 447
    :cond_1
    const-string v2, "TiEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set extended property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/EventProxy;->getExtendedPropertiesUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, "extPropsUri":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v10

    const-string v3, "name = ? AND event_id = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 461
    .local v7, "results":Landroid/database/Cursor;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v8, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v8, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v2, "value"

    invoke-virtual {v8, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 465
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 467
    if-ne v6, v9, :cond_2

    .line 469
    const-string v2, "name = ? and event_id = ?"

    new-array v3, v11, [Ljava/lang/String;

    aput-object p1, v3, v10

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    :cond_2
    const-string v2, "event_id"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method
