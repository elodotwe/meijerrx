.class public Lti/modules/titanium/ui/widget/TiUISlider;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISlider"


# instance fields
.field private max:I

.field private maxRange:I

.field private min:I

.field private minRange:I

.field private offset:I

.field private pos:F

.field private rightClipDrawable:Landroid/graphics/drawable/ClipDrawable;

.field private scaleFactor:I

.field private thumbDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 5
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    const/4 v4, 0x1

    .line 46
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 47
    const-string v1, "TiUISlider"

    const-string v2, "Creating a seekBar"

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->layoutParams:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    iput-boolean v4, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 52
    iput v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 55
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISlider$1;

    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUISlider$1;-><init>(Lti/modules/titanium/ui/widget/TiUISlider;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 64
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 65
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISlider;->setNativeView(Landroid/view/View;)V

    .line 66
    return-void
.end method

.method private scaledValue()F
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private updateControl()V
    .locals 9

    .prologue
    const v8, 0x7fffffff

    .line 128
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    neg-int v3, v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    .line 129
    const/16 v3, 0x64

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 130
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 131
    .local v1, "length":I
    if-lez v1, :cond_0

    div-int v3, v8, v1

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    if-ge v3, v4, :cond_0

    .line 132
    div-int v3, v8, v1

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 133
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    .line 135
    :cond_0
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v1, v3

    .line 136
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 137
    .local v2, "seekBar":Landroid/widget/SeekBar;
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v3, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 139
    .local v0, "curPos":I
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 141
    return-void

    .line 133
    .end local v0    # "curPos":I
    .end local v2    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    goto :goto_0
.end method

.method private updateRange()V
    .locals 3

    .prologue
    .line 118
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 119
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 120
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "minRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 123
    iget v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 124
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v1, "maxRange"

    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method private updateRightDrawable()V
    .locals 8

    .prologue
    .line 109
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->rightClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 111
    .local v1, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 112
    .local v2, "percent":D
    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    rsub-int v0, v4, 0x2710

    .line 113
    .local v0, "level":I
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->rightClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 115
    .end local v0    # "level":I
    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    .end local v2    # "percent":D
    :cond_0
    return-void
.end method

.method private updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v5, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    const-string v4, "thumbImage"

    invoke-static {p2, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "thumbImage":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 148
    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    .end local v0    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v0    # "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    :cond_0
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4, v5, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 154
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    .line 155
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 157
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string v4, "TiUISlider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to locate thumb image for progress bar: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 13
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 166
    const-string v9, "leftTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "leftImage":Ljava/lang/String;
    const-string v9, "rightTrackImage"

    invoke-static {p2, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "rightImage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 170
    .local v2, "leftDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 171
    .local v5, "rightDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    .line 173
    .local v8, "tfh":Lorg/appcelerator/titanium/util/TiFileHelper;
    if-eqz v3, :cond_0

    .line 174
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "leftUrl":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 176
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v4, v9, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    if-nez v2, :cond_0

    .line 178
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate left image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v4    # "leftUrl":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 184
    iget-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "rightUrl":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 186
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v9, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 187
    if-nez v5, :cond_1

    .line 188
    const-string v9, "TiUISlider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to locate right image for progress bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v7    # "rightUrl":Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_2

    if-eqz v5, :cond_5

    .line 194
    :cond_2
    const/4 v0, 0x0

    .line 195
    .local v0, "ld":Landroid/graphics/drawable/LayerDrawable;
    if-nez v5, :cond_3

    .line 196
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v10, v2, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v10, v1, v9

    .line 197
    .local v1, "lda":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 198
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    const v10, 0x102000d

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 210
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "lda":[Landroid/graphics/drawable/Drawable;
    :goto_1
    return-void

    .line 199
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    if-nez v2, :cond_4

    .line 200
    new-instance v9, Landroid/graphics/drawable/ClipDrawable;

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-direct {v9, v5, v10, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->rightClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    .line 201
    const/4 v9, 0x1

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget-object v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->rightClipDrawable:Landroid/graphics/drawable/ClipDrawable;

    aput-object v10, v1, v9

    .line 202
    .restart local v1    # "lda":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 203
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    const v10, 0x102000f

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto :goto_0

    .line 205
    .end local v1    # "lda":[Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v9, 0x2

    new-array v1, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v5, v1, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v10, v2, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v10, v1, v9

    .line 206
    .restart local v1    # "lda":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 207
    .restart local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    const/high16 v10, 0x1020000

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 208
    const/4 v9, 0x1

    const v10, 0x102000d

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    goto :goto_0

    .line 212
    .end local v0    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v1    # "lda":[Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v9, "TiUISlider"

    const-string v10, "Custom tracking images could not be loaded."

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v10, 0x0

    .line 280
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 283
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v1, v8, v9

    .line 284
    .local v1, "actualMinRange":I
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    iget v9, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    add-int v0, v8, v9

    .line 286
    .local v0, "actualMaxRange":I
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    int-to-float v9, v1

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 287
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v8, v1

    invoke-virtual {p1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 288
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v8, v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 294
    :cond_0
    :goto_0
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRightDrawable()V

    .line 296
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->thumbDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    .line 297
    .local v6, "thumb":Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 298
    .local v3, "offset":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "x"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v8, "y"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 301
    .local v5, "size":Lorg/appcelerator/kroll/KrollDict;
    const-string v8, "width"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v8, "height"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    if-eqz v6, :cond_1

    .line 304
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 305
    .local v7, "thumbBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_1

    .line 306
    const-string v8, "x"

    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v8, "y"

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v8, "width"

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v8, "height"

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v7    # "thumbBounds":Landroid/graphics/Rect;
    :cond_1
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 313
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v4

    .line 314
    .local v4, "scaledValue":F
    const-string v8, "TiUISlider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Progress "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ScaleFactor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Calculated Position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ScaledValue "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Min "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Max"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MinRange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MaxRange"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "DEBUG_MODE"

    invoke-static {v8, v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v8, "value"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v8, "thumbOffset"

    invoke-virtual {v2, v8, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v8, "thumbSize"

    invoke-virtual {v2, v8, v5}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v9, "value"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v8, "change"

    invoke-virtual {p0, v8, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 324
    return-void

    .line 289
    .end local v2    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v3    # "offset":Lorg/appcelerator/kroll/KrollDict;
    .end local v4    # "scaledValue":F
    .end local v5    # "size":Lorg/appcelerator/kroll/KrollDict;
    .end local v6    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    int-to-float v9, v0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 290
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    mul-int/2addr v8, v0

    invoke-virtual {p1, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 291
    iget v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v8, v8

    iput v8, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    goto/16 :goto_0

    .line 296
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 327
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 328
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    .line 330
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 333
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 334
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "value"

    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->scaledValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v1, "stop"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lti/modules/titanium/ui/widget/TiUISlider;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;Z)Z

    .line 336
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 73
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 75
    .local v0, "seekBar":Landroid/widget/SeekBar;
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/util/HashMap;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 78
    :cond_0
    const-string v1, "min"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "min"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 81
    :cond_1
    const-string v1, "max"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const-string v1, "max"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 84
    :cond_2
    const-string v1, "minRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 85
    const-string v1, "minRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 89
    :goto_0
    const-string v1, "maxRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 90
    const-string v1, "maxRange"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 95
    :goto_1
    const-string v1, "thumbImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateThumb(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 99
    :cond_3
    const-string v1, "leftTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "rightTrackImage"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    :cond_4
    invoke-direct {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISlider;->updateTrackingImages(Landroid/widget/SeekBar;Lorg/appcelerator/kroll/KrollDict;)V

    .line 102
    :cond_5
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 103
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 104
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRightDrawable()V

    .line 105
    return-void

    .line 87
    :cond_6
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    goto :goto_0

    .line 92
    :cond_7
    iget v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v1, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    goto :goto_1
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v5, 0x1

    .line 219
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "TiUISlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " old: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->getNativeView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 223
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const-string v2, "value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 225
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 226
    .local v0, "curPos":I
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 227
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 277
    .end local v0    # "curPos":I
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v2, "min"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    .line 230
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->min:I

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 231
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 232
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 233
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 235
    :cond_2
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 236
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 237
    .restart local v0    # "curPos":I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 238
    .end local v0    # "curPos":I
    :cond_3
    const-string v2, "minRange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 239
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    .line 240
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 241
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 242
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->minRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 244
    :cond_4
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 245
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 246
    .restart local v0    # "curPos":I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 247
    .end local v0    # "curPos":I
    :cond_5
    const-string v2, "max"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 248
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    .line 249
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->max:I

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 250
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 251
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    .line 252
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 254
    :cond_6
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 255
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 256
    .restart local v0    # "curPos":I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 257
    .end local v0    # "curPos":I
    :cond_7
    const-string v2, "maxRange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 258
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    .line 259
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateRange()V

    .line 260
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 261
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->maxRange:I

    int-to-float v2, v2

    iput v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    .line 263
    :cond_8
    invoke-direct {p0}, Lti/modules/titanium/ui/widget/TiUISlider;->updateControl()V

    .line 264
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUISlider;->scaleFactor:I

    int-to-float v2, v2

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUISlider;->pos:F

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUISlider;->offset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 265
    .restart local v0    # "curPos":I
    invoke-virtual {p0, v1, v0, v5}, Lti/modules/titanium/ui/widget/TiUISlider;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto/16 :goto_0

    .line 266
    .end local v0    # "curPos":I
    :cond_9
    const-string v2, "thumbImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 269
    const-string v2, "TiUISlider"

    const-string v3, "Dynamically changing thumbImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :cond_a
    const-string v2, "leftTrackImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "rightTrackImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 273
    :cond_b
    const-string v2, "TiUISlider"

    const-string v3, "Dynamically changing leftTrackImage or rightTrackImage is not yet supported. Native control doesn\'t draw"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 275
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method
