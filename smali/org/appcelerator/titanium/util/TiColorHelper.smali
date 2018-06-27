.class public Lorg/appcelerator/titanium/util/TiColorHelper;
.super Ljava/lang/Object;
.source "TiColorHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiColorHelper"

.field private static alphaMissingColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static argbPattern:Ljava/util/regex/Pattern;

.field private static colorTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static rgbPattern:Ljava/util/regex/Pattern;

.field static shortHexPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "#([0-9a-f])([0-9a-f])([0-9a-f])([0-9a-f]?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->shortHexPattern:Ljava/util/regex/Pattern;

    .line 26
    const-string v0, "rgb\\(([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3})\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->rgbPattern:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "rgba\\(([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3}),([0-9]{1,3})\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->argbPattern:Ljava/util/regex/Pattern;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aqua"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fuchsia"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lime"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "maroon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "navy"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "olive"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "purple"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "silver"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "teal"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->alphaMissingColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildColorTable()V
    .locals 6

    .prologue
    .line 96
    const-class v1, Lorg/appcelerator/titanium/util/TiColorHelper;

    monitor-enter v1

    .line 97
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "black"

    const/high16 v3, -0x1000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "red"

    const/high16 v3, -0x10000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "purple"

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "orange"

    const/16 v3, 0xff

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "gray"

    const v3, -0x777778

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "darkgray"

    const v3, -0xbbbbbc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "lightgray"

    const v3, -0x333334

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "cyan"

    const v3, -0xff0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "magenta"

    const v3, -0xff01

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "transparent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "aqua"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "fuchsia"

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "lime"

    const/4 v3, 0x0

    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "maroon"

    const/16 v3, 0x88

    const/4 v4, 0x0

    const/16 v5, 0x88

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "pink"

    const/16 v3, 0xff

    const/16 v4, 0xc0

    const/16 v5, 0xcb

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "navy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "silver"

    const/16 v3, 0xc0

    const/16 v4, 0xc0

    const/16 v5, 0xc0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "olive"

    const/16 v3, 0x80

    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "teal"

    const/4 v3, 0x0

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    const-string v2, "brown"

    const/16 v3, 0x99

    const/16 v4, 0x66

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 12
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "color":I
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "lowval":Ljava/lang/String;
    const/4 v4, 0x0

    .line 45
    .local v4, "m":Ljava/util/regex/Matcher;
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->shortHexPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    if-gt v2, v8, :cond_0

    .line 49
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v6    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "newColor":Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 92
    .end local v2    # "i":I
    .end local v3    # "lowval":Ljava/lang/String;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v5    # "newColor":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return v0

    .line 54
    .restart local v3    # "lowval":Ljava/lang/String;
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    :cond_2
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->rgbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_1

    .line 60
    :cond_3
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->argbPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 61
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_1

    .line 74
    :cond_4
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-le v8, v9, :cond_5

    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->alphaMissingColors:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 75
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x1000000

    or-int v0, v8, v9

    goto/16 :goto_1

    .line 77
    :cond_5
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    if-nez v8, :cond_6

    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/util/TiColorHelper;->buildColorTable()V

    .line 84
    :cond_6
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 85
    sget-object v8, Lorg/appcelerator/titanium/util/TiColorHelper;->colorTable:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_1

    .line 87
    :cond_7
    const-string v8, "TiColorHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown color: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
