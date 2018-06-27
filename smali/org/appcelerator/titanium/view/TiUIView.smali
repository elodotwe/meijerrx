.class public abstract Lorg/appcelerator/titanium/view/TiUIView;
.super Ljava/lang/Object;
.source "TiUIView.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollProxyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static final HONEYCOMB_OR_GREATER:Z

.field private static final LAYER_TYPE_SOFTWARE:I = 0x1

.field private static final SCALE_THRESHOLD:F = 6.0f

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TiUIView"

.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static motionEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected additionalEventData:Lorg/appcelerator/kroll/KrollDict;

.field protected animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

.field private animatedAlpha:F

.field private animatedRotationDegrees:F

.field private animatedScaleValues:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private bLayoutPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

.field private borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation
.end field

.field protected detector:Landroid/view/GestureDetector;

.field private didScale:Z

.field protected lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

.field protected layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

.field private mSetLayerTypeMethod:Ljava/lang/reflect/Method;

.field protected nativeView:Landroid/view/View;

.field protected parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field protected proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

.field private touchView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private visibility:I

.field private zIndexChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    .line 1327
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    .line 1330
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const-string v3, "touchstart"

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1331
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const-string v2, "touchend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1332
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "touchmove"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1333
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "touchcancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1334
    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    .line 113
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 119
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->lastUpEvent:Lorg/appcelerator/kroll/KrollDict;

    .line 123
    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 125
    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    .line 127
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    .line 130
    iput-boolean v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    .line 133
    iput v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    .line 135
    iput-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->detector:Landroid/view/GestureDetector;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->bLayoutPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 151
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 152
    new-instance v0, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lorg/appcelerator/titanium/view/TiUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->bLayoutPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lorg/appcelerator/titanium/view/TiUIView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    return v0
.end method

