.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;
.super Landroid/view/animation/Animation;
.source "TiAnimationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiColorAnimation"
.end annotation


# instance fields
.field duration:I

.field reversing:Z

.field transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromColor"    # I
    .param p3, "toColor"    # I

    .prologue
    const/4 v4, 0x0

    .line 1148
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 1144
    iput-boolean v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->reversing:Z

    .line 1145
    iput v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->duration:I

    .line 1149
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->view:Landroid/view/View;

    .line 1151
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1152
    .local v0, "fromColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1153
    .local v1, "toColorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 1156
    new-instance v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation$1;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;)V

    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiColorAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1188
    return-void
.end method
