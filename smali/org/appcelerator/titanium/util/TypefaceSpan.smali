.class public Lorg/appcelerator/titanium/util/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"


# static fields
.field private static sTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TypefaceSpan;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typefaceName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 25
    sget-object v0, Lorg/appcelerator/titanium/util/TypefaceSpan;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 26
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    .line 30
    sget-object v0, Lorg/appcelerator/titanium/util/TypefaceSpan;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    iget-object v1, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 48
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "p"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TypefaceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 39
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 40
    return-void
.end method
