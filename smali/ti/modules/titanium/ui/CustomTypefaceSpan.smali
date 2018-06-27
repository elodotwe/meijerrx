.class public Lti/modules/titanium/ui/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.java"


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Typeface;

    .prologue
    .line 37
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lti/modules/titanium/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    .line 39
    return-void
.end method

.method private static applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 51
    .local v1, "old":Landroid/graphics/Typeface;
    if-nez v1, :cond_2

    .line 52
    const/4 v2, 0x0

    .line 56
    .local v2, "oldStyle":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 57
    .local v0, "fake":I
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 58
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 60
    :cond_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 61
    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 63
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 64
    return-void

    .line 54
    .end local v0    # "fake":I
    .end local v2    # "oldStyle":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    .restart local v2    # "oldStyle":I
    goto :goto_0
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 42
    iget-object v0, p0, Lti/modules/titanium/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lti/modules/titanium/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 43
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 46
    iget-object v0, p0, Lti/modules/titanium/ui/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {p1, v0}, Lti/modules/titanium/ui/CustomTypefaceSpan;->applyCustomTypeFace(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    .line 47
    return-void
.end method
