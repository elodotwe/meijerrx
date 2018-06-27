.class public Lti/modules/titanium/ui/PickerProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;


# static fields
.field public static final DEFAULT_VISIBLE_ITEMS_COUNT:I = 0x5

.field private static final MSG_ADD:I = 0x523

.field private static final MSG_FIRE_COL_CHANGE:I = 0x525

.field private static final MSG_FIRE_ROW_CHANGE:I = 0x526

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_FORCE_LAYOUT:I = 0x527

.field private static final MSG_REMOVE:I = 0x524

.field private static final MSG_SELECT_ROW:I = 0x521

.field private static final MSG_SET_COLUMNS:I = 0x522

.field private static final TAG:Ljava/lang/String; = "PickerProxy"


# instance fields
.field private preselectedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private useSpinner:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 65
    iput-boolean v2, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->defaultValues:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "calendarViewShown"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 75
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;-><init>()V

    .line 76
    return-void
.end method

.method private addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 2
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 269
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 270
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnAdded(I)V

    .line 273
    :cond_0
    return-void
.end method

.method private addColumns([Ljava/lang/Object;)V
    .locals 7
    .param p1, "columns"    # [Ljava/lang/Object;

    .prologue
    .line 257
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 258
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v4, :cond_0

    .line 259
    check-cast v3, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 257
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    const-string v4, "PickerProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected type not added to picker: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "useSpinner"    # Z

    .prologue
    .line 123
    if-eqz p2, :cond_0

    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    .line 124
    .local v0, "picker":Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :goto_0
    return-object v0

    .line 123
    .end local v0    # "picker":Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;

    invoke-direct {v0, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUITimeSpinner;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V

    return-object v0
.end method

.method private fireColumnModelChange(I)V
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 774
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 785
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x525

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 783
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private fireRowChange(II)V
    .locals 3
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 796
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-nez v1, :cond_0

    .line 808
    :goto_0
    return-void

    .line 799
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    goto :goto_0

    .line 802
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x526

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 804
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 805
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 806
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private handleAddObject(Ljava/lang/Object;)V
    .locals 6
    .param p1, "child"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 237
    instance-of v3, p1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 238
    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .line 239
    .local v0, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->addColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 253
    .end local v0    # "column":Lti/modules/titanium/ui/PickerColumnProxy;
    .end local p1    # "child":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local p1    # "child":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v3

    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1    # "child":Ljava/lang/Object;
    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 242
    .restart local p1    # "child":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "child":Ljava/lang/Object;
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    .line 244
    .local v2, "obj":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 245
    .local v1, "firstObj":Ljava/lang/Object;
    instance-of v3, v1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_3

    .line 246
    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v3

    invoke-virtual {v3, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    goto :goto_0

    .line 247
    :cond_3
    instance-of v3, v1, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v3, :cond_0

    .line 248
    invoke-direct {p0, v2}, Lti/modules/titanium/ui/PickerProxy;->addColumns([Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    .end local v1    # "firstObj":Ljava/lang/Object;
    .end local v2    # "obj":[Ljava/lang/Object;
    .restart local p1    # "child":Ljava/lang/Object;
    :cond_4
    const-string v3, "PickerProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type not added to picker: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleFireColumnModelChange(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 789
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnModelChanged(I)V

    .line 792
    :cond_0
    return-void
.end method

.method private handleFireRowChange(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 812
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onRowChanged(II)V

    .line 815
    :cond_0
    return-void
.end method

.method private handleForceRequestLayout()V
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->view:Lorg/appcelerator/titanium/view/TiUIView;

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUISpinner;->forceRequestLayout()V

    .line 892
    return-void
.end method

.method private handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, "index":I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onColumnRemoved(I)V

    .line 210
    :cond_1
    return-void
.end method

.method private handleSelectRow(IIZ)V
    .locals 2
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 460
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0, p1, p2, p3}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->selectRow(IIZ)V

    .line 464
    const-string v0, "selectionOpens"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->openPicker()V

    goto :goto_0
.end method

.method private handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 455
    const-string v0, "column"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "row"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "animated"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    .line 456
    return-void
.end method

.method private handleSetColumns(Ljava/lang/Object;)V
    .locals 13
    .param p1, "passedColumns"    # Ljava/lang/Object;

    .prologue
    const/4 v12, 0x0

    .line 412
    const/4 v4, 0x0

    .line 414
    .local v4, "dirty":Z
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_0

    .line 415
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 417
    :cond_0
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 418
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 419
    .local v3, "count":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 420
    iget-object v10, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v10}, Lti/modules/titanium/ui/PickerProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 421
    const/4 v4, 0x1

    .line 419
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 424
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 425
    .local v2, "columns":[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 426
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "passedColumns":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    .line 430
    :goto_1
    const/4 v10, 0x0

    aget-object v10, v2, v10

    instance-of v10, v10, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v10, :cond_6

    .line 431
    const-string v10, "PickerProxy"

    const-string v11, "Unexpected object type ignored for setColumns"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_3

    .line 442
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    .line 445
    :cond_3
    if-eqz v4, :cond_4

    .line 446
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v9

    check-cast v9, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    .line 447
    .local v9, "pickerView":Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    if-eqz v9, :cond_4

    .line 448
    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->onModelReplaced()V

    .line 451
    .end local v9    # "pickerView":Lti/modules/titanium/ui/widget/picker/TiUIPicker;
    :cond_4
    return-void

    .line 428
    .restart local p1    # "passedColumns":Ljava/lang/Object;
    :cond_5
    const/4 v10, 0x1

    :try_start_1
    new-array v2, v10, [Ljava/lang/Object;

    .end local v2    # "columns":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v2, v10

    .restart local v2    # "columns":[Ljava/lang/Object;
    goto :goto_1

    .line 433
    .end local p1    # "passedColumns":Ljava/lang/Object;
    :cond_6
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v7, :cond_2

    aget-object v8, v1, v6

    .line 434
    .local v8, "o":Ljava/lang/Object;
    instance-of v10, v8, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v10, :cond_7

    .line 435
    check-cast v8, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v8    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v8}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    const/4 v4, 0x1

    .line 433
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 441
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "columns":[Ljava/lang/Object;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catchall_0
    move-exception v10

    move-object v11, v10

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    instance-of v10, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v10, :cond_8

    .line 442
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v10

    check-cast v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    iput-boolean v12, v10, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->batchModelChange:Z

    :cond_8
    throw v11
.end method

.method private isPlainPicker()Z
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareColumn(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;

    .prologue
    .line 277
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    .line 278
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/PickerColumnProxy;->setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V

    .line 279
    return-void
.end method

.method public static trimDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 3
    .param p0, "inDate"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    .line 657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 658
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 659
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 660
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 661
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 662
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 663
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "child"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to add to date/time or countdown picker ignored."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 228
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->add(Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 95
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 96
    const-string v1, "PickerProxy"

    const-string v2, "Countdown timer not supported in Titanium for Android"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 99
    const-string v1, "PickerProxy"

    const-string v2, "Date+Time timer not supported in Titanium for Android"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_1
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 102
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    invoke-direct {p0, p1, v0}, Lti/modules/titanium/ui/PickerProxy;->createPlainPicker(Landroid/app/Activity;Z)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 104
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_3

    .line 105
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDateSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_3
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createDatePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    iget v1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    if-nez v1, :cond_6

    .line 110
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    if-eqz v0, :cond_5

    .line 111
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimeSpinner(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_5
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->createTimePicker(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_6
    const-string v1, "PickerProxy"

    const-string v2, "Unknown picker type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public fireSelectionChange(II)V
    .locals 9
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 819
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 820
    .local v2, "d":Lorg/appcelerator/kroll/KrollDict;
    const-string v7, "columnIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v7, "rowIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 823
    .local v0, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-virtual {p0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v4

    .line 824
    .local v4, "row":Lti/modules/titanium/ui/PickerRowProxy;
    const-string v7, "column"

    invoke-virtual {v2, v7, v0}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v7, "row"

    invoke-virtual {v2, v7, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnCount()I

    move-result v1

    .line 827
    .local v1, "columnCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 828
    .local v6, "selectedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 829
    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/PickerProxy;->getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v5

    .line 830
    .local v5, "rowInColumn":Lti/modules/titanium/ui/PickerRowProxy;
    if-eqz v5, :cond_0

    .line 831
    invoke-virtual {v5}, Lti/modules/titanium/ui/PickerRowProxy;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 833
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 836
    .end local v5    # "rowInColumn":Lti/modules/titanium/ui/PickerRowProxy;
    :cond_1
    const-string v7, "selectedValue"

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v7, "change"

    invoke-virtual {p0, v7, v2}, Lti/modules/titanium/ui/PickerProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 838
    return-void
.end method

.method public forceRequestLayout()V
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/widget/picker/TiUISpinner;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 881
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x527

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 897
    const-string v0, "Ti.UI.Picker"

    return-object v0
.end method

.method public getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 481
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 484
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 472
    .local v0, "columns":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-nez v0, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 475
    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method

.method public getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;

    .prologue
    .line 490
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 491
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getColumns()[Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2

    .prologue
    .line 385
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string v0, "PickerProxy"

    const-string v1, "Cannot get columns from date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 390
    const/4 v0, 0x0

    new-array v0, v0, [Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerColumnProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/PickerColumnProxy;

    goto :goto_0
.end method

.method public getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;
    .locals 2
    .param p1, "createIfMissing"    # Z

    .prologue
    .line 513
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 514
    .local v0, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 515
    new-instance v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0    # "column":Lti/modules/titanium/ui/PickerColumnProxy;
    invoke-direct {v0}, Lti/modules/titanium/ui/PickerColumnProxy;-><init>()V

    .line 516
    .restart local v0    # "column":Lti/modules/titanium/ui/PickerColumnProxy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->setCreateIfMissing(Z)V

    .line 517
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 519
    :cond_0
    return-object v0
.end method

.method public getPreselectedRows()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRow(II)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 4
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 499
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->getColumn(I)Lti/modules/titanium/ui/PickerColumnProxy;

    move-result-object v0

    .line 500
    .local v0, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-object v2

    .line 503
    :cond_1
    invoke-virtual {v0}, Lti/modules/titanium/ui/PickerColumnProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    .line 504
    .local v1, "rowArray":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge p2, v3, :cond_0

    aget-object v3, v1, p2

    instance-of v3, v3, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v3, :cond_0

    .line 507
    aget-object v2, v1, p2

    check-cast v2, Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getSelectedRow(I)Lti/modules/titanium/ui/PickerRowProxy;
    .locals 4
    .param p1, "columnIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    const-string v2, "PickerProxy"

    const-string v3, "Cannot get selected row in date/time or countdown picker."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "row":Lti/modules/titanium/ui/PickerRowProxy;
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    instance-of v2, v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/picker/TiUIPicker;

    invoke-virtual {v2, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->getSelectedRowIndex(I)I

    move-result v1

    .line 375
    .local v1, "rowIndex":I
    if-ltz v1, :cond_0

    .line 376
    invoke-virtual {p0, p1, v1}, Lti/modules/titanium/ui/PickerProxy;->getRow(II)Lti/modules/titanium/ui/PickerRowProxy;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    return v0
.end method

.method public getUseSpinner()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 81
    const-string v0, "useSpinner"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "useSpinner"

    invoke-static {p1, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 84
    :cond_0
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 87
    :cond_1
    const-string v0, "columns"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const-string v0, "columns"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->setColumns(Ljava/lang/Object;)V

    .line 90
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 322
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 286
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 287
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(Lorg/appcelerator/kroll/KrollDict;)V

    .line 288
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 289
    goto :goto_0

    .line 292
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 293
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 295
    goto :goto_0

    .line 298
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 299
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleAddObject(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 301
    goto :goto_0

    .line 304
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 305
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 306
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 307
    goto :goto_0

    .line 310
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerProxy;->handleFireColumnModelChange(I)V

    move v1, v2

    .line 311
    goto :goto_0

    .line 314
    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v3}, Lti/modules/titanium/ui/PickerProxy;->handleFireRowChange(II)V

    move v1, v2

    .line 315
    goto :goto_0

    .line 318
    :pswitch_6
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->handleForceRequestLayout()V

    move v1, v2

    .line 319
    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x521
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "child"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 193
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleRemoveColumn(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x524

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;
    .param p2, "rowIndex"    # I

    .prologue
    .line 843
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 844
    return-void
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;
    .param p2, "rowIndex"    # I

    .prologue
    .line 861
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireRowChange(II)V

    .line 862
    return-void
.end method

.method public rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;
    .param p2, "oldRowIndex"    # I

    .prologue
    .line 849
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 850
    return-void
.end method

.method public rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V
    .locals 2
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;
    .param p2, "rowIndex"    # I

    .prologue
    .line 867
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 868
    .local v0, "columnIndex":I
    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/PickerProxy;->fireSelectionChange(II)V

    .line 869
    return-void
.end method

.method public rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V
    .locals 1
    .param p1, "column"    # Lti/modules/titanium/ui/PickerColumnProxy;

    .prologue
    .line 855
    iget-object v0, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lti/modules/titanium/ui/PickerProxy;->fireColumnModelChange(I)V

    .line 856
    return-void
.end method

.method public setColumns(Ljava/lang/Object;)V
    .locals 2
    .param p1, "passedColumns"    # Ljava/lang/Object;

    .prologue
    .line 399
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const-string v0, "PickerProxy"

    const-string v1, "Cannot set columns in date/time or countdown picker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_2

    .line 404
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerProxy;->handleSetColumns(Ljava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setSelectedRow(IIZ)V
    .locals 4
    .param p1, "column"    # I
    .param p2, "row"    # I
    .param p3, "animated"    # Z
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 328
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerProxy;->isPlainPicker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 329
    const-string v2, "PickerProxy"

    const-string v3, "Selecting row in date/time or countdown picker is not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    .line 333
    .local v1, "view":Lorg/appcelerator/titanium/view/TiUIView;
    if-nez v1, :cond_4

    .line 335
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    .line 338
    :cond_1
    :goto_1
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_2

    .line 339
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-lt v2, v3, :cond_3

    .line 342
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 344
    :cond_3
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->preselectedRows:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    invoke-direct {p0, p1, p2, p3}, Lti/modules/titanium/ui/PickerProxy;->handleSelectRow(IIZ)V

    goto :goto_0

    .line 353
    :cond_5
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 354
    .local v0, "dict":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "column"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "row"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "animated"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x521

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "PickerProxy"

    const-string v1, "Attempt to change picker type after view has been created."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot change the picker type after it has been rendered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iput p1, p0, Lti/modules/titanium/ui/PickerProxy;->type:I

    .line 183
    return-void
.end method

.method public setUseSpinner(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "PickerProxy"

    const-string v3, "Attempt to change useSpinner property after view has already been created. Ignoring."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void

    .line 158
    :cond_1
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerProxy;->useSpinner:Z

    .line 159
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 160
    iget-object v2, p0, Lti/modules/titanium/ui/PickerProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 161
    .local v0, "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    instance-of v2, v0, Lti/modules/titanium/ui/PickerColumnProxy;

    if-eqz v2, :cond_2

    .line 162
    check-cast v0, Lti/modules/titanium/ui/PickerColumnProxy;

    .end local v0    # "child":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->setUseSpinner(Z)V

    goto :goto_0
.end method

.method public showDatePickerDialog([Ljava/lang/Object;)V
    .locals 13
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 529
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v11, "settings":Ljava/util/HashMap;
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 531
    .local v8, "callbackCount":Ljava/util/concurrent/atomic/AtomicInteger;
    array-length v1, p1

    if-lez v1, :cond_0

    .line 532
    const/4 v1, 0x0

    aget-object v11, p1, v1

    .end local v11    # "settings":Ljava/util/HashMap;
    check-cast v11, Ljava/util/HashMap;

    .line 534
    .restart local v11    # "settings":Ljava/util/HashMap;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 535
    .local v6, "calendar":Ljava/util/Calendar;
    const-string v1, "value"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    const-string v1, "value"

    invoke-static {v11, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 541
    :cond_1
    const-string v1, "callback"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 542
    const-string v1, "callback"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 543
    .local v12, "typeTest":Ljava/lang/Object;
    instance-of v1, v12, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v1, :cond_a

    move-object v7, v12

    .line 544
    check-cast v7, Lorg/appcelerator/kroll/KrollFunction;

    .line 551
    .end local v12    # "typeTest":Ljava/lang/Object;
    .local v7, "callback":Lorg/appcelerator/kroll/KrollFunction;
    :goto_0
    const/4 v2, 0x0

    .line 552
    .local v2, "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    const/4 v9, 0x0

    .line 553
    .local v9, "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    if-eqz v7, :cond_2

    .line 554
    new-instance v2, Lti/modules/titanium/ui/PickerProxy$1;

    .end local v2    # "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-direct {v2, p0, v7, v8}, Lti/modules/titanium/ui/PickerProxy$1;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/kroll/KrollFunction;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 573
    .restart local v2    # "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    new-instance v9, Lti/modules/titanium/ui/PickerProxy$2;

    .end local v9    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    invoke-direct {v9, p0, v8, v7}, Lti/modules/titanium/ui/PickerProxy$2;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 600
    .restart local v9    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_c

    .line 602
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiDatePickerDialog;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lti/modules/titanium/ui/widget/picker/TiDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 617
    .local v0, "dialog":Landroid/app/DatePickerDialog;
    :goto_1
    const/4 v10, 0x0

    .line 618
    .local v10, "minMaxDate":Ljava/util/Date;
    const-string v1, "minDate"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 619
    const-string v1, "minDate"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "minMaxDate":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .line 623
    .restart local v10    # "minMaxDate":Ljava/util/Date;
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_4

    .line 624
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v10}, Lti/modules/titanium/ui/PickerProxy;->trimDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 626
    :cond_4
    const/4 v10, 0x0

    .line 627
    const-string v1, "maxDate"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 628
    const-string v1, "maxDate"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "minMaxDate":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .line 632
    .restart local v10    # "minMaxDate":Ljava/util/Date;
    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_6

    .line 633
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v10}, Lti/modules/titanium/ui/PickerProxy;->trimDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 636
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setCancelable(Z)V

    .line 637
    if-eqz v9, :cond_7

    .line 638
    invoke-virtual {v0, v9}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 640
    :cond_7
    const-string v1, "title"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 641
    const-string v1, "title"

    invoke-static {v11, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 643
    :cond_8
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 644
    const-string v1, "okButtonTitle"

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 645
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const-string v3, "okButtonTitle"

    invoke-static {v11, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 647
    :cond_9
    return-void

    .line 546
    .end local v0    # "dialog":Landroid/app/DatePickerDialog;
    .end local v2    # "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .end local v7    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    .end local v9    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v10    # "minMaxDate":Ljava/util/Date;
    .restart local v12    # "typeTest":Ljava/lang/Object;
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    goto/16 :goto_0

    .line 549
    .end local v7    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    .end local v12    # "typeTest":Ljava/lang/Object;
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    goto/16 :goto_0

    .line 609
    .restart local v2    # "dateSetListener":Landroid/app/DatePickerDialog$OnDateSetListener;
    .restart local v9    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    :cond_c
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .restart local v0    # "dialog":Landroid/app/DatePickerDialog;
    goto/16 :goto_1

    .line 620
    .restart local v10    # "minMaxDate":Ljava/util/Date;
    :cond_d
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "minDate"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 621
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "minDate"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "minMaxDate":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .restart local v10    # "minMaxDate":Ljava/util/Date;
    goto/16 :goto_2

    .line 629
    :cond_e
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "maxDate"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 630
    iget-object v1, p0, Lti/modules/titanium/ui/PickerProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v3, "maxDate"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "minMaxDate":Ljava/util/Date;
    check-cast v10, Ljava/util/Date;

    .restart local v10    # "minMaxDate":Ljava/util/Date;
    goto/16 :goto_3
.end method

.method public showTimePickerDialog([Ljava/lang/Object;)V
    .locals 16
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 672
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v14, "settings":Ljava/util/HashMap;
    const/4 v7, 0x0

    .line 674
    .local v7, "is24HourView":Z
    const/4 v13, 0x1

    .line 675
    .local v13, "minuteInterval":I
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 676
    .local v10, "callbackCount":Ljava/util/concurrent/atomic/AtomicInteger;
    move-object/from16 v0, p1

    array-length v2, v0

    if-lez v2, :cond_0

    .line 677
    const/4 v2, 0x0

    aget-object v14, p1, v2

    .end local v14    # "settings":Ljava/util/HashMap;
    check-cast v14, Ljava/util/HashMap;

    .line 679
    .restart local v14    # "settings":Ljava/util/HashMap;
    :cond_0
    const-string v2, "format24"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    const-string v2, "format24"

    invoke-static {v14, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v7

    .line 682
    :cond_1
    const-string v2, "minuteInterval"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 683
    const-string v2, "minuteInterval"

    invoke-static {v14, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v13

    .line 684
    const/4 v2, 0x1

    if-lt v13, v2, :cond_2

    const/16 v2, 0x3b

    if-le v13, v2, :cond_3

    .line 685
    :cond_2
    const/4 v13, 0x1

    .line 688
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 689
    .local v8, "calendar":Ljava/util/Calendar;
    const-string v2, "value"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 690
    const-string v2, "value"

    invoke-static {v14, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toDate(Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 694
    :cond_4
    const-string v2, "callback"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 695
    const-string v2, "callback"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 696
    .local v15, "typeTest":Ljava/lang/Object;
    instance-of v2, v15, Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v2, :cond_9

    move-object v9, v15

    .line 697
    check-cast v9, Lorg/appcelerator/kroll/KrollFunction;

    .line 704
    .end local v15    # "typeTest":Ljava/lang/Object;
    .local v9, "callback":Lorg/appcelerator/kroll/KrollFunction;
    :goto_0
    const/4 v4, 0x0

    .line 705
    .local v4, "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    const/4 v11, 0x0

    .line 706
    .local v11, "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    move v12, v13

    .line 707
    .local v12, "fMinuteInterval":I
    if-eqz v9, :cond_5

    .line 708
    new-instance v4, Lti/modules/titanium/ui/PickerProxy$3;

    .end local v4    # "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9, v10, v12}, Lti/modules/titanium/ui/PickerProxy$3;-><init>(Lti/modules/titanium/ui/PickerProxy;Lorg/appcelerator/kroll/KrollFunction;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    .line 726
    .restart local v4    # "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    new-instance v11, Lti/modules/titanium/ui/PickerProxy$4;

    .end local v11    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v9}, Lti/modules/titanium/ui/PickerProxy$4;-><init>(Lti/modules/titanium/ui/PickerProxy;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/appcelerator/kroll/KrollFunction;)V

    .line 746
    .restart local v11    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    :cond_5
    const/4 v2, 0x1

    if-eq v13, v2, :cond_b

    .line 747
    new-instance v1, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/PickerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x3

    const/16 v5, 0xb

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    div-int/2addr v6, v13

    invoke-direct/range {v1 .. v7}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 752
    .local v1, "dialog":Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;
    invoke-virtual {v1, v13}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->setMinuteInterval(I)V

    .line 759
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->setCancelable(Z)V

    .line 760
    if-eqz v11, :cond_6

    .line 761
    invoke-virtual {v1, v11}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 763
    :cond_6
    const-string v2, "title"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 764
    const-string v2, "title"

    invoke-static {v14, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 766
    :cond_7
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->show()V

    .line 767
    const-string v2, "okButtonTitle"

    invoke-virtual {v14, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 768
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "okButtonTitle"

    invoke-static {v14, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 770
    :cond_8
    return-void

    .line 699
    .end local v1    # "dialog":Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;
    .end local v4    # "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    .end local v9    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    .end local v11    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .end local v12    # "fMinuteInterval":I
    .restart local v15    # "typeTest":Ljava/lang/Object;
    :cond_9
    const/4 v9, 0x0

    .restart local v9    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 702
    .end local v9    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    .end local v15    # "typeTest":Ljava/lang/Object;
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "callback":Lorg/appcelerator/kroll/KrollFunction;
    goto :goto_0

    .line 754
    .restart local v4    # "timeSetListener":Landroid/app/TimePickerDialog$OnTimeSetListener;
    .restart local v11    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    .restart local v12    # "fMinuteInterval":I
    :cond_b
    new-instance v1, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/ui/PickerProxy;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .restart local v1    # "dialog":Lti/modules/titanium/ui/widget/picker/TiTimePickerDialog;
    goto :goto_1
.end method
