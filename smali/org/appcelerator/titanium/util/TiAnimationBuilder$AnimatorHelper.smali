.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatorHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 0

    .prologue
    .line 1196
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private invalidateParentView()V
    .locals 2

    .prologue
    .line 1302
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1303
    .local v0, "vp":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1304
    check-cast v0, Landroid/view/View;

    .end local v0    # "vp":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1306
    :cond_0
    return-void
.end method


# virtual methods
.method public setBottom(I)V
    .locals 6
    .param p1, "b"    # I

    .prologue
    .line 1266
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1267
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1268
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1269
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x5

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 1270
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1272
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1273
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1274
    return-void
.end method

.method public setCenterX(I)V
    .locals 6
    .param p1, "b"    # I

    .prologue
    .line 1278
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1279
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1280
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1281
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x1

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    .line 1282
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterX:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1284
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1285
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1286
    return-void
.end method

.method public setCenterY(I)V
    .locals 6
    .param p1, "b"    # I

    .prologue
    .line 1290
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1291
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1292
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1293
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x4

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    .line 1294
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionCenterY:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1296
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1297
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1298
    return-void
.end method

.method public setHeight(I)V
    .locals 6
    .param p1, "h"    # I

    .prologue
    .line 1215
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1216
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1218
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1219
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1220
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x7

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 1221
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1224
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1225
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1226
    return-void
.end method

.method public setLeft(I)V
    .locals 6
    .param p1, "l"    # I

    .prologue
    const/4 v3, 0x0

    .line 1230
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1231
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1232
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1233
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 1234
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1236
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1237
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1238
    return-void
.end method

.method public setRight(I)V
    .locals 6
    .param p1, "r"    # I

    .prologue
    .line 1242
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1243
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1244
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1245
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x2

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 1246
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1248
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1249
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1250
    return-void
.end method

.method public setTop(I)V
    .locals 6
    .param p1, "t"    # I

    .prologue
    .line 1254
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1255
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1256
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1257
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x3

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 1258
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1260
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 1261
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1262
    return-void
.end method

.method public setWidth(I)V
    .locals 6
    .param p1, "w"    # I

    .prologue
    .line 1200
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1201
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1203
    instance-of v2, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1204
    check-cast v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1205
    .local v1, "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    new-instance v2, Lorg/appcelerator/titanium/TiDimension;

    int-to-double v4, p1

    const/4 v3, 0x6

    invoke-direct {v2, v4, v5, v3}, Lorg/appcelerator/titanium/TiDimension;-><init>(DI)V

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 1206
    iget-object v2, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/TiDimension;->setUnits(I)V

    .line 1209
    .end local v1    # "tiParams":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v2, v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1210
    invoke-direct {p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorHelper;->invalidateParentView()V

    .line 1211
    return-void
.end method
