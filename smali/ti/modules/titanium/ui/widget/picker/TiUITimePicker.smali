.class public Lti/modules/titanium/ui/widget/picker/TiUITimePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUITimePicker"


# instance fields
.field protected maxDate:Ljava/util/Date;

.field protected minDate:Ljava/util/Date;

.field protected minuteInterval:I

.field private suppressChangeEvent:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 6
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 43
    const-string v3, "TiUITimePicker"

    const-string v4, "Creating a time picker"

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    .line 49
    new-instance v1, Lti/modules/titanium/ui/widget/picker/TiUITimePicker$1;

    invoke-direct {v1, p0, p2, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUITimePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 75
    .local v1, "picker":Landroid/widget/TimePicker;
    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 77
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setNativeView(Landroid/view/View;)V

    .line 78
    .end local v1    # "picker":Landroid/widget/TimePicker;
    :cond_0
    :goto_1
    return-void

    .line 66
    :cond_1
    :try_start_0
    const-string v3, "layout.titanium_ui_time_picker_spinner"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 73
    .local v2, "timePickerSpinner":I
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .restart local v1    # "picker":Landroid/widget/TimePicker;
    goto :goto_0

    .line 67
    .end local v1    # "picker":Landroid/widget/TimePicker;
    .end local v2    # "timePickerSpinner":I
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const-string v3, "TiUITimePicker"

    const-string v4, "XML resources could not be found!!!"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 5
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 165
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 166
    iget-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    if-nez v2, :cond_0

    .line 167
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 168
    .local v1, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v2, "change"

    invoke-virtual {p0, v2, v1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 172
    .end local v1    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 10
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 82
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "valueExistsInProxy":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    .line 88
    .local v3, "picker":Landroid/widget/TimePicker;
    const-string v5, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    const-string v5, "value"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 90
    const/4 v4, 0x1

    .line 92
    :cond_0
    const-string v5, "minDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const-string v5, "minDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    iput-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    .line 95
    :cond_1
    const-string v5, "maxDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    const-string v5, "maxDate"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    iput-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    .line 98
    :cond_2
    const-string v5, "minuteInterval"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    const-string v5, "minuteInterval"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    .local v2, "mi":I
    if-lt v2, v8, :cond_3

    const/16 v5, 0x1e

    if-gt v2, v5, :cond_3

    rem-int/lit8 v5, v2, 0x3c

    if-nez v5, :cond_3

    .line 101
    iput v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minuteInterval:I

    .line 106
    .end local v2    # "mi":I
    :cond_3
    const/4 v1, 0x0

    .line 107
    .local v1, "is24HourFormat":Z
    const-string v5, "format24"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    const-string v5, "format24"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 110
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v8}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(JZ)V

    .line 114
    if-nez v4, :cond_5

    .line 115
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    :cond_5
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    if-eqz v5, :cond_6

    .line 120
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gtz v5, :cond_6

    .line 121
    const-string v5, "TiUITimePicker"

    const-string v6, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->minDate:Ljava/util/Date;

    .line 123
    iput-object v9, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->maxDate:Ljava/util/Date;

    .line 126
    :cond_6
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 132
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p3

    .line 133
    check-cast v0, Ljava/util/Date;

    .line 134
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(J)V

    .line 138
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 139
    return-void

    .line 135
    :cond_1
    const-string v1, "format24"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->setValue(JZ)V

    .line 144
    return-void
.end method

.method public setValue(JZ)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "suppressEvent"    # Z

    .prologue
    .line 148
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TimePicker;

    .line 149
    .local v1, "picker":Landroid/widget/TimePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 154
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 155
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 156
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 157
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;->suppressChangeEvent:Z

    .line 158
    return-void
.end method
