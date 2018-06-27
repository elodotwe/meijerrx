.class public Lti/modules/titanium/ui/widget/picker/TiUINativePicker;
.super Lti/modules/titanium/ui/widget/picker/TiUIPicker;
.source "TiUINativePicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUINativePicker"


# instance fields
.field private firstSelectedFired:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 93
    :try_start_0
    const-string v3, "layout.titanium_ui_spinner"

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 100
    .local v2, "spinnerId":I
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 102
    .local v1, "spinner":Landroid/widget/Spinner;
    new-instance v3, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;

    invoke-direct {v3, p0, p1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$1;-><init>(Lti/modules/titanium/ui/widget/picker/TiUINativePicker;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 112
    new-instance v3, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$2;

    invoke-direct {v3, p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$2;-><init>(Lti/modules/titanium/ui/widget/picker/TiUINativePicker;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->setNativeView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 128
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->preselectRows()V

    .line 130
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 131
    .end local v1    # "spinner":Landroid/widget/Spinner;
    .end local v2    # "spinnerId":I
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const-string v3, "TiUINativePicker"

    const-string v4, "XML resources could not be found!!!"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private preselectRows()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getPickerProxy()Lti/modules/titanium/ui/PickerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lti/modules/titanium/ui/PickerProxy;->getPreselectedRows()Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    .local v1, "preselectedRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v3, Landroid/widget/Spinner;

    .line 140
    .local v3, "spinner":Landroid/widget/Spinner;
    if-eqz v3, :cond_0

    .line 142
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 144
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 145
    .local v2, "rowIndex":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 143
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->selectRow(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 151
    .end local v0    # "i":I
    .end local v2    # "rowIndex":Ljava/lang/Integer;
    :catchall_0
    move-exception v4

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    throw v4

    .line 151
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    goto :goto_0
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 264
    return-void
.end method

.method protected fireSelectionChange(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    check-cast v0, Lti/modules/titanium/ui/PickerProxy;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/ui/PickerProxy;->fireSelectionChange(II)V

    .line 301
    return-void
.end method

.method public getSelectedRowIndex(I)I
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v0, "TiUINativePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to get selected row from out-of-bounds columnIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, -0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public onColumnAdded(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 273
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 276
    :cond_0
    return-void
.end method

.method public onColumnModelChanged(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 287
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 290
    :cond_0
    return-void
.end method

.method public onColumnRemoved(I)V
    .locals 1
    .param p1, "oldColumnIndex"    # I

    .prologue
    .line 280
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 283
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "itemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    if-nez v1, :cond_1

    .line 243
    const/4 v1, 0x1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->firstSelectedFired:Z

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->fireSelectionChange(II)V

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 251
    .local v0, "p":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 252
    check-cast v0, Landroid/view/View;

    .end local v0    # "p":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onRowChanged(II)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I

    .prologue
    .line 294
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->batchModelChange:Z

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->refreshNativeView()V

    .line 297
    :cond_0
    return-void
.end method

.method public openPicker()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    .line 177
    .local v0, "view":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 178
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 306
    const-string v2, "font"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    .line 308
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;

    .line 309
    .local v0, "adapter":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    invoke-virtual {p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-virtual {v0, v2}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->setFontProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 310
    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->notifyDataSetChanged()V

    .line 314
    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lti/modules/titanium/ui/widget/picker/TiUIPicker;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method protected refreshNativeView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 194
    const/4 v7, 0x1

    iput-boolean v7, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 195
    iget-object v5, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v5, Landroid/widget/Spinner;

    .line 196
    .local v5, "spinner":Landroid/widget/Spinner;
    if-nez v5, :cond_0

    .line 233
    :goto_0
    return-void

    .line 200
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getSelectedRowIndex(I)I

    move-result v2

    .line 204
    .local v2, "rememberSelectedRow":I
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->getPickerProxy()Lti/modules/titanium/ui/PickerProxy;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lti/modules/titanium/ui/PickerProxy;->getFirstColumn(Z)Lti/modules/titanium/ui/PickerColumnProxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 205
    .local v1, "column":Lti/modules/titanium/ui/PickerColumnProxy;
    if-nez v1, :cond_1

    .line 230
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 208
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lti/modules/titanium/ui/PickerColumnProxy;->getChildren()[Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    .line 209
    .local v3, "rowArray":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    if-eqz v3, :cond_2

    array-length v7, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_3

    .line 230
    :cond_2
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 212
    :cond_3
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v4, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    new-instance v0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x1090008

    invoke-direct {v0, v7, v8, v4}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .local v0, "adapter":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    iget-object v7, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v7}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v7

    invoke-virtual {v0, v7}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->setFontProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 221
    const v7, 0x1090009

    invoke-virtual {v0, v7}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->setDropDownViewResource(I)V

    .line 222
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 223
    if-ltz v2, :cond_4

    .line 224
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v2, v8}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->selectRow(IIZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_4
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 227
    .end local v0    # "adapter":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    .end local v1    # "column":Lti/modules/titanium/ui/PickerColumnProxy;
    .end local v2    # "rememberSelectedRow":I
    .end local v3    # "rowArray":[Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .end local v4    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/appcelerator/titanium/proxy/TiViewProxy;>;"
    :catch_0
    move-exception v6

    .line 228
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "TiUINativePicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to refresh native spinner control: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 230
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    iput-boolean v10, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->suppressChangeEvent:Z

    .line 231
    invoke-virtual {v5, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    throw v7
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 269
    return-void
.end method

.method public selectRow(IIZ)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    const-string v2, "TiUINativePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only one column is supported. Ignoring request to set selected row of column "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->nativeView:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    .line 165
    .local v1, "view":Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 166
    .local v0, "rowCount":I
    if-ltz p2, :cond_1

    if-lt p2, v0, :cond_2

    .line 167
    :cond_1
    const-string v2, "TiUINativePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring request to select out-of-bounds row index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0
.end method
