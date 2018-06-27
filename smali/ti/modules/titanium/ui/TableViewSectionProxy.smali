.class public Lti/modules/titanium/ui/TableViewSectionProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "TableViewSectionProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TableViewSectionProxy"


# instance fields
.field protected rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lti/modules/titanium/ui/TableViewRowProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 39
    invoke-direct {p0}, Lti/modules/titanium/ui/TableViewSectionProxy;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public add(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 76
    :cond_0
    return-void
.end method

.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "Ti.UI.TableViewSection"

    return-object v0
.end method

.method public getRowCount()D
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public getRows()[Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lti/modules/titanium/ui/TableViewRowProxy;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lti/modules/titanium/ui/TableViewRowProxy;

    return-object v0
.end method

.method public insertRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 102
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    const-string v0, "TableViewSectionProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index out of range. Unable to insert row at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseViews()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->releaseViews()V

    .line 151
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 153
    .local v1, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1}, Lti/modules/titanium/ui/TableViewRowProxy;->releaseViews()V

    goto :goto_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public remove(Lti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 1
    .param p1, "rowProxy"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p1}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 86
    :cond_0
    return-void
.end method

.method public removeRowAt(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 113
    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 114
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 115
    .local v0, "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 122
    .end local v0    # "rowProxy":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v1, "TableViewSectionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Unable to remove row at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rowAtIndex(I)Lti/modules/titanium/ui/TableViewRowProxy;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "result":Lti/modules/titanium/ui/TableViewRowProxy;
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 93
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lti/modules/titanium/ui/TableViewRowProxy;
    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 96
    .restart local v0    # "result":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setActivity(Landroid/app/Activity;)V

    .line 51
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 53
    .local v1, "row":Lti/modules/titanium/ui/TableViewRowProxy;
    invoke-virtual {v1, p1}, Lti/modules/titanium/ui/TableViewRowProxy;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "row":Lti/modules/titanium/ui/TableViewRowProxy;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "[object TableViewSectionProxy]"

    return-object v0
.end method

.method public updateRowAt(ILti/modules/titanium/ui/TableViewRowProxy;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "row"    # Lti/modules/titanium/ui/TableViewRowProxy;

    .prologue
    .line 127
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/TableViewRowProxy;

    .line 128
    .local v0, "oldRow":Lti/modules/titanium/ui/TableViewRowProxy;
    if-ne p2, v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 132
    iget-object v1, p0, Lti/modules/titanium/ui/TableViewSectionProxy;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p2, p0}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 134
    invoke-virtual {v0}, Lti/modules/titanium/ui/TableViewRowProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/TableViewRowProxy;->setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v1, "TableViewSectionProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index out of range. Unable to update row at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
