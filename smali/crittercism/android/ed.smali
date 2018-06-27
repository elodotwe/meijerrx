.class public final Lcrittercism/android/ed;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/ed$b;,
        Lcrittercism/android/ed$a;,
        Lcrittercism/android/ed$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/ed;->a:Ljava/util/Map;

    .line 206
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 360
    :try_start_0
    const-string v0, "dalvik.system.DexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "load() requires a Dalvik VM"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 365
    :catch_1
    move-exception v0

    .line 366
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 368
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 370
    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 372
    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/eh;I)Lcrittercism/android/ea;
    .locals 3

    .prologue
    .line 253
    iget-object v0, p1, Lcrittercism/android/eh;->a:Lcrittercism/android/ei;

    invoke-virtual {p0, v0}, Lcrittercism/android/ed;->a(Lcrittercism/android/ei;)Lcrittercism/android/ed$c;

    move-result-object v0

    .line 254
    iget-object v1, v0, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already declared: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_0
    iget-object v1, p1, Lcrittercism/android/eh;->c:Ljava/lang/String;

    const-string v2, "<init>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const p2, 0x10001

    .line 274
    :cond_1
    new-instance v1, Lcrittercism/android/ed$b;

    invoke-direct {v1, p1, p2}, Lcrittercism/android/ed$b;-><init>(Lcrittercism/android/eh;I)V

    .line 275
    iget-object v0, v0, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, v1, Lcrittercism/android/ed$b;->c:Lcrittercism/android/ea;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ei;)Lcrittercism/android/ed$c;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcrittercism/android/ed;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ed$c;

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcrittercism/android/ed$c;

    invoke-direct {v0, p1}, Lcrittercism/android/ed$c;-><init>(Lcrittercism/android/ei;)V

    .line 212
    iget-object v1, p0, Lcrittercism/android/ed;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    return-object v0
.end method