.method static synthetic access$102(Lorg/appcelerator/titanium/view/TiUIView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->didScale:Z

    return p1
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/appcelerator/titanium/view/TiUIView;->motionEvents:Landroid/util/SparseArray;

    return-object v0
.end method

.method private add(Lorg/appcelerator/titanium/view/TiUIView;I)V
    .locals 4
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "childIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 176
    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 180
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 182
    if-eq p2, v3, :cond_3

    .line 183
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 188
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    :cond_1
    if-ne p2, v3, :cond_4

    .line 192
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 200
    .end local v0    # "cv":Landroid/view/View;
    :cond_2
    return-void

    .line 185
    .restart local v0    # "cv":Landroid/view/View;
    .restart local v1    # "nv":Landroid/view/View;
    :cond_3
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private applyAccessibilityHidden()V
    .locals 2

    .prologue
    .line 1983
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v0, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "accessibilityHidden"

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private applyAccessibilityHidden(Ljava/lang/Object;)V
    .locals 2
    .param p1, "hiddenPropertyValue"    # Ljava/lang/Object;

    .prologue
    .line 1992
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 1996
    :cond_0
    const/4 v0, 0x0

    .line 1998
    .local v0, "importanceMode":I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1999
    const/4 v0, 0x2

    .line 2002
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private applyAccessibilityProperties()V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1975
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyContentDescription()V

    .line 1976
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden()V

    .line 1979
    :cond_0
    return-void
.end method

.method private applyContentDescription()V
    .locals 2

    .prologue
    .line 1909
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1912
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->composeContentDescription()Ljava/lang/String;

    move-result-object v0

    .line 1913
    .local v0, "contentDescription":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1914
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private applyCustomBackground()V
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 1010
    return-void
.end method

.method private applyCustomBackground(Z)V
    .locals 3
    .param p1, "reuseCurrentDrawable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1014
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1015
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v1, :cond_0

    .line 1016
    new-instance v1, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 1018
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1019
    .local v0, "currentDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1020
    if-eqz p1, :cond_2

    .line 1021
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    .end local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    :cond_1
    return-void

    .line 1024
    .restart local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1026
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 1027
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0    # "currentDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    goto :goto_0
.end method

.method private disableHWAcceleration()V
    .locals 7

    .prologue
    .line 1813
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v2, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    const-string v2, "TiUIView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling hardware acceleration for instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 1820
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1821
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-string v2, "setLayerType"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Paint;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1831
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1835
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->mSetLayerTypeMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 1836
    :catch_0
    move-exception v1

    .line 1837
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1822
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1823
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "TiUIView"

    const-string v3, "SecurityException trying to get View.setLayerType to disable hardware acceleration."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v1, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1

    .line 1825
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 1826
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "TiUIView"

    const-string v3, "NoSuchMethodException trying to get View.setLayerType to disable hardware acceleration."

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v1, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1

    .line 1838
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 1839
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1840
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 1841
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "TiUIView"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private doSetClickable(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1765
    if-nez p1, :cond_0

    .line 1769
    :goto_0
    return-void

    .line 1768
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private doSetClickable(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clickable"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1735
    if-nez p1, :cond_1

    .line 1753
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    if-nez p2, :cond_3

    .line 1741
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_2

    .line 1742
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1744
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1745
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1746
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    goto :goto_0

    .line 1747
    :cond_3
    instance-of v0, p1, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    .line 1750
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnClickListener(Landroid/view/View;)V

    .line 1751
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOnLongClickListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private doSetClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1757
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getTouchView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 1758
    return-void
.end method

.method private findChildIndex(Lorg/appcelerator/titanium/view/TiUIView;)I
    .locals 4
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 204
    const/4 v1, -0x1

    .line 205
    .local v1, "idxChild":I
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v2

    .line 209
    .local v2, "nv":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 210
    check-cast v2, Landroid/view/ViewGroup;

    .end local v2    # "nv":Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 215
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private getTouchView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 1730
    :goto_0
    return-object v0

    .line 1726
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 1727
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 1730
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 16
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 1163
    const-string v2, "backgroundImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "bg":Ljava/lang/String;
    const-string v2, "backgroundSelectedImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1165
    .local v4, "bgSelected":Ljava/lang/String;
    const-string v2, "backgroundFocusedImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1166
    .local v8, "bgFocused":Ljava/lang/String;
    const-string v2, "backgroundDisabledImage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1168
    .local v6, "bgDisabled":Ljava/lang/String;
    const-string v2, "backgroundColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, "bgColor":Ljava/lang/String;
    const-string v2, "backgroundSelectedColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1170
    .local v5, "bgSelectedColor":Ljava/lang/String;
    const-string v2, "backgroundFocusedColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1171
    .local v9, "bgFocusedColor":Ljava/lang/String;
    const-string v2, "backgroundDisabledColor"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1173
    .local v7, "bgDisabledColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1174
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    :cond_0
    if-eqz v4, :cond_1

    .line 1177
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1179
    :cond_1
    if-eqz v8, :cond_2

    .line 1180
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1182
    :cond_2
    if-eqz v6, :cond_3

    .line 1183
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1186
    :cond_3
    const/4 v10, 0x0

    .line 1187
    .local v10, "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    const-string v2, "backgroundGradient"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v14

    .line 1188
    .local v14, "gradientProperties":Lorg/appcelerator/kroll/KrollDict;
    if-eqz v14, :cond_4

    .line 1190
    :try_start_0
    new-instance v13, Lorg/appcelerator/titanium/view/TiGradientDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-direct {v13, v2, v14}, Lorg/appcelerator/titanium/view/TiGradientDrawable;-><init>(Landroid/view/View;Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1191
    .end local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .local v13, "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :try_start_1
    invoke-virtual {v13}, Lorg/appcelerator/titanium/view/TiGradientDrawable;->getGradientType()Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    move-result-object v2

    sget-object v15, Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;->RADIAL_GRADIENT:Lorg/appcelerator/titanium/view/TiGradientDrawable$GradientType;

    if-ne v2, v15, :cond_8

    .line 1193
    const-string v2, "TiUIView"

    const-string v15, "Android does not support radial gradients."

    invoke-static {v2, v15}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1194
    const/4 v10, 0x0

    .line 1202
    .end local v13    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :cond_4
    :goto_0
    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    if-nez v5, :cond_5

    if-nez v9, :cond_5

    if-nez v7, :cond_5

    if-eqz v10, :cond_7

    .line 1205
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v2, :cond_6

    .line 1206
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 1209
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v2, :cond_7

    .line 1210
    const-string v2, "backgroundRepeat"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v15}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static/range {v1 .. v10}, Lorg/appcelerator/titanium/util/TiUIHelper;->buildBackgroundDrawable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v11

    .line 1222
    .local v11, "bgDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v2, v11}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1225
    .end local v11    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    return-void

    .line 1197
    :catch_0
    move-exception v12

    .line 1198
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1197
    .end local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :catch_1
    move-exception v12

    move-object v10, v13

    .end local v13    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    goto :goto_1

    .end local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v13    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    :cond_8
    move-object v10, v13

    .end local v13    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    .restart local v10    # "gradientDrawable":Lorg/appcelerator/titanium/view/TiGradientDrawable;
    goto :goto_0
.end method

.method private handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x6

    .line 1301
    const-string v4, "borderColor"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1302
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    :goto_0
    invoke-virtual {v5, v4}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    .line 1303
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v5, "borderWidth"

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1304
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderWidth(F)V

    .line 1324
    :cond_0
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->postInvalidate()V

    .line 1325
    return-void

    .line 1302
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1306
    :cond_2
    const-string v4, "borderRadius"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1307
    const/4 v1, 0x0

    .line 1308
    .local v1, "radius":F
    invoke-static {p2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    .line 1309
    .local v2, "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v2, :cond_3

    .line 1310
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v4

    double-to-float v1, v4

    .line 1312
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_4

    sget-boolean v4, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v4, :cond_4

    .line 1313
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 1315
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setRadius(F)V

    goto :goto_1

    .line 1316
    .end local v1    # "radius":F
    .end local v2    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    :cond_5
    const-string v4, "borderWidth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1317
    const/4 v3, 0x0

    .line 1318
    .local v3, "width":F
    invoke-static {p2, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v0

    .line 1319
    .local v0, "bwidth":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v0, :cond_6

    .line 1320
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v4

    double-to-float v3, v4

    .line 1322
    :cond_6
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v4, v3}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderWidth(F)V

    goto :goto_1
.end method

.method private hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 421
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderRadius"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 428
    const-string v0, "backgroundSelectedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedColor"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 416
    const-string v0, "backgroundGradient"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasImage(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 403
    const-string v0, "backgroundImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundSelectedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundFocusedImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backgroundDisabledImage"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRepeat(Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 411
    const-string v0, "backgroundRepeat"

    invoke-virtual {p1, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V
    .locals 13
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;
    .param p2, "bgColor"    # Ljava/lang/Integer;

    .prologue
    const/4 v12, 0x6

    const/4 v10, -0x1

    .line 1229
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1231
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 1233
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v9, :cond_3

    .line 1234
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1235
    .local v2, "currentActivity":Landroid/app/Activity;
    if-nez v2, :cond_0

    .line 1236
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1238
    :cond_0
    new-instance v9, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-direct {v9, v2}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    .line 1241
    new-instance v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 1242
    .local v4, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput v10, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->height:I

    .line 1243
    iput v10, v4, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->width:I

    .line 1246
    const/4 v7, 0x0

    .line 1247
    .local v7, "savedParent":Landroid/view/ViewGroup;
    const/4 v1, -0x1

    .line 1248
    .local v1, "childIndex":I
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1249
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1250
    .local v3, "nativeParent":Landroid/view/ViewParent;
    instance-of v9, v3, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    move-object v7, v3

    .line 1251
    check-cast v7, Landroid/view/ViewGroup;

    .line 1252
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1253
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1256
    .end local v3    # "nativeParent":Landroid/view/ViewParent;
    :cond_1
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v9, v10, v4}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    if-eqz v7, :cond_2

    .line 1258
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v9, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    :cond_2
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setVisibility(I)V

    .line 1263
    .end local v1    # "childIndex":I
    .end local v2    # "currentActivity":Landroid/app/Activity;
    .end local v4    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v7    # "savedParent":Landroid/view/ViewGroup;
    :cond_3
    const-string v9, "borderRadius"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1264
    const/4 v5, 0x0

    .line 1265
    .local v5, "radius":F
    const-string v9, "borderRadius"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v6

    .line 1266
    .local v6, "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v6, :cond_4

    .line 1267
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v10

    double-to-float v5, v10

    .line 1269
    :cond_4
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-lez v9, :cond_5

    sget-boolean v9, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v9, :cond_5

    .line 1270
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->disableHWAcceleration()V

    .line 1272
    :cond_5
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {v9, v5}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setRadius(F)V

    .line 1274
    .end local v5    # "radius":F
    .end local v6    # "radiusDim":Lorg/appcelerator/titanium/TiDimension;
    :cond_6
    const-string v9, "borderColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "borderWidth"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1275
    :cond_7
    if-eqz p2, :cond_8

    .line 1276
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBgColor(I)V

    .line 1278
    :cond_8
    const-string v9, "borderColor"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1279
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    const-string v10, "borderColor"

    invoke-static {p1, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    .line 1285
    :cond_9
    :goto_0
    const-string v0, "1"

    .line 1286
    .local v0, "borderWidth":Ljava/lang/String;
    const-string v9, "borderWidth"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1287
    const-string v9, "borderWidth"

    invoke-virtual {p1, v9}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1290
    .end local v0    # "borderWidth":Ljava/lang/String;
    :cond_a
    invoke-static {v0, v12}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v8

    .line 1291
    .local v8, "width":Lorg/appcelerator/titanium/TiDimension;
    if-eqz v8, :cond_b

    .line 1292
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/titanium/TiDimension;->getPixels(Landroid/view/View;)D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setBorderWidth(F)V

    .line 1297
    .end local v8    # "width":Lorg/appcelerator/titanium/TiDimension;
    :cond_b
    return-void

    .line 1281
    :cond_c
    if-eqz p2, :cond_9

    .line 1282
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setColor(I)V

    goto :goto_0
.end method

.method private resetPostAnimationValues()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1902
    const/4 v0, 0x0

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 1903
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 1904
    const/4 v0, 0x1

    iput v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 1905
    return-void
.end method

.method private resetTranslationX()V
    .locals 2

    .prologue
    .line 630
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 633
    :cond_0
    return-void
.end method

.method private resetTranslationY()V
    .locals 2

    .prologue
    .line 641
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 644
    :cond_0
    return-void
.end method

.method private resolveImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1158
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v1, v0, p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1126
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    .line 1127
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiBorderWrapperView;->setVisibility(I)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1131
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    iget v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 1
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 161
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;I)V

    .line 162
    return-void
.end method

.method protected allowRegisterForKeyPress()Z
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x1

    return v0
.end method

.method protected allowRegisterForTouch()Z
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x1

    return v0
.end method

.method public animate()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 332
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v4

    .line 333
    .local v4, "outerView":Landroid/view/View;
    if-nez v4, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_2

    .line 342
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 343
    .local v1, "currentAnimation":Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v11

    if-nez v11, :cond_2

    .line 346
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 347
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 348
    iget-object v10, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v10, v9}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->handlePendingAnimation(Z)V

    goto :goto_0

    .line 354
    .end local v1    # "currentAnimation":Landroid/view/animation/Animation;
    :cond_2
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v11}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getPendingAnimation()Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    move-result-object v0

    .line 355
    .local v0, "builder":Lorg/appcelerator/titanium/util/TiAnimationBuilder;
    if-eqz v0, :cond_0

    .line 359
    iget-object v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v11, v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->clearAnimation(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V

    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "invalidateParent":Z
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 370
    .local v7, "viewParent":Landroid/view/ViewParent;
    iget v11, p0, Lorg/appcelerator/titanium/view/TiUIView;->visibility:I

    if-nez v11, :cond_4

    instance-of v11, v7, Landroid/view/View;

    if-eqz v11, :cond_4

    .line 371
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 372
    .local v8, "width":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 374
    .local v2, "height":I
    if-eqz v8, :cond_3

    if-nez v2, :cond_6

    .line 376
    :cond_3
    const/4 v3, 0x1

    .line 384
    .end local v2    # "height":I
    .end local v8    # "width":I
    :cond_4
    :goto_1
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 385
    const-string v9, "TiUIView"

    const-string v10, "starting animation"

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_5
    iget-object v9, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v9, v4}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->start(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)V

    .line 390
    if-eqz v3, :cond_0

    .line 391
    check-cast v7, Landroid/view/View;

    .end local v7    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v7}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 378
    .restart local v2    # "height":I
    .restart local v7    # "viewParent":Landroid/view/ViewParent;
    .restart local v8    # "width":I
    :cond_6
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v10, v10, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 379
    .local v6, "r":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 380
    .local v5, "p":Landroid/graphics/Point;
    invoke-interface {v7, v4, v6, v5}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v11

    if-nez v11, :cond_7

    move v3, v9

    :goto_2
    goto :goto_1

    :cond_7
    move v3, v10

    goto :goto_2
.end method

.method protected applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V
    .locals 14
    .param p1, "matrix"    # Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .prologue
    const/4 v9, 0x2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    .line 451
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-object p1, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 452
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    if-nez v6, :cond_0

    .line 453
    new-instance v6, Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {v6}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;-><init>()V

    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    .line 456
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v3

    .line 457
    .local v3, "outerView":Landroid/view/View;
    if-nez v3, :cond_1

    .line 489
    :goto_0
    return-void

    .line 461
    :cond_1
    if-nez p1, :cond_3

    move v0, v4

    .line 462
    .local v0, "clearTransform":Z
    :goto_1
    move-object v1, p1

    .line 464
    .local v1, "matrixApply":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 470
    new-instance v6, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-direct {v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>()V

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->rotate([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-result-object v6

    invoke-virtual {v6, v10, v11, v10, v11}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->translate(DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->scale([Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-result-object v1

    .line 474
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 475
    .local v2, "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "transform"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v5, "duration"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v4, v2}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->applyOptions(Ljava/util/HashMap;)V

    .line 482
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->isUsingPropertyAnimators()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 483
    invoke-virtual {p0, v3}, Lorg/appcelerator/titanium/view/TiUIView;->startTransformAfterLayout(Landroid/view/View;)V

    .line 485
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .end local v0    # "clearTransform":Z
    .end local v1    # "matrixApply":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .end local v2    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    move v0, v5

    .line 461
    goto :goto_1

    .line 487
    .restart local v0    # "clearTransform":Z
    .restart local v1    # "matrixApply":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .restart local v2    # "options":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4, v5, v3}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->start(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)V

    goto :goto_0
.end method

.method public blur()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1079
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$5;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$5;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 1089
    :cond_0
    return-void
.end method

.method protected clearOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1714
    return-void
.end method

.method protected composeContentDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1929
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-nez v6, :cond_0

    .line 1930
    const/4 v6, 0x0

    .line 1969
    :goto_0
    return-object v6

    .line 1933
    :cond_0
    const-string v4, "^.*\\p{Punct}\\s*$"

    .line 1934
    .local v4, "punctuationPattern":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1936
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v3

    .line 1938
    .local v3, "properties":Lorg/appcelerator/kroll/KrollDict;
    const-string v6, "accessibilityLabel"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1939
    .local v2, "label":Ljava/lang/String;
    const-string v6, "accessibilityHint"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1940
    .local v1, "hint":Ljava/lang/String;
    const-string v6, "accessibilityValue"

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1942
    .local v5, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1943
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1945
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1951
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1954
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1955
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 1961
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1963
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1964
    const-string v6, "^.*\\p{Punct}\\s*$"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1965
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1969
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method protected dictFromEvent(Landroid/view/MotionEvent;)Lorg/appcelerator/kroll/KrollDict;
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1338
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1339
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    const-string v1, "y"

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1341
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    return-object v0
.end method

.method protected dictFromEvent(Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;
    .locals 6
    .param p1, "dictToCopy"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const-wide/16 v4, 0x0

    .line 1346
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1347
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    const-string v1, "x"

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    :goto_0
    const-string v1, "y"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1353
    const-string v1, "y"

    const-string v2, "y"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :goto_1
    const-string v1, "source"

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    return-object v0

    .line 1350
    :cond_0
    const-string v1, "x"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1355
    :cond_1
    const-string v1, "y"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 1788
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    move-result v0

    return v0
.end method

.method public fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z
    .locals 1
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lorg/appcelerator/kroll/KrollDict;
    .param p3, "bubbles"    # Z

    .prologue
    .line 1792
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_1

    .line 1793
    new-instance p2, Lorg/appcelerator/kroll/KrollDict;

    .end local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {p2, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 1797
    .restart local p2    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0, p1, p2, p3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 1794
    :cond_1
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    invoke-virtual {p2, v0}, Lorg/appcelerator/kroll/KrollDict;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public focus()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1070
    :cond_0
    return-void
.end method

.method public forceLayoutNativeView(Z)V
    .locals 0
    .param p1, "informParent"    # Z

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    .line 548
    return-void
.end method

.method public getAdditionalEventData()Lorg/appcelerator/kroll/KrollDict;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    return-object v0
.end method

.method public getAnimatedAlpha()F
    .locals 1

    .prologue
    .line 1894
    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    return v0
.end method

.method public getAnimatedRotationDegrees()F
    .locals 1

    .prologue
    .line 1877
    iget v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    return v0
.end method

.method public getAnimatedScaleValues()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1851
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/titanium/view/TiUIView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1052
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getIMM()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    .line 1057
    const/4 v0, 0x0

    .line 1058
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/TiApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1059
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    return-object v0
.end method

.method public getLayoutParams()Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    return-object v0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    return-object v0
.end method

.method public getOuterView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    goto :goto_0
.end method

.method public getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public getPreTranslationValue([F)[F
    .locals 9
    .param p1, "points"    # [F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 435
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v5, v5, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v5, :cond_0

    .line 436
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->animBuilder:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iget-object v6, v6, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTransform:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->createMatrixAnimation(Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    move-result-object v2

    .line 437
    .local v2, "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 438
    .local v4, "width":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 439
    .local v0, "height":I
    invoke-virtual {v2, v4, v0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->getFinalMatrix(II)Landroid/graphics/Matrix;

    move-result-object v1

    .line 441
    .local v1, "m":Landroid/graphics/Matrix;
    const/16 v5, 0x9

    new-array v3, v5, [F

    .line 442
    .local v3, "values":[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 443
    aget v5, p1, v7

    const/4 v6, 0x2

    aget v6, v3, v6

    sub-float/2addr v5, v6

    aput v5, p1, v7

    .line 444
    aget v5, p1, v8

    const/4 v6, 0x5

    aget v6, v3, v6

    sub-float/2addr v5, v6

    aput v5, p1, v8

    .line 446
    .end local v0    # "height":I
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v2    # "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    .end local v3    # "values":[F
    .end local v4    # "width":I
    :cond_0
    return-object p1
.end method

.method public getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 1151
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1153
    const-string v0, "TiUIView"

    const-string v1, "Attempt to hide null native control"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    :cond_0
    return-void
.end method

.method public insertAt(Lorg/appcelerator/titanium/view/TiUIView;I)V
    .locals 0
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;
    .param p2, "position"    # I

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;I)V

    .line 172
    return-void
.end method

.method public isLayoutPending()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->bLayoutPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public iszIndexChanged()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    return v0
.end method

.method protected layoutNativeView()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    .line 555
    :cond_0
    return-void
.end method

.method protected layoutNativeView(Z)V
    .locals 7
    .param p1, "informParent"    # Z

    .prologue
    .line 565
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 566
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 567
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 568
    check-cast v2, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;

    .line 569
    .local v2, "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;->invalidateWithMatrix(Landroid/view/View;)V

    .line 571
    .end local v2    # "matrixAnimation":Lorg/appcelerator/titanium/util/TiAnimationBuilder$TiMatrixAnimation;
    :cond_0
    if-eqz p1, :cond_1

    .line 572
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_1

    .line 573
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->peekView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v3

    .line 574
    .local v3, "uiv":Lorg/appcelerator/titanium/view/TiUIView;
    if-eqz v3, :cond_1

    .line 575
    invoke-virtual {v3}, Lorg/appcelerator/titanium/view/TiUIView;->resort()V

    .line 579
    .end local v3    # "uiv":Lorg/appcelerator/titanium/view/TiUIView;
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v4

    .line 580
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 581
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->bLayoutPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 582
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIView$3;

    invoke-direct {v1, p0, v4}, Lorg/appcelerator/titanium/view/TiUIView$3;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V

    .line 600
    .local v1, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 603
    .end local v1    # "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    :cond_2
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 605
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v4    # "v":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 396
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 399
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1038
    if-eqz p2, :cond_0

    .line 1039
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$4;

    invoke-direct {v0, p0, p1}, Lorg/appcelerator/titanium/view/TiUIView$4;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V

    invoke-static {v0}, Lorg/appcelerator/kroll/common/TiMessenger;->postOnMain(Ljava/lang/Runnable;)V

    .line 1044
    const-string v0, "focus"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 1048
    :goto_0
    return-void

    .line 1046
    :cond_0
    const-string v0, "blur"

    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/view/TiUIView;->getFocusEventObject(Z)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    goto :goto_0
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 901
    const/4 v3, 0x0

    .line 902
    .local v3, "nativeViewNull":Z
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 903
    const/4 v3, 0x1

    .line 904
    const-string v5, "TiUIView"

    const-string v8, "Nativeview is null"

    const-string v9, "DEBUG_MODE"

    invoke-static {v5, v8, v9}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    const-string v5, "layout"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 907
    const-string v5, "layout"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "layout":Ljava/lang/String;
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v5, v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_1

    .line 909
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    invoke-virtual {v5, v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setLayoutArrangement(Ljava/lang/String;)V

    .line 912
    .end local v1    # "layout":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    .line 913
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 916
    :cond_2
    const-string v5, "horizontalWrap"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 917
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    instance-of v5, v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v5, :cond_3

    .line 918
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    check-cast v5, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const-string v8, "horizontalWrap"

    invoke-static {p1, v8, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 922
    :cond_3
    const/4 v0, 0x0

    .line 926
    .local v0, "bgColor":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 927
    :cond_4
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 946
    :cond_5
    :goto_0
    const-string v5, "visible"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v3, :cond_6

    .line 947
    const-string v5, "visible"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 948
    .local v4, "visible":Ljava/lang/Object;
    if-eqz v4, :cond_15

    .line 949
    invoke-static {v4, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 954
    .end local v4    # "visible":Ljava/lang/Object;
    :cond_6
    :goto_2
    const-string v5, "enabled"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 955
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v7, "enabled"

    invoke-static {p1, v7, v10}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 958
    :cond_7
    invoke-direct {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 960
    const-string v5, "opacity"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v3, :cond_8

    .line 961
    const-string v5, "opacity"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {p1, v5, v7}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v5

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 965
    :cond_8
    const-string v5, "transform"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 966
    const-string v5, "transform"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 967
    .local v2, "matrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    if-eqz v2, :cond_9

    .line 968
    invoke-virtual {p0, v2}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    .line 972
    .end local v2    # "matrix":Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :cond_9
    const-string v5, "keepScreenOn"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    .line 973
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v7, "keepScreenOn"

    invoke-static {p1, v7, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 977
    :cond_a
    const-string v5, "accessibilityHint"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "accessibilityLabel"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "accessibilityValue"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "accessibilityHidden"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 979
    :cond_b
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityProperties()V

    .line 982
    :cond_c
    const-string v5, "elevation"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v3, :cond_d

    .line 983
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "elevation"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 986
    :cond_d
    const-string v5, "translationX"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v3, :cond_e

    .line 987
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "translationX"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 990
    :cond_e
    const-string v5, "translationY"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v3, :cond_f

    .line 991
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "translationY"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 994
    :cond_f
    const-string v5, "translationZ"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v3, :cond_10

    .line 995
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    const-string v6, "translationZ"

    invoke-static {p1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;)F

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 997
    :cond_10
    return-void

    .line 929
    :cond_11
    const-string v5, "backgroundColor"

    invoke-virtual {p1, v5}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v3, :cond_5

    .line 930
    const-string v5, "backgroundColor"

    invoke-static {p1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 935
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 936
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-nez v5, :cond_12

    .line 937
    invoke-direct {p0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground(Z)V

    .line 939
    :cond_12
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 942
    :cond_13
    iget-object v5, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .restart local v4    # "visible":Ljava/lang/Object;
    :cond_14
    move v5, v7

    .line 949
    goto/16 :goto_1

    .line 951
    :cond_15
    invoke-direct {p0, v7}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public propertiesChanged(Ljava/util/List;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p2, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/appcelerator/kroll/KrollPropertyChange;",
            ">;",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lorg/appcelerator/kroll/KrollPropertyChange;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/kroll/KrollPropertyChange;

    .line 1003
    .local v0, "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollPropertyChange;->getNewValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4, p2}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0

    .line 1005
    .end local v0    # "change":Lorg/appcelerator/kroll/KrollPropertyChange;
    :cond_0
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 21
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 648
    const-string v18, "left"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 649
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 650
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationX()V

    .line 651
    if-eqz p3, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    .line 656
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    .line 897
    :cond_0
    :goto_1
    return-void

    .line 654
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionLeft:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_0

    .line 657
    :cond_2
    const-string v18, "top"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 658
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 659
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationY()V

    .line 660
    if-eqz p3, :cond_3

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    .line 665
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 663
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionTop:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_2

    .line 666
    :cond_4
    const-string v18, "center"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 667
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 668
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationX()V

    .line 669
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationY()V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->updateLayoutCenter(Ljava/lang/Object;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto :goto_1

    .line 672
    :cond_5
    const-string v18, "right"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 673
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 674
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationX()V

    .line 675
    if-eqz p3, :cond_6

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    .line 680
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 678
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionRight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_3

    .line 681
    :cond_7
    const-string v18, "bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 682
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 683
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetTranslationY()V

    .line 684
    if-eqz p3, :cond_8

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    .line 689
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 687
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionBottom:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_4

    .line 690
    :cond_9
    const-string v18, "size"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 691
    move-object/from16 v0, p3

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v7, p3

    .line 693
    check-cast v7, Ljava/util/HashMap;

    .line 694
    .local v7, "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "width"

    const-string v19, "width"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 695
    const-string v18, "height"

    const-string v19, "height"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_1

    .line 696
    .end local v7    # "d":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    if-eqz p3, :cond_0

    .line 697
    const-string v18, "TiUIView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported property type ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") for key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ". Must be an object/dictionary"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 699
    :cond_b
    const-string v18, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 700
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 701
    if-eqz p3, :cond_f

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    .line 704
    const-string v18, "size"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 716
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 706
    :cond_d
    const-string v18, "fill"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    goto :goto_5

    .line 708
    :cond_e
    const-string v18, "auto"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x7

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillHeightEnabled:Z

    goto :goto_5

    .line 714
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionHeight:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_5

    .line 717
    :cond_10
    const-string v18, "horizontalWrap"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    check-cast v18, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->setEnableHorizontalWrap(Z)V

    .line 721
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 722
    :cond_12
    const-string v18, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 723
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->resetPostAnimationValues()V

    .line 724
    if-eqz p3, :cond_16

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    .line 727
    const-string v18, "size"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 738
    :cond_13
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView()V

    goto/16 :goto_1

    .line 729
    :cond_14
    const-string v18, "fill"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    goto :goto_6

    .line 731
    :cond_15
    const-string v18, "auto"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    invoke-static/range {v19 .. v20}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/String;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->sizeOrFillWidthEnabled:Z

    goto :goto_6

    .line 736
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionWidth:Lorg/appcelerator/titanium/TiDimension;

    goto :goto_6

    .line 739
    :cond_17
    const-string v18, "zIndex"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 740
    if-eqz p3, :cond_18

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    .line 745
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->isLayoutStarted()Z

    move-result v18

    if-nez v18, :cond_19

    .line 746
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->layoutNativeView(Z)V

    goto/16 :goto_1

    .line 743
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->optionZIndex:I

    goto :goto_7

    .line 748
    :cond_19
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setzIndexChanged(Z)V

    goto/16 :goto_1

    .line 750
    :cond_1a
    const-string v18, "focusable"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    if-eqz p3, :cond_1b

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 752
    :cond_1b
    const-string v18, "touchEnabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 754
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Z)V

    goto/16 :goto_1

    .line 755
    :cond_1c
    const-string v18, "visible"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 756
    if-nez p3, :cond_1d

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 757
    :cond_1d
    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    const/16 v18, 0x0

    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_1e
    const/16 v18, 0x4

    goto :goto_8

    .line 758
    :cond_1f
    const-string v18, "enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 760
    :cond_20
    const-string v18, "backgroundPadding"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 761
    const-string v18, "TiUIView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not yet implemented."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 762
    :cond_21
    const-string v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_22

    const-string v18, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_22

    const-string v18, "border"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 766
    :cond_22
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/kroll/KrollProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v6

    .line 770
    .local v6, "d":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasImage(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v11

    .line 771
    .local v11, "hasImage":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasRepeat(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v12

    .line 772
    .local v12, "hasRepeat":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasColorState(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v9

    .line 773
    .local v9, "hasColorState":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasBorder(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v8

    .line 774
    .local v8, "hasBorder":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->hasGradient(Lorg/appcelerator/kroll/KrollDict;)Z

    move-result v10

    .line 775
    .local v10, "hasGradient":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_27

    const/4 v13, 0x1

    .line 777
    .local v13, "nativeViewNull":Z
    :goto_9
    if-nez v11, :cond_23

    if-nez v12, :cond_23

    if-nez v9, :cond_23

    if-nez v8, :cond_23

    if-eqz v10, :cond_28

    :cond_23
    const/16 v17, 0x1

    .line 779
    .local v17, "requiresCustomBackground":Z
    :goto_a
    if-nez v17, :cond_2b

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_24

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 783
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 786
    :cond_24
    const-string v18, "backgroundColor"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->containsKeyAndNotNull(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 787
    const-string v18, "backgroundColor"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 788
    .local v5, "bgColor":Ljava/lang/Integer;
    if-nez v13, :cond_26

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundColor(I)V

    .line 791
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_25

    const-string v18, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 792
    const-string v18, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 794
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->postInvalidate()V

    .line 857
    .end local v5    # "bgColor":Ljava/lang/Integer;
    :cond_26
    :goto_b
    if-nez v13, :cond_0

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_1

    .line 775
    .end local v13    # "nativeViewNull":Z
    .end local v17    # "requiresCustomBackground":Z
    :cond_27
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 777
    .restart local v13    # "nativeViewNull":Z
    :cond_28
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 797
    .restart local v17    # "requiresCustomBackground":Z
    :cond_29
    const-string v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 798
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    .line 800
    :cond_2a
    if-nez v13, :cond_26

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->postInvalidate()V

    goto :goto_b

    .line 806
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v18, v0

    if-nez v18, :cond_33

    const/4 v14, 0x1

    .line 807
    .local v14, "newBackground":Z
    :goto_c
    if-eqz v14, :cond_2c

    .line 808
    new-instance v18, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    invoke-direct/range {v18 .. v18}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .line 811
    :cond_2c
    const/4 v5, 0x0

    .line 813
    .restart local v5    # "bgColor":Ljava/lang/Integer;
    if-nez v9, :cond_2e

    if-nez v10, :cond_2e

    .line 814
    const-string v18, "backgroundColor"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_2e

    .line 815
    const-string v18, "backgroundColor"

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 816
    if-nez v14, :cond_2d

    const-string v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2d

    const-string v18, "backgroundColor"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 817
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->background:Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->setBackgroundColor(I)V

    .line 822
    :cond_2e
    if-nez v11, :cond_2f

    if-nez v12, :cond_2f

    if-nez v9, :cond_2f

    if-eqz v10, :cond_31

    .line 823
    :cond_2f
    if-nez v14, :cond_30

    const-string v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_30

    const-string v18, "background"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_31

    .line 824
    :cond_30
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/appcelerator/titanium/view/TiUIView;->handleBackgroundImage(Lorg/appcelerator/kroll/KrollDict;)V

    .line 828
    :cond_31
    if-eqz v8, :cond_32

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    move-object/from16 v18, v0

    if-nez v18, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    if-eqz v18, :cond_35

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v15

    .line 834
    .local v15, "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/appcelerator/titanium/view/TiUIView;->findChildIndex(Lorg/appcelerator/titanium/view/TiUIView;)I

    move-result v16

    .line 835
    .local v16, "removedChildIndex":I
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/view/TiUIView;->remove(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 836
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lorg/appcelerator/titanium/view/TiUIView;->initializeBorder(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/Integer;)V

    .line 837
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_34

    .line 838
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;)V

    .line 847
    .end local v15    # "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v16    # "removedChildIndex":I
    :cond_32
    :goto_d
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyCustomBackground()V

    .line 849
    const-string v18, "opacity"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 850
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    goto/16 :goto_b

    .line 806
    .end local v5    # "bgColor":Ljava/lang/Integer;
    .end local v14    # "newBackground":Z
    :cond_33
    const/4 v14, 0x0

    goto/16 :goto_c

    .line 840
    .restart local v5    # "bgColor":Ljava/lang/Integer;
    .restart local v14    # "newBackground":Z
    .restart local v15    # "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    .restart local v16    # "removedChildIndex":I
    :cond_34
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->add(Lorg/appcelerator/titanium/view/TiUIView;I)V

    goto :goto_d

    .line 842
    .end local v15    # "parentView":Lorg/appcelerator/titanium/view/TiUIView;
    .end local v16    # "removedChildIndex":I
    :cond_35
    const-string v18, "border"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_32

    .line 843
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiUIView;->handleBorderProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    .line 851
    :cond_36
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    const-string v18, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 853
    const-string v18, "opacity"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v18 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;F)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(F)V

    goto/16 :goto_b

    .line 860
    .end local v5    # "bgColor":Ljava/lang/Integer;
    .end local v6    # "d":Lorg/appcelerator/kroll/KrollDict;
    .end local v8    # "hasBorder":Z
    .end local v9    # "hasColorState":Z
    .end local v10    # "hasGradient":Z
    .end local v11    # "hasImage":Z
    .end local v12    # "hasRepeat":Z
    .end local v13    # "nativeViewNull":Z
    .end local v14    # "newBackground":Z
    .end local v17    # "requiresCustomBackground":Z
    :cond_37
    const-string v18, "softKeyboardOnFocus"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 861
    const-string v18, "TiUIView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Focus state changed to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not honored until next focus event."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 863
    :cond_38
    const-string v18, "transform"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_39

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, p3

    .line 865
    check-cast v18, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyTransform(Lorg/appcelerator/titanium/view/Ti2DMatrix;)V

    goto/16 :goto_1

    .line 867
    :cond_39
    const-string v18, "keepScreenOn"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_1

    .line 872
    :cond_3a
    const-string v18, "accessibility"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3b

    const-string v18, "accessibilityHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3b

    .line 873
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyContentDescription()V

    goto/16 :goto_1

    .line 875
    :cond_3b
    const-string v18, "accessibilityHidden"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 876
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityHidden(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 878
    :cond_3c
    const-string v18, "elevation"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3d

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 882
    :cond_3d
    const-string v18, "translationX"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 886
    :cond_3e
    const-string v18, "translationY"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 890
    :cond_3f
    const-string v18, "translationZ"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-static/range {p3 .. p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v19

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    goto/16 :goto_1

    .line 894
    :cond_40
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 895
    const-string v18, "TiUIView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unhandled property key: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "DEBUG_MODE"

    invoke-static/range {v18 .. v20}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public registerForKeyPress()V
    .locals 1

    .prologue
    .line 1589
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForKeyPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;)V

    .line 1592
    :cond_0
    return-void
.end method

.method protected registerForKeyPress(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1596
    if-nez p1, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "focusable"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1601
    .local v0, "focusable":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1602
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPress(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected registerForKeyPress(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "focusable"    # Z

    .prologue
    .line 1608
    if-nez p1, :cond_0

    .line 1621
    :goto_0
    return-void

    .line 1612
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 1616
    if-eqz p2, :cond_1

    .line 1617
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->registerForKeyPressEvents(Landroid/view/View;)V

    goto :goto_0

    .line 1619
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method protected registerForKeyPressEvents(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1630
    if-nez p1, :cond_0

    .line 1655
    :goto_0
    return-void

    .line 1634
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$9;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$9;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public registerForTouch()V
    .locals 1

    .prologue
    .line 1381
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->allowRegisterForTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->registerForTouch(Landroid/view/View;)V

    .line 1384
    :cond_0
    return-void
.end method

.method protected registerForTouch(Landroid/view/View;)V
    .locals 3
    .param p1, "touchable"    # Landroid/view/View;

    .prologue
    .line 1561
    if-nez p1, :cond_0

    .line 1584
    :goto_0
    return-void

    .line 1565
    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1566
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 1567
    .local v0, "enabled":Z
    if-nez v0, :cond_1

    .line 1568
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1571
    .end local v0    # "enabled":Z
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->registerTouchEvents(Landroid/view/View;)V

    .line 1582
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected registerTouchEvents(Landroid/view/View;)V
    .locals 4
    .param p1, "touchable"    # Landroid/view/View;

    .prologue
    .line 1389
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->touchView:Ljava/lang/ref/WeakReference;

    .line 1391
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/appcelerator/titanium/view/TiUIView$6;

    invoke-direct {v2, p0}, Lorg/appcelerator/titanium/view/TiUIView$6;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1432
    .local v0, "scaleDetector":Landroid/view/ScaleGestureDetector;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/appcelerator/titanium/view/TiUIView$7;

    invoke-direct {v3, p0}, Lorg/appcelerator/titanium/view/TiUIView$7;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->detector:Landroid/view/GestureDetector;

    .line 1491
    new-instance v1, Lorg/appcelerator/titanium/view/TiUIView$8;

    invoke-direct {v1, p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView$8;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/ScaleGestureDetector;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1557
    return-void
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1093
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 1097
    .local v1, "nv":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1098
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v2, v1

    .line 1099
    check-cast v2, Landroid/view/ViewGroup;

    .line 1100
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    const-string v3, "TiUIView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Group has: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_1
    instance-of v3, v2, Landroid/widget/AdapterView;

    if-nez v3, :cond_2

    .line 1104
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1107
    .end local v2    # "vg":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1108
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 1109
    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1110
    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1111
    instance-of v3, v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    if-eqz v3, :cond_3

    .line 1112
    check-cast v0, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiBackgroundDrawable;->releaseDelegate()V

    .line 1114
    :cond_3
    const/4 v0, 0x0

    .line 1116
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_4
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 1117
    iput-object v6, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    .line 1118
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v3, :cond_5

    .line 1119
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setModelListener(Lorg/appcelerator/kroll/KrollProxyListener;)V

    .line 1122
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    return-void
.end method

.method public remove(Lorg/appcelerator/titanium/view/TiUIView;)V
    .locals 3
    .param p1, "child"    # Lorg/appcelerator/titanium/view/TiUIView;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiUIView;->getOuterView()Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, "cv":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, "nv":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 229
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "nv":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiUIView;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 235
    .end local v0    # "cv":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public resort()V
    .locals 2

    .prologue
    .line 609
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    if-eqz v1, :cond_0

    .line 611
    check-cast v0, Lorg/appcelerator/titanium/view/TiCompositeLayout;

    .end local v0    # "v":Landroid/view/View;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->resort()V

    .line 613
    :cond_0
    return-void
.end method

.method public setAdditionalEventData(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "dict"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 238
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->additionalEventData:Lorg/appcelerator/kroll/KrollDict;

    .line 239
    return-void
.end method

.method protected setAlpha(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1684
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1685
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 1686
    return-void
.end method

.method public setAnimatedAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1885
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedAlpha:F

    .line 1886
    return-void
.end method

.method public setAnimatedRotationDegrees(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 1868
    iput p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedRotationDegrees:F

    .line 1869
    return-void
.end method

.method public setAnimatedScaleValues(Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1860
    .local p1, "newValues":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->animatedScaleValues:Landroid/util/Pair;

    .line 1861
    return-void
.end method

.method protected setLayoutParams(Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)V
    .locals 0
    .param p1, "layoutParams"    # Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 325
    return-void
.end method

.method protected setNativeView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 308
    sget-object v1, Lorg/appcelerator/titanium/view/TiUIView;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 310
    :cond_0
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    .line 311
    const/4 v0, 0x1

    .line 313
    .local v0, "clickable":Z
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "touchEnabled"

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;Z)Z

    move-result v0

    .line 316
    :cond_1
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lorg/appcelerator/titanium/view/TiUIView;->doSetClickable(Landroid/view/View;Z)V

    .line 317
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 319
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiUIView;->applyAccessibilityProperties()V

    .line 320
    return-void
.end method

.method protected setOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1778
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$10;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$10;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1785
    return-void
.end method

.method protected setOnLongClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1802
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$11;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/view/TiUIView$11;-><init>(Lorg/appcelerator/titanium/view/TiUIView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1809
    return-void
.end method

.method public setOpacity(F)V
    .locals 3
    .param p1, "opacity"    # F

    .prologue
    .line 1664
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1665
    :cond_0
    const-string v0, "TiUIView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring invalid value for opacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_1
    :goto_0
    return-void

    .line 1669
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v0, :cond_3

    .line 1670
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    goto :goto_0

    .line 1671
    :cond_3
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1672
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->setOpacity(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected setOpacity(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "opacity"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1696
    if-nez p1, :cond_1

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    sget-boolean v0, Lorg/appcelerator/titanium/view/TiUIView;->HONEYCOMB_OR_GREATER:Z

    if-eqz v0, :cond_2

    .line 1701
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiUIView;->setAlpha(Landroid/view/View;F)V

    .line 1706
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1707
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->clearOpacity(Landroid/view/View;)V

    goto :goto_0

    .line 1703
    :cond_2
    invoke-static {p1, p2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_1
.end method

.method public setParent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "parent"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 279
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 280
    return-void
.end method

.method public setProxy(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 269
    iput-object p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 270
    return-void
.end method

.method public setzIndexChanged(Z)V
    .locals 0
    .param p1, "zIndexChanged"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiUIView;->zIndexChanged:Z

    .line 622
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/view/TiUIView;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->borderView:Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->nativeView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1142
    const-string v0, "TiUIView"

    const-string v1, "Attempt to show null native control"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    return-void
.end method

.method protected startTransformAfterLayout(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v1, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 498
    .local v1, "p":Lorg/appcelerator/titanium/proxy/TiViewProxy;
    new-instance v0, Lorg/appcelerator/titanium/view/TiUIView$1;

    invoke-direct {v0, p0, v1, p1}, Lorg/appcelerator/titanium/view/TiUIView$1;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/view/View;)V

    .line 515
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 522
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 523
    new-instance v2, Lorg/appcelerator/titanium/view/TiUIView$2;

    invoke-direct {v2, p0, p1}, Lorg/appcelerator/titanium/view/TiUIView$2;-><init>(Lorg/appcelerator/titanium/view/TiUIView;Landroid/view/View;)V

    .line 541
    .local v2, "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 543
    .end local v2    # "preDrawListener":Landroid/view/ViewTreeObserver$OnPreDrawListener;
    :cond_0
    return-void
.end method

.method public toImage()Lorg/appcelerator/kroll/KrollDict;
    .locals 2

    .prologue
    .line 1718
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiUIView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->viewToImage(Lorg/appcelerator/kroll/KrollDict;Landroid/view/View;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    return-object v0
.end method
