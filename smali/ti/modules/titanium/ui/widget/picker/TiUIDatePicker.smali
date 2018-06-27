.class public Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIDatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUIDatePicker"


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
    .line 39
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 6
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 44
    const-string v3, "TiUIDatePicker"

    const-string v4, "Creating a date picker"

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_1

    .line 50
    new-instance v2, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;

    invoke-direct {v2, p0, p2, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 76
    .local v2, "picker":Landroid/widget/DatePicker;
    :goto_0
    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setNativeView(Landroid/view/View;)V

    .line 77
    .end local v2    # "picker":Landroid/widget/DatePicker;
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    :try_start_0
    const-string v3, "layout.titanium_ui_date_picker_spinner"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    .local v0, "datePickerSpinner":I
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .restart local v2    # "picker":Landroid/widget/DatePicker;
    goto :goto_0

    .line 68
    .end local v0    # "datePickerSpinner":I
    .end local v2    # "picker":Landroid/widget/DatePicker;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const-string v3, "TiUIDatePicker"

    const-string v4, "XML resources could not be found!!!"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 9
    .param p1, "picker"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 158
    .local v4, "targetCalendar":Ljava/util/Calendar;
    invoke-virtual {v4, v8, p2}, Ljava/util/Calendar;->set(II)V

    .line 159
    const/4 v5, 0x2

    invoke-virtual {v4, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 160
    const/4 v5, 0x5

    invoke-virtual {v4, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 161
    const/16 v5, 0xb

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 162
    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 163
    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 164
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 166
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 168
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v8}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 170
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v8}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 175
    :cond_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 176
    .local v1, "newTime":Ljava/util/Date;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "oTime":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 179
    .local v3, "oldTime":Ljava/util/Date;
    instance-of v5, v2, Ljava/util/Date;

    if-eqz v5, :cond_2

    move-object v3, v2

    .line 180
    check-cast v3, Ljava/util/Date;

    .line 185
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_3
    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    if-nez v5, :cond_4

    .line 190
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 191
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v5, "value"

    invoke-virtual {v0, v5, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v5, "change"

    invoke-virtual {p0, v5, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 195
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_4
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v6, "value"

    invoke-virtual {v5, v6, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/16 v10, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 81
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "valueExistsInProxy":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    .line 87
    .local v4, "picker":Landroid/widget/DatePicker;
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    const-string v6, "value"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 89
    const/4 v5, 0x1

    .line 91
    :cond_0
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 93
    .local v3, "minDateCalendar":Ljava/util/Calendar;
    const-string v6, "minDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 94
    invoke-virtual {v3, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-virtual {v3, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-virtual {v3, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 97
    const/16 v6, 0xe

    invoke-virtual {v3, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 100
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 102
    .end local v3    # "minDateCalendar":Ljava/util/Calendar;
    :cond_1
    const-string v6, "calendarViewShown"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    const-string v6, "calendarViewShown"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setCalendarView(Z)V

    .line 105
    :cond_2
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 107
    .local v1, "maxDateCalendar":Ljava/util/Calendar;
    const-string v6, "maxDate"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-virtual {v1, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v1, v11, v9}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {v1, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 114
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 116
    .end local v1    # "maxDateCalendar":Ljava/util/Calendar;
    :cond_3
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 117
    const-string v6, "minuteInterval"

    invoke-virtual {p1, v6}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 118
    .local v2, "mi":I
    if-lt v2, v8, :cond_4

    const/16 v6, 0x1e

    if-gt v2, v6, :cond_4

    rem-int/lit8 v6, v2, 0x3c

    if-nez v6, :cond_4

    .line 119
    iput v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minuteInterval:I

    .line 122
    .end local v2    # "mi":I
    :cond_4
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 123
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 124
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 126
    if-nez v5, :cond_5

    .line 127
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v7, "value"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_5
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    if-eqz v6, :cond_6

    .line 132
    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v6

    if-gtz v6, :cond_6

    .line 133
    const-string v6, "TiUIDatePicker"

    const-string v7, "maxDate is less or equal minDate, ignoring both settings."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->minDate:Ljava/util/Date;

    .line 135
    const/4 v6, 0x0

    iput-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->maxDate:Ljava/util/Date;

    .line 138
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
    .line 144
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 146
    check-cast v0, Ljava/util/Date;

    .line 147
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(J)V

    .line 149
    .end local v0    # "date":Ljava/util/Date;
    :cond_0
    const-string v1, "calendarViewShown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setCalendarView(Z)V

    .line 152
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 153
    return-void
.end method

.method public setCalendarView(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 217
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;

    .line 218
    .local v0, "picker":Landroid/widget/DatePicker;
    invoke-virtual {v0, p1}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 220
    .end local v0    # "picker":Landroid/widget/DatePicker;
    :cond_0
    return-void
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->setValue(JZ)V

    .line 201
    return-void
.end method

.method public setValue(JZ)V
    .locals 5
    .param p1, "value"    # J
    .param p3, "suppressEvent"    # Z

    .prologue
    .line 205
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    .line 206
    .local v1, "picker":Landroid/widget/DatePicker;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 211
    const/4 v2, 0x0

    iput-boolean v2, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;->suppressChangeEvent:Z

    .line 212
    return-void
.end method
