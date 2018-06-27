.class public Lti/modules/titanium/android/calendar/CalendarProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "CalendarProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_DATE_RANGE:J = 0xe95a28c00L

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field protected hidden:Z

.field protected id:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected selected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "selected"    # Z
    .param p4, "hidden"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 42
    iput-object p1, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->id:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->name:Ljava/lang/String;

    .line 44
    iput-boolean p3, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->selected:Z

    .line 45
    iput-boolean p4, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->hidden:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "selected"    # Z
    .param p5, "hidden"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p2, p3, p4, p5}, Lti/modules/titanium/android/calendar/CalendarProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 51
    return-void
.end method

.method public static getBaseCalendarUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 56
    const-string v0, "content://com.android.calendar"

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://calendar"

    goto :goto_0
.end method

.method public static hasCalendarPermissions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 73
    .local v0, "currentActivity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return v1

    .line 66
    .end local v0    # "currentActivity":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .restart local v0    # "currentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :cond_2
    const-string v1, "Calendar"

    const-string v2, "Calendar permissions are missing"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
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
            "Lti/modules/titanium/android/calendar/CalendarProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v6, "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    return-object v6

    .line 82
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 85
    .local v7, "cursor":Landroid/database/Cursor;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/calendars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "visible"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    :goto_0
    if-eqz v7, :cond_0

    .line 101
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "id":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v11, 0x1

    .line 106
    .local v11, "selected":Z
    :goto_2
    const/4 v8, 0x0

    .line 107
    .local v8, "hidden":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    .line 108
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v8, 0x1

    .line 111
    :cond_2
    :goto_3
    new-instance v1, Lti/modules/titanium/android/calendar/CalendarProxy;

    invoke-direct {v1, v9, v10, v11, v8}, Lti/modules/titanium/android/calendar/CalendarProxy;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v8    # "hidden":Z
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "selected":Z
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/calendars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "selected"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 94
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/calendars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "selected"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "hidden"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto/16 :goto_0

    .line 104
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 108
    .restart local v8    # "hidden":Z
    .restart local v11    # "selected":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method public static queryCalendars(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
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
            "Lti/modules/titanium/android/calendar/CalendarProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {p1, p2}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createEvent(Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/EventProxy;
    .locals 1
    .param p1, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lti/modules/titanium/android/calendar/EventProxy;->createEvent(Lti/modules/titanium/android/calendar/CalendarProxy;Lorg/appcelerator/kroll/KrollDict;)Lti/modules/titanium/android/calendar/EventProxy;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "Ti.Android.Calendar.Calendar"

    return-object v0
.end method

.method public getEventById(I)Lti/modules/titanium/android/calendar/EventProxy;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 194
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lti/modules/titanium/android/calendar/EventProxy;->queryEvents(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 196
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/android/calendar/EventProxy;

    .line 197
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEventsBetweenDates(Ljava/util/Date;Ljava/util/Date;)[Lti/modules/titanium/android/calendar/EventProxy;
    .locals 10
    .param p1, "date1"    # Ljava/util/Date;
    .param p2, "date2"    # Ljava/util/Date;

    .prologue
    const-wide v8, 0xe95a28c00L

    .line 176
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 177
    .local v4, "start":J
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 178
    .local v0, "end":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    :goto_0
    sub-long v6, v0, v4

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 182
    add-long v6, v4, v8

    invoke-static {v4, v5, v6, v7, p0}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    add-long/2addr v4, v8

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {v4, v5, v0, v1, p0}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lti/modules/titanium/android/calendar/EventProxy;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lti/modules/titanium/android/calendar/EventProxy;

    return-object v3
.end method

.method public getEventsInDate(III)[Lti/modules/titanium/android/calendar/EventProxy;
    .locals 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 159
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 160
    .local v0, "beginningOfDay":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 161
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 163
    .local v1, "endOfDay":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 164
    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 166
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 167
    .local v8, "date1":J
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 169
    .local v10, "date2":J
    invoke-static {v8, v9, v10, v11, p0}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v12

    .line 170
    .local v12, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lti/modules/titanium/android/calendar/EventProxy;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lti/modules/titanium/android/calendar/EventProxy;

    return-object v2
.end method

.method public getEventsInMonth(II)[Lti/modules/titanium/android/calendar/EventProxy;
    .locals 16
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 140
    .local v14, "firstOfTheMonth":Ljava/util/Calendar;
    invoke-virtual {v14}, Ljava/util/Calendar;->clear()V

    .line 141
    const/4 v3, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 143
    .local v2, "lastOfTheMonth":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 144
    const/4 v5, 0x1

    const/16 v6, 0x17

    const/16 v7, 0x3b

    const/16 v8, 0x3b

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 146
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v15

    .line 147
    .local v15, "lastDay":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v15}, Ljava/util/Calendar;->set(II)V

    .line 149
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 150
    .local v10, "date1":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 152
    .local v12, "date2":J
    move-object/from16 v0, p0

    invoke-static {v10, v11, v12, v13, v0}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v9

    .line 153
    .local v9, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lti/modules/titanium/android/calendar/EventProxy;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lti/modules/titanium/android/calendar/EventProxy;

    return-object v3
.end method

.method public getEventsInYear(I)[Lti/modules/titanium/android/calendar/EventProxy;
    .locals 8
    .param p1, "year"    # I

    .prologue
    .line 126
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 127
    .local v5, "jan1":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/util/Calendar;->clear()V

    .line 128
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 130
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 131
    .local v0, "date1":J
    const-wide v6, 0x7528ad000L

    add-long v2, v0, v6

    .line 132
    .local v2, "date2":J
    invoke-static {v0, v1, v2, v3, p0}, Lti/modules/titanium/android/calendar/EventProxy;->queryEventsBetweenDates(JJLti/modules/titanium/android/calendar/CalendarProxy;)Ljava/util/ArrayList;

    move-result-object v4

    .line 133
    .local v4, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/EventProxy;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lti/modules/titanium/android/calendar/EventProxy;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lti/modules/titanium/android/calendar/EventProxy;

    return-object v6
.end method

.method public getHidden()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->hidden:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lti/modules/titanium/android/calendar/CalendarProxy;->selected:Z

    return v0
.end method
