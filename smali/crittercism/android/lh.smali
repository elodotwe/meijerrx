.class public final Lcrittercism/android/lh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/lh$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;

.field private static final i:Ljava/util/Map;

.field private static final j:Ljava/util/Map;

.field private static final k:Ljava/util/Map;


# instance fields
.field private final b:Ljava/lang/Class;

.field private c:Ljava/lang/ClassLoader;

.field private d:Ljava/lang/reflect/InvocationHandler;

.field private e:Ljava/io/File;

.field private f:[Ljava/lang/Class;

.field private g:[Ljava/lang/Object;

.field private h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcrittercism/android/lh;->a:Ljava/util/Map;

    .line 743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 744
    sput-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcrittercism/android/lh;->j:Ljava/util/Map;

    .line 757
    sget-object v0, Lcrittercism/android/lh;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 758
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v1

    .line 759
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v0

    .line 760
    const-string v3, "valueOf"

    const/4 v4, 0x1

    new-array v4, v4, [Lcrittercism/android/ei;

    aput-object v1, v4, v6

    invoke-virtual {v0, v0, v3, v4}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v0

    .line 761
    sget-object v3, Lcrittercism/android/lh;->j:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 774
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 775
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->a:Lcrittercism/android/ei;

    const-string v4, "booleanValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->f:Lcrittercism/android/ei;

    const-string v4, "intValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->b:Lcrittercism/android/ei;

    const-string v4, "byteValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->g:Lcrittercism/android/ei;

    const-string v4, "longValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->h:Lcrittercism/android/ei;

    const-string v4, "shortValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->e:Lcrittercism/android/ei;

    const-string v4, "floatValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->d:Lcrittercism/android/ei;

    const-string v4, "doubleValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-static {v2}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v2

    sget-object v3, Lcrittercism/android/ei;->c:Lcrittercism/android/ei;

    const-string v4, "charValue"

    new-array v5, v6, [Lcrittercism/android/ei;

    invoke-virtual {v2, v3, v4, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sput-object v0, Lcrittercism/android/lh;->k:Ljava/util/Map;

    .line 784
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-class v0, Lcrittercism/android/lh;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/lh;->c:Ljava/lang/ClassLoader;

    .line 138
    new-array v0, v1, [Ljava/lang/Class;

    iput-object v0, p0, Lcrittercism/android/lh;->f:[Ljava/lang/Class;

    .line 139
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcrittercism/android/lh;->g:[Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcrittercism/android/lh;->h:Ljava/util/Set;

    .line 143
    iput-object p1, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    .line 144
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcrittercism/android/lh;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcrittercism/android/lh;

    invoke-direct {v0, p0}, Lcrittercism/android/lh;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static a(Lcrittercism/android/ed;Lcrittercism/android/ei;Lcrittercism/android/ei;Ljava/lang/Class;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 572
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v0

    .line 573
    const-class v1, [Ljava/lang/reflect/Method;

    invoke-static {v1}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v1

    .line 574
    const-string v2, "$__handler"

    invoke-virtual {p1, v0, v2}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;)Lcrittercism/android/ee;

    move-result-object v0

    .line 576
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcrittercism/android/ed;->a(Lcrittercism/android/ee;I)V

    .line 577
    const-string v0, "$__methodArray"

    invoke-virtual {p1, v1, v0}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;)Lcrittercism/android/ee;

    move-result-object v0

    .line 579
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcrittercism/android/ed;->a(Lcrittercism/android/ee;I)V

    .line 580
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/reflect/Constructor;

    array-length v9, v6

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v0, v6, v8

    .line 581
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    .line 582
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Lcrittercism/android/ei;

    move v0, v7

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    :cond_0
    invoke-virtual {p1, v2}, Lcrittercism/android/ei;->a([Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v0

    .line 586
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcrittercism/android/ed;->a(Lcrittercism/android/eh;I)Lcrittercism/android/ea;

    move-result-object v0

    .line 587
    invoke-virtual {v0, p1}, Lcrittercism/android/ea;->b(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v4

    .line 588
    array-length v1, v2

    new-array v5, v1, [Lcrittercism/android/eg;

    move v1, v7

    .line 589
    :goto_2
    array-length v3, v5

    if-ge v1, v3, :cond_1

    .line 590
    aget-object v3, v2, v1

    invoke-virtual {v0, v1, v3}, Lcrittercism/android/ea;->a(ILcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v3

    aput-object v3, v5, v1

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 592
    :cond_1
    invoke-virtual {p2, v2}, Lcrittercism/android/ei;->a([Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v2

    .line 593
    invoke-virtual {v2}, Lcrittercism/android/eh;->a()Lcrittercism/android/kj;

    move-result-object v1

    invoke-static {v1}, Lcrittercism/android/jh;->d(Lcrittercism/android/kj;)Lcrittercism/android/jf;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 594
    invoke-virtual {v0}, Lcrittercism/android/ea;->c()V

    .line 580
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 596
    :cond_3
    return-void
.end method

.method private static a(Lcrittercism/android/ed;Lcrittercism/android/ei;[Ljava/lang/reflect/Method;Lcrittercism/android/ei;)V
    .locals 41

    .prologue
    .line 375
    const-class v5, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v5}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v15

    .line 376
    const-class v5, [Ljava/lang/reflect/Method;

    invoke-static {v5}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v16

    .line 377
    const-string v5, "$__handler"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;)Lcrittercism/android/ee;

    move-result-object v17

    .line 379
    const-string v5, "$__methodArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;)Lcrittercism/android/ee;

    move-result-object v18

    .line 381
    const-class v5, Ljava/lang/reflect/Method;

    invoke-static {v5}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v19

    .line 382
    const-class v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v20

    .line 383
    sget-object v5, Lcrittercism/android/ei;->j:Lcrittercism/android/ei;

    const-string v6, "invoke"

    const/4 v7, 0x3

    new-array v7, v7, [Lcrittercism/android/ei;

    const/4 v8, 0x0

    sget-object v9, Lcrittercism/android/ei;->j:Lcrittercism/android/ei;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v19, v7, v8

    const/4 v8, 0x2

    aput-object v20, v7, v8

    invoke-virtual {v15, v5, v6, v7}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v21

    .line 385
    const/4 v5, 0x0

    move v11, v5

    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v11, v5, :cond_b

    .line 429
    aget-object v22, p2, v11

    .line 430
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 431
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v23

    .line 432
    move-object/from16 v0, v23

    array-length v5, v0

    new-array v0, v5, [Lcrittercism/android/ei;

    move-object/from16 v24, v0

    .line 433
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v24

    array-length v7, v0

    if-ge v5, v7, :cond_0

    .line 434
    aget-object v7, v23, v5

    invoke-static {v7}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v7

    aput-object v7, v24, v5

    .line 433
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 436
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v25

    .line 437
    invoke-static/range {v25 .. v25}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v26

    .line 438
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v27

    .line 439
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v6, v2}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v5

    .line 440
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ed;->a(Lcrittercism/android/eh;I)Lcrittercism/android/ea;

    move-result-object v28

    .line 441
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->b(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v29

    .line 442
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v30

    .line 443
    sget-object v5, Lcrittercism/android/ei;->j:Lcrittercism/android/ei;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v31

    .line 444
    sget-object v5, Lcrittercism/android/ei;->f:Lcrittercism/android/ei;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v32

    .line 445
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v33

    .line 446
    sget-object v5, Lcrittercism/android/ei;->f:Lcrittercism/android/ei;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v14

    .line 447
    sget-object v5, Lcrittercism/android/ei;->j:Lcrittercism/android/ei;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v13

    .line 448
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v34

    .line 449
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v35

    .line 450
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v36

    .line 451
    sget-object v5, Lcrittercism/android/ei;->f:Lcrittercism/android/ei;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v37

    .line 452
    sget-object v5, Lcrittercism/android/lh;->i:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 453
    const/4 v6, 0x0

    .line 454
    if-eqz v5, :cond_c

    .line 455
    invoke-static {v5}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v5

    move-object v12, v5

    .line 457
    :goto_2
    move-object/from16 v0, v23

    array-length v5, v0

    new-array v0, v5, [Lcrittercism/android/eg;

    move-object/from16 v38, v0

    .line 458
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v39

    .line 459
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v40

    .line 461
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Ljava/lang/Object;)V

    .line 462
    new-instance v5, Lcrittercism/android/jj;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v6, v6, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v6}, Lcrittercism/android/jh;->j(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    sget-object v8, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    move-object/from16 v0, v28

    iget-object v9, v0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    move-object/from16 v0, v18

    iget-object v10, v0, Lcrittercism/android/ee;->e:Lcrittercism/android/ju;

    invoke-direct/range {v5 .. v10}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 463
    new-instance v5, Lcrittercism/android/jk;

    move-object/from16 v0, v36

    iget-object v6, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v6, v6, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v6}, Lcrittercism/android/jh;->f(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual/range {v35 .. v35}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v8

    invoke-virtual/range {v37 .. v37}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v9

    invoke-static {v8, v9}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v9, v0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    invoke-direct {v5, v6, v7, v8, v9}, Lcrittercism/android/jk;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;)V

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 464
    move-object/from16 v0, v24

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Ljava/lang/Object;)V

    .line 465
    new-instance v5, Lcrittercism/android/jj;

    move-object/from16 v0, v33

    iget-object v6, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v6, v6, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v6}, Lcrittercism/android/jh;->h(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {v14}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v8

    invoke-static {v8}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v9, v0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    move-object/from16 v0, v33

    iget-object v10, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v10, v10, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    invoke-direct/range {v5 .. v10}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 466
    new-instance v5, Lcrittercism/android/jj;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v6, v6, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v6}, Lcrittercism/android/jh;->i(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual/range {v29 .. v29}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v8

    invoke-static {v8}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v8

    move-object/from16 v0, v28

    iget-object v9, v0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    move-object/from16 v0, v17

    iget-object v10, v0, Lcrittercism/android/ee;->e:Lcrittercism/android/ju;

    invoke-direct/range {v5 .. v10}, Lcrittercism/android/jj;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;Lcrittercism/android/jl;)V

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    const/4 v5, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Z)V

    .line 469
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Ljava/lang/Object;)V

    .line 470
    new-instance v35, Lcrittercism/android/ef;

    invoke-direct/range {v35 .. v35}, Lcrittercism/android/ef;-><init>()V

    .line 471
    sget-object v5, Lcrittercism/android/eb;->c:Lcrittercism/android/eb;

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;)V

    move-object/from16 v0, v40

    iget-object v6, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v6, v6, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    move-object/from16 v0, v30

    iget-object v7, v0, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v7, v7, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v6, v7}, Lcrittercism/android/kk;->a(Lcrittercism/android/kl;Lcrittercism/android/kl;)Lcrittercism/android/kk;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcrittercism/android/eb;->a(Lcrittercism/android/kn;)Lcrittercism/android/jf;

    move-result-object v5

    new-instance v6, Lcrittercism/android/jb;

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    const/4 v8, 0x0

    invoke-virtual/range {v40 .. v40}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v9

    invoke-virtual/range {v30 .. v30}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v10

    invoke-static {v9, v10}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v9

    invoke-direct {v6, v5, v7, v8, v9}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 475
    const/4 v5, 0x0

    move v14, v5

    :goto_3
    move-object/from16 v0, v24

    array-length v5, v0

    if-ge v14, v5, :cond_2

    .line 476
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Ljava/lang/Object;)V

    .line 477
    aget-object v5, v24, v14

    move-object/from16 v0, v28

    invoke-virtual {v0, v14, v5}, Lcrittercism/android/ea;->a(ILcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v5

    .line 478
    sget-object v6, Lcrittercism/android/lh;->j:Ljava/util/Map;

    iget-object v7, v5, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcrittercism/android/eh;

    if-nez v7, :cond_1

    .line 479
    :goto_4
    new-instance v6, Lcrittercism/android/jk;

    iget-object v7, v5, Lcrittercism/android/eg;->a:Lcrittercism/android/ei;

    iget-object v7, v7, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-static {v7}, Lcrittercism/android/jh;->g(Lcrittercism/android/km;)Lcrittercism/android/jf;

    move-result-object v7

    move-object/from16 v0, v28

    iget-object v8, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    invoke-virtual {v5}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v9

    invoke-virtual/range {v32 .. v32}, Lcrittercism/android/eg;->b()Lcrittercism/android/jc;

    move-result-object v10

    invoke-static {v5, v9, v10}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v5

    move-object/from16 v0, v28

    iget-object v9, v0, Lcrittercism/android/ea;->d:Lcrittercism/android/kk;

    invoke-direct {v6, v7, v8, v5, v9}, Lcrittercism/android/jk;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/kn;)V

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    .line 475
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_3

    .line 478
    :cond_1
    const/4 v6, 0x1

    new-array v10, v6, [Lcrittercism/android/eg;

    const/4 v6, 0x0

    aput-object v5, v10, v6

    invoke-virtual {v7}, Lcrittercism/android/eh;->a()Lcrittercism/android/kj;

    move-result-object v5

    invoke-static {v5}, Lcrittercism/android/jh;->a(Lcrittercism/android/kj;)Lcrittercism/android/jf;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v5, v28

    move-object v8, v13

    invoke-virtual/range {v5 .. v10}, Lcrittercism/android/ea;->a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    move-object v5, v13

    goto :goto_4

    .line 481
    :cond_2
    const/4 v5, 0x3

    new-array v10, v5, [Lcrittercism/android/eg;

    const/4 v5, 0x0

    aput-object v29, v10, v5

    const/4 v5, 0x1

    aput-object v36, v10, v5

    const/4 v5, 0x2

    aput-object v33, v10, v5

    invoke-virtual/range {v21 .. v21}, Lcrittercism/android/eh;->a()Lcrittercism/android/kj;

    move-result-object v5

    invoke-static {v5}, Lcrittercism/android/jh;->e(Lcrittercism/android/kj;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v5, v28

    move-object/from16 v7, v21

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    invoke-virtual/range {v5 .. v10}, Lcrittercism/android/ea;->a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 483
    sget-object v5, Lcrittercism/android/lh;->k:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v12, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Lcrittercism/android/eg;)V

    sget-object v5, Lcrittercism/android/lh;->k:Ljava/util/Map;

    move-object/from16 v0, v25

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcrittercism/android/eh;

    const/4 v5, 0x0

    new-array v10, v5, [Lcrittercism/android/eg;

    invoke-virtual {v7}, Lcrittercism/android/eh;->a()Lcrittercism/android/kj;

    move-result-object v5

    invoke-static {v5}, Lcrittercism/android/jh;->b(Lcrittercism/android/kj;)Lcrittercism/android/jf;

    move-result-object v6

    move-object/from16 v5, v28

    move-object/from16 v8, v34

    move-object v9, v12

    invoke-virtual/range {v5 .. v10}, Lcrittercism/android/ea;->a(Lcrittercism/android/jf;Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;)V

    .line 489
    :goto_5
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;)V

    move-object/from16 v0, v35

    iget-boolean v5, v0, Lcrittercism/android/ef;->c:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "already marked"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 483
    :cond_3
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v28 .. v28}, Lcrittercism/android/ea;->c()V

    goto :goto_5

    :cond_4
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;Lcrittercism/android/eg;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;)V

    goto :goto_5

    .line 489
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, v35

    iput-boolean v5, v0, Lcrittercism/android/ef;->c:Z

    move-object/from16 v0, v28

    iget-object v5, v0, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    if-eqz v5, :cond_6

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/ef;)V

    new-instance v5, Lcrittercism/android/jb;

    sget-object v6, Lcrittercism/android/jh;->s:Lcrittercism/android/jf;

    move-object/from16 v0, v28

    iget-object v7, v0, Lcrittercism/android/ea;->c:Lcrittercism/android/ji;

    const/4 v8, 0x0

    sget-object v9, Lcrittercism/android/jd;->a:Lcrittercism/android/jd;

    invoke-direct {v5, v6, v7, v8, v9}, Lcrittercism/android/jb;-><init>(Lcrittercism/android/jf;Lcrittercism/android/ji;Lcrittercism/android/jc;Lcrittercism/android/jd;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v5, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/iw;Lcrittercism/android/ef;)V

    :cond_6
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    iput-object v0, v1, Lcrittercism/android/ea;->a:Lcrittercism/android/ef;

    .line 490
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v38

    array-length v6, v0

    if-ge v5, v6, :cond_7

    .line 491
    aget-object v6, v24, v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ea;->a(ILcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v6

    aput-object v6, v38, v5

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 493
    :cond_7
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 494
    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v5, v2, v3}, Lcrittercism/android/ea;->a(Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 495
    invoke-virtual/range {v28 .. v28}, Lcrittercism/android/ea;->c()V

    .line 510
    :goto_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "super$"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    const/16 v8, 0x5f

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x5b

    const/16 v8, 0x5f

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3b

    const/16 v8, 0x5f

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Lcrittercism/android/ei;->a(Lcrittercism/android/ei;Ljava/lang/String;[Lcrittercism/android/ei;)Lcrittercism/android/eh;

    move-result-object v5

    .line 512
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcrittercism/android/ed;->a(Lcrittercism/android/eh;I)Lcrittercism/android/ea;

    move-result-object v6

    .line 513
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcrittercism/android/ea;->b(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v7

    .line 514
    move-object/from16 v0, v23

    array-length v5, v0

    new-array v8, v5, [Lcrittercism/android/eg;

    .line 515
    const/4 v5, 0x0

    :goto_8
    array-length v9, v8

    if-ge v5, v9, :cond_9

    .line 516
    aget-object v9, v24, v5

    invoke-virtual {v6, v5, v9}, Lcrittercism/android/ea;->a(ILcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v9

    aput-object v9, v8, v5

    .line 515
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 497
    :cond_8
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-static {v0, v1, v2, v3, v4}, Lcrittercism/android/lh;->a(Lcrittercism/android/eh;Lcrittercism/android/ea;Lcrittercism/android/eg;[Lcrittercism/android/eg;Lcrittercism/android/eg;)V

    .line 498
    move-object/from16 v0, v28

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;)V

    goto :goto_7

    .line 518
    :cond_9
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 519
    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v5, v7, v8}, Lcrittercism/android/ea;->a(Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 520
    invoke-virtual {v6}, Lcrittercism/android/ea;->c()V

    .line 385
    :goto_9
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto/16 :goto_0

    .line 522
    :cond_a
    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lcrittercism/android/ea;->a(Lcrittercism/android/ei;)Lcrittercism/android/eg;

    move-result-object v5

    .line 523
    move-object/from16 v0, v27

    invoke-static {v0, v6, v7, v8, v5}, Lcrittercism/android/lh;->a(Lcrittercism/android/eh;Lcrittercism/android/ea;Lcrittercism/android/eg;[Lcrittercism/android/eg;Lcrittercism/android/eg;)V

    .line 524
    invoke-virtual {v6, v5}, Lcrittercism/android/ea;->a(Lcrittercism/android/eg;)V

    goto :goto_9

    .line 527
    :cond_b
    return-void

    :cond_c
    move-object v12, v6

    goto/16 :goto_2
.end method

.method private static a(Lcrittercism/android/eh;Lcrittercism/android/ea;Lcrittercism/android/eg;[Lcrittercism/android/eg;Lcrittercism/android/eg;)V
    .locals 0

    .prologue
    .line 532
    invoke-virtual {p1, p0, p4, p2, p3}, Lcrittercism/android/ea;->a(Lcrittercism/android/eh;Lcrittercism/android/eg;Lcrittercism/android/eg;[Lcrittercism/android/eg;)V

    .line 533
    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 6

    .prologue
    .line 654
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 655
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 659
    new-instance v4, Lcrittercism/android/lh$a;

    invoke-direct {v4, v3}, Lcrittercism/android/lh$a;-><init>(Ljava/lang/reflect/Method;)V

    .line 660
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-interface {p0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_0

    .line 668
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "finalize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 686
    :cond_3
    new-instance v4, Lcrittercism/android/lh$a;

    invoke-direct {v4, v3}, Lcrittercism/android/lh$a;-><init>(Ljava/lang/reflect/Method;)V

    .line 689
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 692
    invoke-interface {p0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 696
    :cond_4
    return-void
.end method

.method private static a(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 565
    if-nez p0, :cond_0

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    return-void
.end method

.method private b()Ljava/lang/Class;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 247
    sget-object v0, Lcrittercism/android/lh;->a:Ljava/util/Map;

    iget-object v1, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 248
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/lh;->c:Ljava/lang/ClassLoader;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcrittercism/android/lh;->h:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return-object v0

    .line 255
    :cond_0
    new-instance v1, Lcrittercism/android/ed;

    invoke-direct {v1}, Lcrittercism/android/ed;-><init>()V

    .line 256
    iget-object v0, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_Proxy"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/ei;->a(Ljava/lang/String;)Lcrittercism/android/ei;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-static {v3}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v3

    .line 259
    iget-object v4, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-static {v1, v0, v3, v4}, Lcrittercism/android/lh;->a(Lcrittercism/android/ed;Lcrittercism/android/ei;Lcrittercism/android/ei;Ljava/lang/Class;)V

    .line 260
    invoke-direct {p0}, Lcrittercism/android/lh;->d()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 261
    invoke-static {v1, v0, v4, v3}, Lcrittercism/android/lh;->a(Lcrittercism/android/ed;Lcrittercism/android/ei;[Ljava/lang/reflect/Method;Lcrittercism/android/ei;)V

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".generated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcrittercism/android/lh;->c()[Lcrittercism/android/ei;

    move-result-object v6

    invoke-virtual {v1, v0}, Lcrittercism/android/ed;->a(Lcrittercism/android/ei;)Lcrittercism/android/ed$c;

    move-result-object v7

    iget-boolean v8, v7, Lcrittercism/android/ed$c;->b:Z

    if-eqz v8, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "already declared: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean v9, v7, Lcrittercism/android/ed$c;->b:Z

    iput v9, v7, Lcrittercism/android/ed$c;->c:I

    iput-object v3, v7, Lcrittercism/android/ed$c;->d:Lcrittercism/android/ei;

    iput-object v5, v7, Lcrittercism/android/ed$c;->e:Ljava/lang/String;

    new-instance v0, Lcrittercism/android/ej;

    invoke-direct {v0, v6}, Lcrittercism/android/ej;-><init>([Lcrittercism/android/ei;)V

    iput-object v0, v7, Lcrittercism/android/ed$c;->f:Lcrittercism/android/ej;

    .line 264
    iget-object v3, p0, Lcrittercism/android/lh;->c:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lcrittercism/android/lh;->e:Ljava/io/File;

    if-nez v0, :cond_2

    const-string v0, "dexmaker.dexcache"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lcrittercism/android/ed;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5, v0, v3}, Lcrittercism/android/ed;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 266
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 275
    :try_start_1
    const-string v1, "$__methodArray"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 276
    sget-object v1, Lcrittercism/android/lh;->a:Ljava/util/Map;

    iget-object v2, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 264
    :cond_3
    new-instance v0, Lcrittercism/android/dz;

    invoke-direct {v0}, Lcrittercism/android/dz;-><init>()V

    invoke-static {}, Lcrittercism/android/dz;->a()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1}, Lcrittercism/android/ed;->a()[B

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v6, Ljava/util/jar/JarOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Ljava/util/jar/JarEntry;

    const-string v8, "classes.dex"

    invoke-direct {v7, v8}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    array-length v8, v1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/jar/JarEntry;->setSize(J)V

    invoke-virtual {v6, v7}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v6, v1}, Ljava/util/jar/JarOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    invoke-virtual {v6}, Ljava/util/jar/JarOutputStream;->close()V

    invoke-static {v5, v0, v3}, Lcrittercism/android/ed;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 269
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot proxy inaccessible class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 271
    :catch_1
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 275
    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private c()[Lcrittercism/android/ei;
    .locals 5

    .prologue
    .line 607
    iget-object v0, p0, Lcrittercism/android/lh;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Lcrittercism/android/ei;

    .line 608
    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lcrittercism/android/lh;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 610
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    .line 612
    :cond_0
    return-object v3
.end method

.method private d()[Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 620
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 621
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 622
    iget-object v0, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    :goto_0
    if-eqz v0, :cond_0

    .line 623
    invoke-static {v3, v4, v0}, Lcrittercism/android/lh;->a(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 622
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 625
    :cond_0
    iget-object v0, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 626
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 627
    invoke-static {v3, v4, v7}, Lcrittercism/android/lh;->a(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 625
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 630
    :cond_2
    iget-object v0, p0, Lcrittercism/android/lh;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 631
    invoke-static {v3, v4, v0}, Lcrittercism/android/lh;->a(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_3

    .line 634
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/reflect/Method;

    .line 636
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/lh$a;

    .line 637
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcrittercism/android/lh$a;->a:Ljava/lang/reflect/Method;

    aput-object v0, v4, v1

    move v1, v2

    goto :goto_4

    .line 642
    :cond_4
    new-instance v0, Lcrittercism/android/lh$1;

    invoke-direct {v0, p0}, Lcrittercism/android/lh$1;-><init>(Lcrittercism/android/lh;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 649
    return-object v4
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcrittercism/android/lh;
    .locals 3

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcrittercism/android/lh;->e:Ljava/io/File;

    .line 172
    iget-object v0, p0, Lcrittercism/android/lh;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 173
    return-object p0
.end method

.method public final a(Ljava/lang/reflect/InvocationHandler;)Lcrittercism/android/lh;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcrittercism/android/lh;->d:Ljava/lang/reflect/InvocationHandler;

    .line 162
    return-object p0
.end method

.method public final varargs a([Ljava/lang/Class;)Lcrittercism/android/lh;
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcrittercism/android/lh;->f:[Ljava/lang/Class;

    .line 193
    return-object p0
.end method

.method public final varargs a([Ljava/lang/Object;)Lcrittercism/android/lh;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcrittercism/android/lh;->g:[Ljava/lang/Object;

    .line 188
    return-object p0
.end method

.method public final a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 208
    iget-object v0, p0, Lcrittercism/android/lh;->d:Ljava/lang/reflect/InvocationHandler;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "handler == null"

    invoke-static {v0, v3}, Lcrittercism/android/lh;->a(ZLjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcrittercism/android/lh;->f:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v3, p0, Lcrittercism/android/lh;->g:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    :goto_1
    const-string v0, "constructorArgValues.length != constructorArgTypes.length"

    invoke-static {v1, v0}, Lcrittercism/android/lh;->a(ZLjava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcrittercism/android/lh;->b()Ljava/lang/Class;

    move-result-object v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/lh;->f:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :try_start_1
    iget-object v1, p0, Lcrittercism/android/lh;->g:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcrittercism/android/lh;->d:Ljava/lang/reflect/InvocationHandler;

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "$__handler"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5

    .line 233
    return-object v0

    :cond_0
    move v0, v2

    .line 208
    goto :goto_0

    :cond_1
    move v1, v2

    .line 209
    goto :goto_1

    .line 216
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No constructor for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/lh;->b:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with parameter types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcrittercism/android/lh;->f:[Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :catch_1
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 225
    :catch_2
    move-exception v0

    .line 227
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 228
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid proxy instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
