.class public Lorg/appcelerator/titanium/view/TiDrawableReference;
.super Ljava/lang/Object;
.source "TiDrawableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;,
        Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;
    }
.end annotation


# static fields
.field public static final DEFAULT_DECODE_RETRIES:I = 0x5

.field private static final DEFAULT_SAMPLE_SIZE:I = 0x1

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final TAG:Ljava/lang/String; = "TiDrawableReference"

.field private static final UNKNOWN:I = -0x1

.field private static boundsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anyDensityFalse:Z

.field private autoRotate:Z

.field private blob:Lorg/appcelerator/titanium/TiBlob;

.field private decodeRetries:I

.field private file:Lorg/appcelerator/titanium/io/TiBaseFile;

.field private oomOccurred:Z

.field private orientation:I

.field private resourceId:I

.field private softActivity:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 82
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 83
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 85
    iput v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 95
    iput-object p2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 96
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    .line 99
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 104
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    .line 105
    const/4 v1, 0x5

    iput v1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    .line 106
    return-void

    .line 102
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method private calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 14
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p4, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p5, "parent"    # Landroid/view/View;

    .prologue
    .line 546
    new-instance v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 549
    .local v2, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    const/4 v3, -0x1

    .local v3, "containerHeight":I
    move v4, v3

    .local v4, "containerWidth":I
    move v9, v3

    .local v9, "parentHeight":I
    move v10, v3

    .local v10, "parentWidth":I
    move v5, v3

    .local v5, "destHeight":I
    move v6, v3

    .line 551
    .local v6, "destWidth":I
    const/4 v11, 0x0

    .line 552
    .local v11, "widthSpecified":Z
    const/4 v7, 0x0

    .line 554
    .local v7, "heightSpecified":Z
    if-eqz p5, :cond_0

    .line 555
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 556
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 560
    :cond_0
    if-eqz p3, :cond_6

    .line 561
    invoke-virtual/range {p3 .. p3}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 562
    move v4, p1

    .line 572
    :cond_1
    :goto_0
    if-gez v4, :cond_2

    .line 573
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container width for image. Defaulting to source width. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move v4, p1

    .line 578
    :cond_2
    if-eqz p4, :cond_8

    .line 579
    invoke-virtual/range {p4 .. p4}, Lorg/appcelerator/titanium/TiDimension;->isUnitAuto()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 580
    move/from16 v3, p2

    .line 591
    :cond_3
    :goto_1
    if-gez v3, :cond_4

    .line 592
    const-string v12, "TiDrawableReference"

    const-string v13, "Could not determine container height for image. Defaulting to source height. This shouldn\'t happen."

    invoke-static {v12, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move/from16 v3, p2

    .line 596
    :cond_4
    int-to-float v12, p1

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v8, v12, v13

    .line 598
    .local v8, "origAspectRatio":F
    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 599
    move v6, v4

    .line 600
    move v5, v3

    .line 617
    :goto_2
    iput v6, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 618
    iput v5, v2, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 619
    return-object v2

    .line 564
    .end local v8    # "origAspectRatio":F
    :cond_5
    const/4 v11, 0x1

    .line 565
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    goto :goto_0

    .line 568
    :cond_6
    if-ltz v10, :cond_1

    .line 569
    move v4, v10

    goto :goto_0

    .line 582
    :cond_7
    const/4 v7, 0x1

    .line 583
    invoke-virtual/range {p4 .. p5}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v3

    goto :goto_1

    .line 586
    :cond_8
    if-ltz v9, :cond_3

    .line 587
    move v3, v9

    goto :goto_1

    .line 601
    .restart local v8    # "origAspectRatio":F
    :cond_9
    if-eqz v11, :cond_a

    .line 602
    move v6, v4

    .line 603
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 604
    :cond_a
    if-eqz v7, :cond_b

    .line 605
    move v5, v3

    .line 606
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2

    .line 608
    :cond_b
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v8, v12

    if-lez v12, :cond_c

    .line 609
    move v6, v4

    .line 610
    int-to-float v12, v6

    div-float/2addr v12, v8

    float-to-int v5, v12

    goto :goto_2

    .line 612
    :cond_c
    move v5, v3

    .line 613
    int-to-float v12, v5

    mul-float/2addr v12, v8

    float-to-int v6, v12

    goto :goto_2
.end method

.method public static fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "blob"    # Lorg/appcelerator/titanium/TiBlob;

    .prologue
    .line 151
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 152
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    .line 153
    return-object v0
.end method

.method public static fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dict"    # Ljava/util/HashMap;

    .prologue
    .line 210
    const-string v0, "media"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0, p1}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    const-string v1, "media"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/util/HashMap;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 213
    :cond_0
    const-string v0, "TiDrawableReference"

    const-string v1, "Unknown drawable reference inside dictionary.  Expected key \'media\' to be a blob.  Returning null drawable reference"

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "file"    # Lorg/appcelerator/titanium/io/TiBaseFile;

    .prologue
    .line 203
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 204
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 205
    return-object v0
