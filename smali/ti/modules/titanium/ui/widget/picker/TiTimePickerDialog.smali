.class public Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "TiTimePickerDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiTimePickerDialog"


# instance fields
.field private TIME_PICKER_INTERVAL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 33
    invoke-direct/range {p0 .. p6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    .line 25
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 13

    .prologue
    const/16 v12, 0x3c

    const/4 v9, 0x1

    .line 59
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onAttachedToWindow()V

    .line 60
    iget v8, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    if-eq v8, v9, :cond_1

    .line 62
    :try_start_0
    const-string v8, "com.android.internal.R$id"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    .local v0, "classForid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "timePicker"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 65
    .local v7, "timePickerField":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TimePicker;

    .line 67
    .local v6, "timePicker":Landroid/widget/TimePicker;
    const-string v8, "minute"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 69
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 71
    .local v5, "mMinuteSpinner":Landroid/widget/NumberPicker;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 72
    const/16 v8, 0x3c

    iget v9, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    div-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v1, "displayedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v12, :cond_0

    .line 75
    const-string v8, "%02d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget v8, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    add-int/2addr v4, v8

    goto :goto_0

    .line 77
    :cond_0
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "classForid":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "displayedValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "i":I
    .end local v5    # "mMinuteSpinner":Landroid/widget/NumberPicker;
    .end local v6    # "timePicker":Landroid/widget/TimePicker;
    .end local v7    # "timePickerField":Ljava/lang/reflect/Field;
    :cond_1
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "TiTimePickerDialog"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 44
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 45
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public setMinuteInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 37
    iput p1, p0, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->TIME_PICKER_INTERVAL:I

    .line 38
    return-void
.end method
