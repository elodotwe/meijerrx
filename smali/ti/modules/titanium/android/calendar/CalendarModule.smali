.class public Lti/modules/titanium/android/calendar/CalendarModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "CalendarModule.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field public static final METHOD_ALERT:I = 0x1

.field public static final METHOD_DEFAULT:I = 0x0

.field public static final METHOD_EMAIL:I = 0x2

.field public static final METHOD_SMS:I = 0x3

.field public static final STATE_DISMISSED:I = 0x2

.field public static final STATE_FIRED:I = 0x1

.field public static final STATE_SCHEDULED:I = 0x0

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_CONFIRMED:I = 0x1

.field public static final STATUS_TENTATIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CalendarModule"

.field public static final VISIBILITY_CONFIDENTIAL:I = 0x1

.field public static final VISIBILITY_DEFAULT:I = 0x0

.field public static final VISIBILITY_PRIVATE:I = 0x2

.field public static final VISIBILITY_PUBLIC:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 55
    const-string v0, "CalendarModule"

    const-string v1, "The Titanium.Android.Calendar module is deprecated. Use Titanium.Calendar instead."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "context"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 60
    invoke-direct {p0}, Lti/modules/titanium/android/calendar/CalendarModule;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public getAllAlerts()[Lti/modules/titanium/android/calendar/AlertProxy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-static {v1, v1, v1}, Lti/modules/titanium/android/calendar/AlertProxy;->queryAlerts(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 127
    .local v0, "alerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/AlertProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/android/calendar/AlertProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/android/calendar/AlertProxy;

    return-object v1
.end method

.method public getAllCalendars()[Lti/modules/titanium/android/calendar/CalendarProxy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {v1, v1}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 88
    .local v0, "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/android/calendar/CalendarProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/android/calendar/CalendarProxy;

    return-object v1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "Ti.Android.Calendar"

    return-object v0
.end method

.method public getCalendarById(I)Lti/modules/titanium/android/calendar/CalendarProxy;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 114
    const-string v1, "Calendars._id = ?"

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

    invoke-static {v1, v2}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/android/calendar/CalendarProxy;

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectableCalendars()[Lti/modules/titanium/android/calendar/CalendarProxy;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 96
    const-string v1, "Calendars.visible = ?"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 109
    .local v0, "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/android/calendar/CalendarProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lti/modules/titanium/android/calendar/CalendarProxy;

    return-object v1

    .line 100
    .end local v0    # "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 101
    const-string v1, "Calendars.selected = ?"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    goto :goto_0

    .line 106
    .end local v0    # "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    :cond_1
    const-string v1, "Calendars.selected = ? AND Calendars.hidden = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "0"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lti/modules/titanium/android/calendar/CalendarProxy;->queryCalendars(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lti/modules/titanium/android/calendar/CalendarProxy;>;"
    goto :goto_0
.end method

.method public hasCalendarPermissions()Z
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lti/modules/titanium/android/calendar/CalendarProxy;->hasCalendarPermissions()Z

    move-result v0

    return v0
.end method

.method public requestCalendarPermissions(Lorg/appcelerator/kroll/KrollFunction;)V
    .locals 4
    .param p1, "permissionCallback"    # Lorg/appcelerator/kroll/KrollFunction;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/CalendarModule;->hasCalendarPermissions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->oldCalendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Lti/modules/titanium/android/calendar/CalendarModule;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v1

    sput-object v1, Lorg/appcelerator/titanium/TiBaseActivity;->oldCalendarCallbackContext:Lorg/appcelerator/kroll/KrollObject;

    .line 78
    :cond_1
    sput-object p1, Lorg/appcelerator/titanium/TiBaseActivity;->oldCalendarPermissionCallback:Lorg/appcelerator/kroll/KrollFunction;

    .line 80
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "currentActivity":Landroid/app/Activity;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