.end method

.method public static fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 244
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 231
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_1
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 234
    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromDictionary(Landroid/app/Activity;Ljava/util/HashMap;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 235
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v0, :cond_3

    .line 236
    check-cast p1, Lorg/appcelerator/titanium/io/TiBaseFile;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromFile(Landroid/app/Activity;Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 237
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_4

    .line 238
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBlob(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromBlob(Landroid/app/Activity;Lorg/appcelerator/titanium/TiBlob;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 240
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0

    .line 242
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    const-string v0, "TiDrawableReference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image resource type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Returning null drawable reference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromObject(Landroid/app/Activity;Ljava/lang/Object;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromResourceId(Landroid/app/Activity;I)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resourceId"    # I

    .prologue
    .line 137
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 138
    .local v0, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput p1, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 139
    return-object v0
.end method

.method public static fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 180
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v1, p0, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 181
    .local v1, "ref":Lorg/appcelerator/titanium/view/TiDrawableReference;
    iput-object p1, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceId(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 188
    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    iput-object v2, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    .line 189
    iput v0, v1, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    .line 192
    .end local v0    # "id":I
    :cond_0
    return-object v1
.end method

.method public static fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;
    .locals 3
    .param p0, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-direct {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;-><init>(Landroid/app/Activity;Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;)V

    .line 168
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/kroll/KrollProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Landroid/app/Activity;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v0

    goto :goto_0
.end method

.method private getResourceDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 434
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v3

    if-nez v3, :cond_1

    .line 435
    const/4 v0, 0x0

    .line 446
    :cond_0
    :goto_0
    return-object v0

    .line 437
    :cond_1
    const/4 v0, 0x0

    .line 438
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 439
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    if-lez v3, :cond_0

    .line 441
    :try_start_0
    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x0

    .line 925
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 926
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 927
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calcSampleSize(IIII)I
    .locals 2
    .param p1, "srcWidth"    # I
    .param p2, "srcHeight"    # I
    .param p3, "destWidth"    # I
    .param p4, "destHeight"    # I

    .prologue
    .line 888
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gtz p4, :cond_1

    .line 889
    :cond_0
    const/4 v0, 0x1

    .line 891
    :goto_0
    return v0

    :cond_1
    div-int v0, p1, p3

    div-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public calcSampleSize(Landroid/view/View;IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)I
    .locals 9
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I
    .param p4, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p5, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 909
    const/4 v7, -0x1

    .local v7, "destHeight":I
    move v8, v7

    .local v8, "destWidth":I
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p1

    .line 910
    invoke-direct/range {v0 .. v5}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v6

    .line 911
    .local v6, "destBounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v8, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 912
    iget v7, v6, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 913
    invoke-virtual {p0, p2, p3, v8, v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 129
    instance-of v0, p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 132
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v0

    check-cast p1, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "destWidth"    # I

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v3

    .line 532
    .local v3, "orig":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v5, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 533
    .local v5, "srcWidth":I
    iget v4, v3, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 534
    .local v4, "srcHeight":I
    if-lez v5, :cond_0

    if-gtz v4, :cond_1

    .line 535
    :cond_0
    const-string v6, "TiDrawableReference"

    const-string v7, "Bitmap bounds could not be determined.  If bitmap is loaded, it won\'t be scaled."

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 540
    :goto_0
    return-object v6

    .line 538
    :cond_1
    int-to-double v6, v5

    int-to-double v8, v4

    div-double v0, v6, v8

    .line 539
    .local v0, "aspectRatio":D
    int-to-double v6, p1

    div-double/2addr v6, v0

    double-to-int v2, v6

    .line 540
    .local v2, "destHeight":I
    invoke-virtual {p0, p1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 518
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toTiDimension(Ljava/lang/Object;I)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 636
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v11

    .line 637
    .local v11, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v3, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 638
    .local v3, "srcWidth":I
    iget v4, v11, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 640
    .local v4, "srcHeight":I
    if-lez v3, :cond_0

    if-gtz v4, :cond_2

    .line 641
    :cond_0
    const-string v2, "TiDrawableReference"

    const-string v5, "Bitmap bounds could not be determined. If bitmap is loaded, it won\'t be scaled."

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 776
    :cond_1
    :goto_0
    return-object v9

    .line 645
    :cond_2
    if-nez p1, :cond_3

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->softActivity:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 647
    .local v8, "activity":Landroid/app/Activity;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 648
    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .end local v8    # "activity":Landroid/app/Activity;
    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p1

    .line 652
    invoke-direct/range {v2 .. v7}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcDestSize(IILorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;Landroid/view/View;)Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-result-object v12

    .line 653
    .local v12, "destBounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    iget v14, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I

    .line 654
    .local v14, "destWidth":I
    iget v13, v12, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 657
    .local v13, "destHeight":I
    if-ne v3, v14, :cond_4

    if-ne v4, v13, :cond_4

    .line 658
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 661
    :cond_4
    if-lez v14, :cond_5

    if-gtz v13, :cond_6

    .line 663
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_0

    .line 666
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 667
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_7

    .line 668
    const-string v2, "TiDrawableReference"

    const-string v5, "Could not open stream to get bitmap"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v9, 0x0

    goto :goto_0

    .line 672
    :cond_7
    const/4 v9, 0x0

    .line 674
    .local v9, "b":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 675
    .local v18, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 676
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 677
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v14, v13}, Lorg/appcelerator/titanium/view/TiDrawableReference;->calcSampleSize(IIII)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 678
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 679
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 680
    .local v19, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Bitmap calcSampleSize results: inSampleSize="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    const-string v2, "; srcWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    const-string v2, "; srcHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    const-string v2, "; finalWidth="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    const-string v2, "; finalHeight="

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    move-object/from16 v0, v18

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 693
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v10, 0x0

    .line 695
    .local v10, "bTemp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 696
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 697
    if-nez v10, :cond_a

    .line 698
    const-string v2, "TiDrawableReference"

    const-string v5, "Decoded bitmap is null"

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    const/4 v2, 0x0

    .line 756
    if-eqz v10, :cond_9

    if-eq v10, v9, :cond_9

    .line 757
    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 758
    const/4 v10, 0x0

    .line 764
    :cond_9
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    move-object v9, v2

    .line 767
    goto/16 :goto_0

    .line 765
    :catch_0
    move-exception v16

    .line 766
    .local v16, "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 702
    .end local v16    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_4
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 703
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeStream resulting bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; .getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 713
    .local v15, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v15}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 714
    iget v2, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->autoRotate:Z

    if-eqz v2, :cond_e

    .line 719
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    if-gez v2, :cond_c

    .line 720
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    .line 722
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    if-lez v2, :cond_e

    .line 723
    move-object/from16 v0, p0

    iget v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->orientation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 756
    if-eqz v10, :cond_d

    if-eq v10, v9, :cond_d

    .line 757
    :try_start_5
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 758
    const/4 v10, 0x0

    .line 764
    :cond_d
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    move-object v9, v2

    .line 767
    goto/16 :goto_0

    .line 765
    :catch_1
    move-exception v16

    .line 766
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 727
    .end local v16    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_7
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_10

    .line 729
    move-object v9, v10

    .line 730
    const/4 v10, 0x0

    .line 756
    :goto_3
    if-eqz v10, :cond_f

    if-eq v10, v9, :cond_f

    .line 757
    :try_start_8
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 758
    const/4 v10, 0x0

    .line 764
    .end local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_f
    :goto_4
    :try_start_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 769
    :goto_5
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .restart local v19    # "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Details of returned bitmap: .getWidth()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getHeight()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; getDensity()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    const-string v2, "TiDrawableReference"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_10
    :try_start_a
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 733
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scaling bitmap to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v2, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->anyDensityFalse:Z

    if-eqz v2, :cond_12

    iget v2, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_12

    .line 740
    int-to-float v2, v14

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v14, v2

    .line 741
    int-to-float v2, v13

    iget v5, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v2, v5

    float-to-int v13, v2

    .line 746
    :cond_12
    const/4 v2, 0x1

    invoke-static {v10, v14, v13, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v9

    goto/16 :goto_3

    .line 749
    .end local v15    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v16

    .line 750
    .local v16, "e":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    :try_start_b
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 751
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 756
    if-eqz v10, :cond_f

    if-eq v10, v9, :cond_f

    .line 757
    :try_start_c
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 756
    .end local v16    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_13

    if-eq v10, v9, :cond_13

    .line 757
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    const/4 v10, 0x0

    :cond_13
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 763
    .end local v10    # "bTemp":Landroid/graphics/Bitmap;
    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v2

    .line 764
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    .line 767
    :goto_6
    throw v2

    .line 765
    .restart local v10    # "bTemp":Landroid/graphics/Bitmap;
    .restart local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v16

    .line 766
    .local v16, "e":Ljava/io/IOException;
    const-string v2, "TiDrawableReference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem closing stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v2, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 765
    .end local v10    # "bTemp":Landroid/graphics/Bitmap;
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v16

    .line 766
    .restart local v16    # "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getBitmap(Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "needRetry"    # Z

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(ZZ)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "needRetry"    # Z
    .param p2, "densityScaled"    # Z

    .prologue
    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 317
    .local v7, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 318
    .local v2, "b":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 319
    .local v9, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 320
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 321
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v11, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 322
    if-eqz p2, :cond_0

    .line 323
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 324
    .local v4, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 325
    const/16 v11, 0xa0

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 327
    iget v11, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 328
    const/4 v11, 0x1

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 332
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    if-eqz p1, :cond_7

    .line 333
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    if-ge v6, v11, :cond_2

    .line 336
    if-nez v7, :cond_1

    .line 337
    const-string v11, "TiDrawableReference"

    const-string v12, "Unable to get input stream for bitmap. Will retry."

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    const-wide/16 v12, 0x64

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :goto_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 333
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 347
    :cond_1
    const/4 v11, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 348
    const/4 v11, 0x0

    invoke-static {v7, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 349
    if-eqz v2, :cond_4

    .line 378
    :cond_2
    if-nez v2, :cond_3

    .line 379
    const/4 v3, 0x0

    .line 381
    .local v3, "connection":Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-direct {v8, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 382
    .local v8, "mURL":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 383
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 384
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 385
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 386
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    .line 387
    .local v10, "responseCode":I
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_5

    .line 388
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v2

    .line 394
    :goto_3
    if-eqz v3, :cond_3

    .line 395
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 413
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "i":I
    .end local v8    # "mURL":Ljava/net/URL;
    .end local v10    # "responseCode":I
    :cond_3
    :goto_4
    if-nez v7, :cond_a

    .line 414
    const-string v11, "TiDrawableReference"

    const-string v12, "Could not open stream to get bitmap"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v11, 0x0

    .line 424
    :goto_5
    return-object v11

    .line 357
    .restart local v6    # "i":I
    :cond_4
    :try_start_6
    const-string v11, "TiDrawableReference"

    const-string v12, "Unable to decode bitmap. Will retry."

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 359
    const-wide/16 v12, 0xfa

    :try_start_7
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 360
    :catch_0
    move-exception v11

    goto :goto_2

    .line 363
    :catch_1
    move-exception v5

    .line 364
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    const/4 v11, 0x1

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 365
    const-string v11, "TiDrawableReference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const-string v11, "TiDrawableReference"

    const-string v12, "Clear memory cache and signal a GC. Will retry load."

    const-string v13, "DEBUG_MODE"

    invoke-static {v11, v12, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lorg/appcelerator/titanium/util/TiImageLruCache;->getInstance()Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v11

    invoke-virtual {v11}, Lorg/appcelerator/titanium/util/TiImageLruCache;->evictAll()V

    .line 368
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 370
    const-wide/16 v12, 0x3e8

    :try_start_9
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 374
    :goto_6
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v6

    :try_start_a
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v11, v12

    iput v11, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 413
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "i":I
    :catchall_0
    move-exception v11

    if-nez v7, :cond_b

    .line 414
    const-string v11, "TiDrawableReference"

    const-string v12, "Could not open stream to get bitmap"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v11, 0x0

    goto :goto_5

    .line 390
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v6    # "i":I
    .restart local v8    # "mURL":Ljava/net/URL;
    .restart local v10    # "responseCode":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 391
    .end local v8    # "mURL":Ljava/net/URL;
    .end local v10    # "responseCode":I
    :catch_2
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 394
    if-eqz v3, :cond_3

    .line 395
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 394
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    if-eqz v3, :cond_6

    .line 395
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v11

    .line 400
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "i":I
    :cond_7
    if-nez v7, :cond_9

    .line 401
    const-string v11, "TiDrawableReference"

    const-string v12, "Could not open stream to get bitmap"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 402
    const/4 v11, 0x0

    .line 413
    if-nez v7, :cond_8

    .line 414
    const-string v11, "TiDrawableReference"

    const-string v12, "Could not open stream to get bitmap"

    invoke-static {v11, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 418
    :cond_8
    :try_start_c
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_5

    .line 419
    :catch_3
    move-exception v5

    .line 420
    .local v5, "e":Ljava/io/IOException;
    const-string v12, "TiDrawableReference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem closing stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 405
    .end local v5    # "e":Ljava/io/IOException;
    :cond_9
    const/4 v11, 0x0

    :try_start_d
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 406
    const/4 v11, 0x0

    invoke-static {v7, v11, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v2

    goto/16 :goto_4

    .line 407
    :catch_4
    move-exception v5

    .line 408
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    const/4 v11, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    .line 409
    const-string v11, "TiDrawableReference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load bitmap. Not enough memory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 418
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :cond_a
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :goto_7
    move-object v11, v2

    .line 424
    goto/16 :goto_5

    .line 419
    :catch_5
    move-exception v5

    .line 420
    .local v5, "e":Ljava/io/IOException;
    const-string v11, "TiDrawableReference"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Problem closing stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 418
    .end local v5    # "e":Ljava/io/IOException;
    :cond_b
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 421
    :goto_8
    throw v11

    .line 419
    :catch_6
    move-exception v5

    .line 420
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v12, "TiDrawableReference"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Problem closing stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 340
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "i":I
    :catch_7
    move-exception v11

    goto/16 :goto_1

    .line 371
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    :catch_8
    move-exception v11

    goto/16 :goto_6
.end method

.method public getBitmapAsync(Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/appcelerator/titanium/util/TiDownloadListener;

    .prologue
    .line 784
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isNetworkUrl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 785
    const-string v1, "TiDrawableReference"

    const-string v2, "getBitmapAsync called on non-network url.  Will attempt load."

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiDownloadManager;->getInstance()Lorg/appcelerator/titanium/util/TiDownloadManager;

    move-result-object v1

    new-instance v2, Ljava/net/URI;

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p1}, Lorg/appcelerator/titanium/util/TiDownloadManager;->download(Ljava/net/URI;Lorg/appcelerator/titanium/util/TiDownloadListener;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 795
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "TiDrawableReference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI Invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 792
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "TiDrawableReference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDensityScaledDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 501
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 502
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 503
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 504
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 505
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 508
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 484
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 485
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 486
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 488
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 491
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I

    .prologue
    .line 469
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 470
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 471
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 473
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 476
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getDrawable(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "destWidthDimension"    # Lorg/appcelerator/titanium/TiDimension;
    .param p3, "destHeightDimension"    # Lorg/appcelerator/titanium/TiDimension;

    .prologue
    .line 454
    invoke-direct {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getResourceDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 455
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 456
    invoke-virtual {p0, p1, p2, p3}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 458
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 461
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 845
    const/4 v1, 0x0

    .line 847
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 849
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 873
    :cond_0
    :goto_0
    return-object v1

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TiDrawableReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem opening stream with url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 855
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v2, :cond_2

    .line 857
    :try_start_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 858
    :catch_1
    move-exception v0

    .line 859
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "TiDrawableReference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem opening stream from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 862
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v2, :cond_3

    .line 863
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBlob;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 864
    :cond_3
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeResourceId()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 866
    :try_start_2
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto/16 :goto_0

    .line 867
    :catch_2
    move-exception v0

    .line 868
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "TiDrawableReference"

    const-string v3, "Drawable resource could not be opened. Are you sure you have the resource for the current device configuration (orientation, screen size, etc.)?"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    throw v0
.end method

.method public getOrientation()I
    .locals 7

    .prologue
    .line 932
    const/4 v3, 0x0

    .line 933
    .local v3, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 935
    .local v2, "orientation":I
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeBlob()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-eqz v4, :cond_1

    .line 936
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiBlob;->getNativePath()Ljava/lang/String;

    move-result-object v3

    .line 947
    :cond_0
    :goto_0
    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiImageHelper;->getOrientation(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 937
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeFile()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-eqz v4, :cond_2

    .line 938
    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 940
    :cond_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 941
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 942
    invoke-static {}, Lorg/appcelerator/titanium/util/TiFileHelper;->getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;

    move-result-object v4

    const-string v5, "EXIF-TMP"

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFileFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 943
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 116
    const/16 v1, 0x11

    .line 117
    .local v1, "total":I
    const/16 v0, 0x25

    .line 118
    .local v0, "constant":I
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->ordinal()I

    move-result v2

    add-int/lit16 v1, v2, 0x275

    .line 119
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 120
    mul-int/lit8 v4, v1, 0x25

    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 121
    mul-int/lit8 v2, v1, 0x25

    iget-object v4, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 122
    mul-int/lit8 v2, v1, 0x25

    iget v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->resourceId:I

    add-int v1, v2, v3

    .line 123
    return v1

    .line 119
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->blob:Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 121
    :cond_2
    iget-object v3, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->file:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public isNetworkUrl()Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeBlob()Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->BLOB:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeFile()Z
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->FILE:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeNull()Z
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->NULL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeResourceId()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->RESOURCE_ID:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTypeUrl()Z
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->type:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    sget-object v1, Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;->URL:Lorg/appcelerator/titanium/view/TiDrawableReference$DrawableReferenceType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public outOfMemoryOccurred()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->oomOccurred:Z

    return v0
.end method

.method public peekBounds()Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    .locals 9

    .prologue
    .line 804
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v3

    .line 805
    .local v3, "hash":I
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 806
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    move-object v1, v5

    .line 834
    :cond_0
    :goto_0
    return-object v1

    .line 808
    :cond_1
    new-instance v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;-><init>()V

    .line 809
    .local v1, "bounds":Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->isTypeNull()Z

    move-result v5

    if-nez v5, :cond_0

    .line 811
    invoke-virtual {p0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 814
    .local v4, "stream":Ljava/io/InputStream;
    if-eqz v4, :cond_3

    .line 815
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 816
    .local v0, "bfo":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 817
    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 818
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->height:I

    .line 819
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, v1, Lorg/appcelerator/titanium/view/TiDrawableReference$Bounds;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    .end local v0    # "bfo":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    if-eqz v4, :cond_2

    .line 826
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 833
    :cond_2
    :goto_2
    sget-object v5, Lorg/appcelerator/titanium/view/TiDrawableReference;->boundsCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 821
    :cond_3
    :try_start_2
    const-string v5, "TiDrawableReference"

    const-string v6, "Could not open stream for drawable, therefore bounds checking could not be completed"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 824
    :catchall_0
    move-exception v5

    .line 825
    if-eqz v4, :cond_4

    .line 826
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 830
    :cond_4
    :goto_3
    throw v5

    .line 828
    :catch_0
    move-exception v2

    .line 829
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TiDrawableReference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem closing stream: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 828
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 829
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "TiDrawableReference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem closing stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public setAutoRotate(Z)V
    .locals 0
    .param p1, "autoRotate"    # Z

    .prologue
    .line 953
    iput-boolean p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->autoRotate:Z

    .line 954
    return-void
.end method

.method public setDecodeRetries(I)V
    .locals 0
    .param p1, "decodeRetries"    # I

    .prologue
    .line 958
    iput p1, p0, Lorg/appcelerator/titanium/view/TiDrawableReference;->decodeRetries:I

    .line 959
    return-void
.end method
