.class public Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUITimeSpinner.java"

# interfaces
.implements Lkankan/wheel/widget/WheelView$OnItemSelectedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUITimeSpinner"


# instance fields
.field private amPmWheel:Lkankan/wheel/widget/WheelView;

.field private calendar:Ljava/util/Calendar;

.field private hoursWheel:Lkankan/wheel/widget/WheelView;

.field private ignoreItemSelection:Z

.field private minutesWheel:Lkankan/wheel/widget/WheelView;

.field private suppressChangeEvent:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 36
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 37
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 40
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 49
    invoke-direct {p0, p2}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->createNativeView(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method private createNativeView(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x0

    .line 73
    const/4 v7, 0x1

    .line 74
    .local v7, "format24":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "format24"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "format24"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v7

    .line 78
    :cond_0
    const/4 v5, 0x1

    .line 79
    .local v5, "minuteInterval":I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "minuteInterval"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "minuteInterval"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v6

    .line 81
    .local v6, "dirtyMinuteInterval":I
    if-lez v6, :cond_4

    const/16 v2, 0x1e

    if-gt v6, v2, :cond_4

    const/16 v2, 0x3c

    rem-int/2addr v2, v6

    if-nez v2, :cond_4

    .line 82
    move v5, v6

    .line 89
    .end local v6    # "dirtyMinuteInterval":I
    :cond_1
    :goto_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "formatter":Ljava/text/DecimalFormat;
    invoke-direct {p0, v7}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->makeHoursAdapter(Z)Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    move-result-object v8

    .line 91
    .local v8, "hours":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    new-instance v0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    const/16 v2, 0x3b

    const/4 v4, 0x6

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;II)V

    .line 92
    .local v0, "minutes":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    new-instance v2, Lkankan/wheel/widget/WheelView;

    invoke-direct {v2, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    .line 93
    new-instance v2, Lkankan/wheel/widget/WheelView;

    invoke-direct {v2, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    .line 94
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 95
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v4

    invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 96
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v8}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 97
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v0}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 98
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 99
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 101
    iput-object v11, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    .line 103
    if-nez v7, :cond_2

    .line 104
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->makeAmPmWheel(Landroid/content/Context;I)Lkankan/wheel/widget/WheelView;

    move-result-object v2

    iput-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    .line 107
    :cond_2
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    .local v9, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    if-nez v7, :cond_3

    .line 112
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    :cond_3
    invoke-virtual {p0, v9}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setNativeView(Landroid/view/View;)V

    .line 116
    return-void

    .line 84
    .end local v0    # "minutes":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    .end local v3    # "formatter":Ljava/text/DecimalFormat;
    .end local v8    # "hours":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    .end local v9    # "layout":Landroid/widget/LinearLayout;
    .restart local v6    # "dirtyMinuteInterval":I
    :cond_4
    const-string v2, "TiUITimeSpinner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clearing invalid minuteInterval property value of "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "minuteInterval"

    invoke-virtual {v2, v4, v11}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private makeAmPmWheel(Landroid/content/Context;I)Lkankan/wheel/widget/WheelView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textSize"    # I

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "amPmRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v2, " am "

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v2, " pm "

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v1, Lkankan/wheel/widget/WheelView;

    invoke-direct {v1, p1}, Lkankan/wheel/widget/WheelView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "view":Lkankan/wheel/widget/WheelView;
    new-instance v2, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;

    invoke-direct {v2, v0}, Lti/modules/titanium/ui/widget/picker/TextWheelAdapter;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 67
    invoke-virtual {v1, p2}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 68
    invoke-virtual {v1, p0}, Lkankan/wheel/widget/WheelView;->setItemSelectedListener(Lkankan/wheel/widget/WheelView$OnItemSelectedListener;)V

    .line 69
    return-object v1
.end method

.method private makeHoursAdapter(Z)Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    .locals 5
    .param p1, "format24"    # Z

    .prologue
    .line 53
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "formatter":Ljava/text/DecimalFormat;
    new-instance v3, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0x17

    :goto_1
    const/4 v4, 0x6

    invoke-direct {v3, v2, v1, v0, v4}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;-><init>(IILjava/text/NumberFormat;I)V

    return-object v3

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    goto :goto_1
.end method

.method private setFontProperties()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "fontSize":Ljava/lang/Float;
    const/4 v2, 0x0

    .line 145
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->getFontProperties(Lorg/appcelerator/kroll/KrollDict;)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "fontProperties":[Ljava/lang/String;
    aget-object v4, v0, v5

    if-eqz v4, :cond_0

    .line 148
    aget-object v4, v0, v5

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->getSize(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 151
    :cond_0
    aget-object v4, v0, v6

    if-eqz v4, :cond_1

    .line 152
    aget-object v4, v0, v6

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 154
    :cond_1
    const/4 v3, 0x0

    .line 155
    .local v3, "typefaceWeight":Ljava/lang/Integer;
    aget-object v4, v0, v7

    if-eqz v4, :cond_2

    .line 156
    aget-object v4, v0, v7

    aget-object v5, v0, v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 160
    :cond_2
    if-eqz v2, :cond_3

    .line 161
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v2}, Lkankan/wheel/widget/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 162
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v2}, Lkankan/wheel/widget/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 163
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v4, :cond_3

    .line 164
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v2}, Lkankan/wheel/widget/WheelView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    :cond_3
    if-eqz v3, :cond_4

    .line 168
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTypefaceWeight(I)V

    .line 169
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTypefaceWeight(I)V

    .line 170
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v4, :cond_4

    .line 171
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTypefaceWeight(I)V

    .line 174
    :cond_4
    if-eqz v1, :cond_5

    .line 175
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 176
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 177
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v4, :cond_5

    .line 178
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lkankan/wheel/widget/WheelView;->setTextSize(I)V

    .line 181
    :cond_5
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 182
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 183
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    if-eqz v4, :cond_6

    .line 184
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->invalidate()V

    .line 186
    :cond_6
    return-void
