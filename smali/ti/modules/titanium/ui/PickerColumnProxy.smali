.class public Lti/modules/titanium/ui/PickerColumnProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "PickerColumnProxy.java"

# interfaces
.implements Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;
    }
.end annotation


# static fields
.field private static final MSG_ADD:I = 0x520

.field private static final MSG_ADD_ARRAY:I = 0x523

.field private static final MSG_FIRST_ID:I = 0x4bc

.field private static final MSG_REMOVE:I = 0x521

.field private static final MSG_SET_ROWS:I = 0x522

.field private static final TAG:Ljava/lang/String; = "PickerColumnProxy"


# instance fields
.field private columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

.field private createIfMissing:Z

.field private suppressListenerEvents:Z

.field private useSpinner:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 35
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 36
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 41
    iput-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->createIfMissing:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 51
    invoke-direct {p0}, Lti/modules/titanium/ui/PickerColumnProxy;-><init>()V

    .line 52
    return-void
.end method

.method private handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "o"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 135
    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    invoke-virtual {v1, p0}, Lti/modules/titanium/ui/PickerRowProxy;->setRowListener(Lti/modules/titanium/ui/PickerRowProxy$PickerRowListener;)V

    move-object v1, p1

    .line 136
    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    invoke-super {p0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 137
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "index":I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowAdded(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 142
    .end local v0    # "index":I
    :cond_2
    const-string v1, "PickerColumnProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add() unsupported argument type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleAddRowArray([Ljava/lang/Object;)V
    .locals 7
    .param p1, "o"    # [Ljava/lang/Object;

    .prologue
    .line 119
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 121
    .local v3, "oChild":Ljava/lang/Object;
    instance-of v4, v3, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v4, :cond_0

    .line 122
    check-cast v3, Lti/modules/titanium/ui/PickerRowProxy;

    .end local v3    # "oChild":Ljava/lang/Object;
    invoke-direct {p0, v3}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 119
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .restart local v3    # "oChild":Ljava/lang/Object;
    :cond_0
    const-string v4, "PickerColumnProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add() unsupported argument type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v3    # "oChild":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "o"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 160
    if-nez p1, :cond_1

    .line 170
    .end local p1    # "o":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local p1    # "o":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_1
    instance-of v1, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 163
    .local v0, "index":I
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1    # "o":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 164
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowRemoved(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    goto :goto_0

    .line 168
    .end local v0    # "index":I
    .restart local p1    # "o":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    const-string v1, "PickerColumnProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove() unsupported argment type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetRows([Ljava/lang/Object;)V
    .locals 4
    .param p1, "rows"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 226
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 227
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 229
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 228
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 232
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    .line 236
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v2, p0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowsReplaced(Lti/modules/titanium/ui/PickerColumnProxy;)V

    .line 239
    :cond_1
    return-void

    .line 234
    :catchall_0
    move-exception v2

    iput-boolean v3, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    throw v2
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "o"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 110
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x520

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addRow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "row"    # Ljava/lang/Object;

    .prologue
    .line 175
    instance-of v0, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1    # "row":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->add(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 180
    :goto_0
    return-void

    .line 178
    .restart local p1    # "row":Ljava/lang/Object;
    :cond_0
    const-string v0, "PickerColumnProxy"

    const-string v1, "Unable to add the row. Invalid type for row."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected addRows([Ljava/lang/Object;)V
    .locals 2
    .param p1, "rows"    # [Ljava/lang/Object;

    .prologue
    .line 184
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRowArray([Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x523

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 253
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/picker/TiUIPickerColumn;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    const-string v0, "Ti.UI.PickerColumn"

    return-object v0
.end method

.method public getCreateIfMissing()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->createIfMissing:Z

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRows()[Lti/modules/titanium/ui/PickerRowProxy;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/PickerRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getSelectedRow()Lti/modules/titanium/ui/PickerRowProxy;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    instance-of v1, v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    if-nez v1, :cond_0

    move-object v1, v2

    .line 292
    :goto_0
    return-object v1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/picker/TiUISpinnerColumn;->getSelectedRowIndex()I

    move-result v0

    .line 289
    .local v0, "rowIndex":I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 290
    goto :goto_0

    .line 292
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/PickerRowProxy;

    goto :goto_0
.end method

.method public getThisColumnIndex()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0, p0}, Lti/modules/titanium/ui/PickerProxy;->getColumnIndex(Lti/modules/titanium/ui/PickerColumnProxy;)I

    move-result v0

    return v0
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 98
    const-string v2, "rows"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "rows"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    .local v1, "rowsAtCreation":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "rowsAtCreation":Ljava/lang/Object;
    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 102
    .local v0, "rowsArray":[Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy;->addRows([Ljava/lang/Object;)V

    .line 105
    .end local v0    # "rowsArray":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handleMessage(Landroid/os/Message;)Z

    move-result v1

    :goto_0
    return v1

    .line 67
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 68
    .local v0, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 69
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 74
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleAddRowArray([Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 76
    goto :goto_0

    .line 80
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 81
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 82
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 83
    goto :goto_0

    .line 86
    .end local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 87
    .restart local v0    # "result":Lorg/appcelerator/kroll/common/AsyncResult;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-direct {p0, v1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    move v1, v2

    .line 89
    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x520
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onItemSelected(I)V
    .locals 1
    .param p1, "rowIndex"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v0, p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowSelected(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 281
    :cond_0
    return-void
.end method

.method public parentShouldRequestLayout()V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    instance-of v0, v0, Lti/modules/titanium/ui/PickerProxy;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/PickerProxy;->forceRequestLayout()V

    .line 306
    :cond_0
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 2
    .param p1, "o"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 150
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleRemoveRow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x521

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeRow(Ljava/lang/Object;)V
    .locals 2
    .param p1, "row"    # Ljava/lang/Object;

    .prologue
    .line 195
    instance-of v0, p1, Lti/modules/titanium/ui/PickerRowProxy;

    if-eqz v0, :cond_0

    .line 196
    check-cast p1, Lti/modules/titanium/ui/PickerRowProxy;

    .end local p1    # "row":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->remove(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 200
    :goto_0
    return-void

    .line 198
    .restart local p1    # "row":Ljava/lang/Object;
    :cond_0
    const-string v0, "PickerColumnProxy"

    const-string v1, "Unable to remove the row. Invalid type for row."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rowChanged(Lti/modules/titanium/ui/PickerRowProxy;)V
    .locals 2
    .param p1, "row"    # Lti/modules/titanium/ui/PickerRowProxy;

    .prologue
    .line 269
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->suppressListenerEvents:Z

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 271
    .local v0, "index":I
    iget-object v1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    invoke-interface {v1, p0, v0}, Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;->rowChanged(Lti/modules/titanium/ui/PickerColumnProxy;I)V

    .line 274
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public setColumnListener(Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;)V
    .locals 0
    .param p1, "listener"    # Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .prologue
    .line 56
    iput-object p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->columnListener:Lti/modules/titanium/ui/PickerColumnProxy$PickerColumnListener;

    .line 57
    return-void
.end method

.method public setCreateIfMissing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 310
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->createIfMissing:Z

    .line 311
    return-void
.end method

.method public setRows([Ljava/lang/Object;)V
    .locals 2
    .param p1, "rows"    # [Ljava/lang/Object;

    .prologue
    .line 214
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/PickerColumnProxy;->handleSetRows([Ljava/lang/Object;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/PickerColumnProxy;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x522

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMainMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setUseSpinner(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lti/modules/titanium/ui/PickerColumnProxy;->useSpinner:Z

    .line 61
    return-void
.end method
