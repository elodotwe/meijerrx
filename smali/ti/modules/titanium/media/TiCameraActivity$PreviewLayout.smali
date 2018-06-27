.class Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;
.super Landroid/widget/FrameLayout;
.source "TiCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/media/TiCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewLayout"
.end annotation


# instance fields
.field private aspectRatio:D

.field private runAfterMeasure:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    .line 83
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 104
    .local v1, "previewWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 107
    .local v0, "previewHeight":I
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$100()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lti/modules/titanium/media/TiCameraActivity;->access$200(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Lti/modules/titanium/media/TiCameraActivity;->access$002(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    .line 108
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$000()Landroid/hardware/Camera$Size;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 109
    if-le v1, v0, :cond_2

    .line 110
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$000()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v4, v3

    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$000()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    .line 115
    :cond_0
    :goto_0
    int-to-double v4, v0

    int-to-double v6, v1

    iget-wide v8, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    div-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 116
    int-to-double v4, v1

    iget-wide v6, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    div-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v0, v4

    .line 122
    :goto_1
    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 126
    iget-object v3, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->runAfterMeasure:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 127
    iget-object v2, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->runAfterMeasure:Ljava/lang/Runnable;

    .line 128
    .local v2, "run":Ljava/lang/Runnable;
    const/4 v3, 0x0

    iput-object v3, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->runAfterMeasure:Ljava/lang/Runnable;

    .line 129
    invoke-virtual {p0, v2}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->post(Ljava/lang/Runnable;)Z

    .line 131
    .end local v2    # "run":Ljava/lang/Runnable;
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$000()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v3

    invoke-static {}, Lti/modules/titanium/media/TiCameraActivity;->access$000()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    iput-wide v4, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    goto :goto_0

    .line 119
    :cond_3
    int-to-double v4, v0

    iget-wide v6, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->aspectRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v4, v10

    double-to-int v1, v4

    goto :goto_1
.end method

.method protected prepareNewPreview(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    iput-object p1, p0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->runAfterMeasure:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout$1;-><init>(Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;)V

    invoke-virtual {p0, v0}, Lti/modules/titanium/media/TiCameraActivity$PreviewLayout;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method
