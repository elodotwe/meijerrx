.class Lti/modules/titanium/ui/widget/TiImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TiImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiImageView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiImageView;

.field final synthetic val$me:Lti/modules/titanium/ui/widget/TiImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiImageView;Lti/modules/titanium/ui/widget/TiImageView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiImageView;->access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "retValue":Z
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$000(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ZoomControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ZoomControls;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$100(Lti/modules/titanium/ui/widget/TiImageView;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 109
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1, p3, p4}, Lti/modules/titanium/ui/widget/TiImageView;->access$200(Lti/modules/titanium/ui/widget/TiImageView;FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$300(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$500(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiImageView;->access$400(Lti/modules/titanium/ui/widget/TiImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 112
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiImageView;->requestLayout()V

    .line 113
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiImageView;->access$600(Lti/modules/titanium/ui/widget/TiImageView;)V

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiImageView;

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiImageView$1;->val$me:Lti/modules/titanium/ui/widget/TiImageView;

    invoke-virtual {v0, v1}, Lti/modules/titanium/ui/widget/TiImageView;->onClick(Landroid/view/View;)V

    .line 124
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