.end method


# virtual methods
.method public onItemSelected(Lkankan/wheel/widget/WheelView;I)V
    .locals 9
    .param p1, "view"    # Lkankan/wheel/widget/WheelView;
    .param p2, "index"    # I

    .prologue
    const/16 v8, 0xb

    .line 268
    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    if-eqz v4, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const/4 v2, 0x1

    .line 272
    .local v2, "format24":Z
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "format24"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "format24"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v2

    .line 275
    :cond_2
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v7, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v7}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v7

    invoke-virtual {v4, v7}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getValue(I)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 276
    if-nez v2, :cond_5

    .line 277
    const/4 v3, 0x0

    .line 278
    .local v3, "hourOfDay":I
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 279
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_3

    .line 280
    const/4 v3, 0x0

    .line 287
    :goto_1
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4, v8, v3}, Ljava/util/Calendar;->set(II)V

    .line 291
    .end local v3    # "hourOfDay":I
    :goto_2
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 292
    .local v1, "dateval":Ljava/util/Date;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "value"

    invoke-virtual {v4, v5, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    iget-boolean v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    if-nez v4, :cond_0

    .line 294
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 295
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v4, "value"

    invoke-virtual {v0, v4, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v4, "change"

    invoke-virtual {p0, v4, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0

    .line 282
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "dateval":Ljava/util/Date;
    .restart local v3    # "hourOfDay":I
    :cond_3
    const/16 v3, 0xc

    goto :goto_1

    .line 285
    :cond_4
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v5

    add-int v3, v4, v5

    goto :goto_1

    .line 289
    .end local v3    # "hourOfDay":I
    :cond_5
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_2
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "valueExistsInProxy":Z
    const-string v1, "font"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setFontProperties()V

    .line 128
    :cond_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 130
    const/4 v0, 0x1

    .line 133
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {p0, v2, v3, v1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(JZ)V

    .line 135
    if-nez v0, :cond_2

    .line 136
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :cond_2
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 192
    const-string v5, "value"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, p3

    .line 193
    check-cast v1, Ljava/util/Date;

    .line 194
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(J)V

    .line 224
    .end local v1    # "date":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 225
    return-void

    .line 195
    :cond_1
    const-string v5, "format24"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 197
    .local v3, "is24HourFormat":Z
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 198
    iput-boolean v8, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 199
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-direct {p0, v3}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->makeHoursAdapter(Z)Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    .line 200
    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->nativeView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    .line 201
    .local v4, "vg":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_3

    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 202
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 207
    :cond_2
    :goto_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v8}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(JZ)V

    .line 208
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 209
    iput-boolean v9, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    goto :goto_0

    .line 203
    :cond_3
    if-nez v3, :cond_2

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 204
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v6}, Lkankan/wheel/widget/WheelView;->getTextSize()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->makeAmPmWheel(Landroid/content/Context;I)Lkankan/wheel/widget/WheelView;

    move-result-object v5

    iput-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    .line 205
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 210
    .end local v3    # "is24HourFormat":Z
    .end local v4    # "vg":Landroid/widget/LinearLayout;
    :cond_4
    const-string v5, "minuteInterval"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 211
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 212
    .local v2, "interval":I
    if-lez v2, :cond_5

    const/16 v5, 0x1e

    if-gt v2, v5, :cond_5

    const/16 v5, 0x3c

    rem-int/2addr v5, v2

    if-nez v5, :cond_5

    .line 213
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    .line 214
    .local v0, "adapter":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->setStepValue(I)V

    .line 215
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v5, v0}, Lkankan/wheel/widget/WheelView;->setAdapter(Lkankan/wheel/widget/WheelAdapter;)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;
    :cond_5
    const-string v5, "TiUITimeSpinner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring illegal minuteInterval value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v5, "minuteInterval"

    invoke-virtual {p4, v5, p2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    .end local v2    # "interval":I
    :cond_6
    const-string v5, "font"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 222
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setFontProperties()V

    goto/16 :goto_0
.end method

.method public setValue(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->setValue(JZ)V

    .line 230
    return-void
.end method

.method public setValue(JZ)V
    .locals 7
    .param p1, "value"    # J
    .param p3, "suppressEvent"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v4, 0xb

    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, "format24":Z
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "format24"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v3, "format24"

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 238
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 240
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 241
    iput-boolean v5, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 243
    if-nez v0, :cond_3

    .line 244
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 245
    .local v1, "hour":I
    if-nez v1, :cond_1

    .line 246
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v4}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 250
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 251
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v6}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 259
    .end local v1    # "hour":I
    :goto_1
    iput-boolean p3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 260
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->ignoreItemSelection:Z

    .line 261
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->minutesWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2}, Lkankan/wheel/widget/WheelView;->getAdapter()Lkankan/wheel/widget/WheelAdapter;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lti/modules/titanium/ui/widget/picker/FormatNumericWheelAdapter;->getIndex(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    .line 262
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->suppressChangeEvent:Z

    .line 263
    return-void

    .line 248
    .restart local v1    # "hour":I
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->amPmWheel:Lkankan/wheel/widget/WheelView;

    invoke-virtual {v2, v5}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_1

    .line 256
    .end local v1    # "hour":I
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->hoursWheel:Lkankan/wheel/widget/WheelView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lkankan/wheel/widget/WheelView;->setCurrentItem(I)V

    goto :goto_1
.end method