.method public final a(Lcrittercism/android/ee;I)V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p1, Lcrittercism/android/ee;->a:Lcrittercism/android/ei;

    invoke-virtual {p0, v0}, Lcrittercism/android/ed;->a(Lcrittercism/android/ei;)Lcrittercism/android/ed$c;

    move-result-object v0

    .line 292
    iget-object v1, v0, Lcrittercism/android/ed$c;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already declared: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    and-int/lit16 v1, p2, -0xe0

    if-eqz v1, :cond_1

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected flag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    new-instance v1, Lcrittercism/android/ed$a;

    invoke-direct {v1, p1, p2}, Lcrittercism/android/ed$a;-><init>(Lcrittercism/android/ee;I)V

    .line 308
    iget-object v0, v0, Lcrittercism/android/ed$c;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method public final a()[B
    .locals 15

    .prologue
    const/16 v14, 0xd

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 315
    new-instance v0, Lcrittercism/android/ek;

    invoke-direct {v0}, Lcrittercism/android/ek;-><init>()V

    .line 316
    iput v14, v0, Lcrittercism/android/ek;->a:I

    .line 317
    new-instance v9, Lcrittercism/android/ha;

    invoke-direct {v9, v0}, Lcrittercism/android/ha;-><init>(Lcrittercism/android/ek;)V

    .line 319
    iget-object v0, p0, Lcrittercism/android/ed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcrittercism/android/ed$c;

    .line 320
    iget-boolean v0, v6, Lcrittercism/android/ed$c;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Undeclared type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcrittercism/android/ed$c;->a:Lcrittercism/android/ei;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declares members: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcrittercism/android/ed$c;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v11, Lcrittercism/android/ek;

    invoke-direct {v11}, Lcrittercism/android/ek;-><init>()V

    iput v14, v11, Lcrittercism/android/ek;->a:I

    iget-object v0, v6, Lcrittercism/android/ed$c;->a:Lcrittercism/android/ei;

    iget-object v1, v0, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    new-instance v0, Lcrittercism/android/gv;

    iget v2, v6, Lcrittercism/android/ed$c;->c:I

    iget-object v3, v6, Lcrittercism/android/ed$c;->d:Lcrittercism/android/ei;

    iget-object v3, v3, Lcrittercism/android/ei;->n:Lcrittercism/android/kh;

    iget-object v4, v6, Lcrittercism/android/ed$c;->f:Lcrittercism/android/ej;

    iget-object v4, v4, Lcrittercism/android/ej;->b:Lcrittercism/android/kk;

    new-instance v5, Lcrittercism/android/kg;

    iget-object v12, v6, Lcrittercism/android/ed$c;->e:Ljava/lang/String;

    invoke-direct {v5, v12}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v0 .. v5}, Lcrittercism/android/gv;-><init>(Lcrittercism/android/kh;ILcrittercism/android/kh;Lcrittercism/android/kn;Lcrittercism/android/kg;)V

    iget-object v1, v6, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/ed$b;

    new-instance v3, Lcrittercism/android/jg;

    iget-object v4, v1, Lcrittercism/android/ed$b;->c:Lcrittercism/android/ea;

    invoke-virtual {v4}, Lcrittercism/android/ea;->d()Lcrittercism/android/it;

    move-result-object v4

    invoke-direct {v3, v4}, Lcrittercism/android/jg;-><init>(Lcrittercism/android/it;)V

    iget-object v4, v1, Lcrittercism/android/ed$b;->c:Lcrittercism/android/ea;

    invoke-virtual {v4}, Lcrittercism/android/ea;->b()I

    move-result v4

    new-instance v5, Lcrittercism/android/fh;

    invoke-direct {v5, v3, v4, v11}, Lcrittercism/android/fh;-><init>(Lcrittercism/android/jg;ILcrittercism/android/ek;)V

    invoke-virtual {v5}, Lcrittercism/android/fh;->b()V

    invoke-virtual {v5}, Lcrittercism/android/fh;->a()V

    new-instance v3, Lcrittercism/android/fj;

    iget-object v4, v5, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget-object v12, v5, Lcrittercism/android/fh;->f:[I

    iget-object v13, v5, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    invoke-direct {v3, v4, v12, v13}, Lcrittercism/android/fj;-><init>(Lcrittercism/android/jg;[ILcrittercism/android/el;)V

    new-instance v4, Lcrittercism/android/er;

    iget v12, v5, Lcrittercism/android/fh;->b:I

    iget-object v5, v5, Lcrittercism/android/fh;->d:Lcrittercism/android/fd;

    iget-object v13, v5, Lcrittercism/android/fd;->b:Ljava/util/ArrayList;

    if-nez v13, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v5}, Lcrittercism/android/fd;->a()V

    iget-object v5, v5, Lcrittercism/android/fd;->a:Lcrittercism/android/fe;

    invoke-direct {v4, v12, v5, v3}, Lcrittercism/android/er;-><init>(ILcrittercism/android/fe;Lcrittercism/android/em;)V

    new-instance v3, Lcrittercism/android/he;

    iget-object v5, v1, Lcrittercism/android/ed$b;->a:Lcrittercism/android/eh;

    iget-object v5, v5, Lcrittercism/android/eh;->f:Lcrittercism/android/kd;

    iget v12, v1, Lcrittercism/android/ed$b;->b:I

    sget-object v13, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    invoke-direct {v3, v5, v12, v4, v13}, Lcrittercism/android/he;-><init>(Lcrittercism/android/kd;ILcrittercism/android/er;Lcrittercism/android/kn;)V

    iget v1, v1, Lcrittercism/android/ed$b;->b:I

    const v4, 0x1000a

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    move v1, v7

    :goto_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v1, v3}, Lcrittercism/android/gu;->a(Lcrittercism/android/he;)V

    goto :goto_1

    :cond_2
    move v1, v8

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v1, v3}, Lcrittercism/android/gu;->b(Lcrittercism/android/he;)V

    goto :goto_1

    :cond_4
    iget-object v1, v6, Lcrittercism/android/ed$c;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcrittercism/android/ed$a;

    new-instance v4, Lcrittercism/android/hc;

    iget-object v2, v1, Lcrittercism/android/ed$a;->a:Lcrittercism/android/ee;

    iget-object v2, v2, Lcrittercism/android/ee;->e:Lcrittercism/android/ju;

    iget v5, v1, Lcrittercism/android/ed$a;->b:I

    invoke-direct {v4, v2, v5}, Lcrittercism/android/hc;-><init>(Lcrittercism/android/ju;I)V

    iget v2, v1, Lcrittercism/android/ed$a;->b:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    move v2, v7

    :goto_4
    if-eqz v2, :cond_6

    iget-object v1, v1, Lcrittercism/android/ed$a;->c:Ljava/lang/Object;

    invoke-static {v1}, Lcrittercism/android/ec;->a(Ljava/lang/Object;)Lcrittercism/android/ki;

    move-result-object v1

    iget-object v2, v0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v2, v4, v1}, Lcrittercism/android/gu;->a(Lcrittercism/android/hc;Lcrittercism/android/jl;)V

    goto :goto_3

    :cond_5
    move v2, v8

    goto :goto_4

    :cond_6
    iget-object v1, v0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v1, v4}, Lcrittercism/android/gu;->a(Lcrittercism/android/hc;)V

    goto :goto_3

    :cond_7
    iget-object v1, v9, Lcrittercism/android/ha;->k:Lcrittercism/android/gw;

    invoke-virtual {v1, v0}, Lcrittercism/android/gw;->a(Lcrittercism/android/gv;)V

    goto/16 :goto_0

    .line 324
    :cond_8
    :try_start_0
    invoke-virtual {v9}, Lcrittercism/android/ha;->b()Lcrittercism/android/kr;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/kr;->a:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 333
    const/4 v3, 0x1

    .line 335
    iget-object v0, p0, Lcrittercism/android/ed;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v5, v0, [I

    move v1, v2

    .line 340
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/ei;

    .line 342
    invoke-virtual {p0, v0}, Lcrittercism/android/ed;->a(Lcrittercism/android/ei;)Lcrittercism/android/ed$c;

    move-result-object v6

    .line 343
    iget-object v0, v6, Lcrittercism/android/ed$c;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 344
    iget-object v0, v6, Lcrittercism/android/ed$c;->d:Lcrittercism/android/ei;

    if-eqz v0, :cond_2

    .line 345
    add-int/lit8 v0, v1, 0x1

    iget-object v6, v6, Lcrittercism/android/ed$c;->d:Lcrittercism/android/ei;

    invoke-virtual {v6}, Lcrittercism/android/ei;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    :goto_1
    move v1, v0

    .line 347
    goto :goto_0

    .line 348
    :cond_0
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 350
    array-length v1, v5

    move v0, v3

    :goto_2
    if-ge v2, v1, :cond_1

    aget v3, v5, v2

    .line 351
    mul-int/lit8 v0, v0, 0x1f

    .line 352
    add-int/2addr v0, v3

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 355
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
