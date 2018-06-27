.class public Lti/modules/titanium/android/calendar/ReminderProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "ReminderProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_ALERT:I = 0x1

.field public static final METHOD_DEFAULT:I = 0x0

.field public static final METHOD_EMAIL:I = 0x2

.field public static final METHOD_SMS:I = 0x3


# instance fields
.field protected id:Ljava/lang/String;

.field protected method:I

.field protected minutes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 42
    invoke-direct {p0}, Lti/modules/titanium/android/calendar/ReminderProxy;-><init>()V

    .line 43
    return-void
.end method

.method public static createReminder(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/android/calendar/EventProxy;II)Lti/modules/titanium/android/calendar/ReminderProxy;
    .locals 1
    .param p0, "context"    # Lorg/appcelerator/titanium/TiContext;
    .param p1, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .param p2, "minutes"    # I
    .param p3, "method"    # I

    .prologue
    .line 102
    invoke-static {p1, p2, p3}, Lti/modules/titanium/android/calendar/ReminderProxy;->createReminder(Lti/modules/titanium/android/calendar/EventProxy;II)Lti/modules/titanium/android/calendar/ReminderProxy;

    move-result-object v0

    return-object v0
.end method

.method public static createReminder(Lti/modules/titanium/android/calendar/EventProxy;II)Lti/modules/titanium/android/calendar/ReminderProxy;
    .locals 8
    .param p0, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .param p1, "minutes"    # I
    .param p2, "method"    # I

    .prologue
    .line 80
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    invoke-virtual {v5}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v2, "eventValues":Landroid/content/ContentValues;
    const-string v5, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v5, "method"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v5, "event_id"

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lti/modules/titanium/android/calendar/ReminderProxy;->getRemindersUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 88
    .local v4, "reminderUri":Landroid/net/Uri;
    const-string v5, "TiEvents"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created reminder with uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", minutes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", method: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "eventId":Ljava/lang/String;
    new-instance v3, Lti/modules/titanium/android/calendar/ReminderProxy;

    invoke-direct {v3}, Lti/modules/titanium/android/calendar/ReminderProxy;-><init>()V

    .line 93
    .local v3, "reminder":Lti/modules/titanium/android/calendar/ReminderProxy;
    iput-object v1, v3, Lti/modules/titanium/android/calendar/ReminderProxy;->id:Ljava/lang/String;

    .line 94
    iput p1, v3, Lti/modules/titanium/android/calendar/ReminderProxy;->minutes:I

    .line 95
    iput p2, v3, Lti/modules/titanium/android/calendar/ReminderProxy;->method:I

    .line 97
    return-object v3
.end method

.method public static getRemindersForEvent(Lorg/appcelerator/titanium/TiContext;Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;
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
            "Lti/modules/titanium/android/calendar/ReminderProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Lti/modules/titanium/android/calendar/ReminderProxy;->getRemindersForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getRemindersForEvent(Lti/modules/titanium/android/calendar/EventProxy;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "event"    # Lti/modules/titanium/android/calendar/EventProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti/modules/titanium/android/calendar/EventProxy;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/android/calendar/ReminderProxy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v8, "reminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/ReminderProxy;>;"
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lti/modules/titanium/android/calendar/ReminderProxy;->getRemindersUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "minutes"

    aput-object v3, v2, v10

    const-string v3, "method"

    aput-object v3, v2, v11

    const-string v3, "event_id = ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/EventProxy;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 59
    .local v7, "reminderCursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v6, Lti/modules/titanium/android/calendar/ReminderProxy;

    invoke-direct {v6}, Lti/modules/titanium/android/calendar/ReminderProxy;-><init>()V

    .line 61
    .local v6, "reminder":Lti/modules/titanium/android/calendar/ReminderProxy;
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Lti/modules/titanium/android/calendar/ReminderProxy;->id:Ljava/lang/String;

    .line 62
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v6, Lti/modules/titanium/android/calendar/ReminderProxy;->minutes:I

    .line 63
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v6, Lti/modules/titanium/android/calendar/ReminderProxy;->method:I

    .line 65
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v6    # "reminder":Lti/modules/titanium/android/calendar/ReminderProxy;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 70
    return-object v8
.end method

.method public static getRemindersUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->getBaseCalendarUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reminders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Ti.Android.Calendar.Reminder"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lti/modules/titanium/android/calendar/ReminderProxy;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lti/modules/titanium/android/calendar/ReminderProxy;->method:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lti/modules/titanium/android/calendar/ReminderProxy;->minutes:I

    return v0
.end method
