.class public final Lcrittercism/android/kg;
.super Lcrittercism/android/ki;


# static fields
.field public static final a:Lcrittercism/android/kg;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcrittercism/android/kq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcrittercism/android/kg;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcrittercism/android/kg;->a:Lcrittercism/android/kg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcrittercism/android/ki;-><init>()V

    .line 181
    if-nez p1, :cond_0

    .line 182
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    .line 186
    new-instance v0, Lcrittercism/android/kq;

    invoke-static {p1}, Lcrittercism/android/kg;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/kq;-><init>([B)V

    iput-object v0, p0, Lcrittercism/android/kg;->c:Lcrittercism/android/kq;

    .line 187
    return-void
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 48
    mul-int/lit8 v0, v3, 0x3

    new-array v4, v0, [B

    move v1, v2

    move v0, v2

    .line 51
    :goto_0
    if-ge v1, v3, :cond_2

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 53
    if-eqz v5, :cond_0

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    .line 54
    int-to-byte v5, v5

    aput-byte v5, v4, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 51
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    .line 57
    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 58
    add-int/lit8 v6, v0, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 59
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 61
    :cond_1
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 62
    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 63
    add-int/lit8 v6, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 64
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 68
    :cond_2
    new-array v1, v0, [B

    .line 69
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public final a_()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/16 v11, 0x5c

    const/16 v10, 0x30

    const/4 v2, 0x0

    const/16 v9, 0x10

    .line 245
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v5, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    .line 248
    :goto_0
    if-ge v4, v5, :cond_a

    .line 249
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 250
    const/16 v0, 0x20

    if-lt v7, v0, :cond_3

    const/16 v0, 0x7f

    if-ge v7, v0, :cond_3

    .line 251
    const/16 v0, 0x27

    if-eq v7, v0, :cond_0

    const/16 v0, 0x22

    if-eq v7, v0, :cond_0

    if-ne v7, v11, :cond_1

    .line 252
    :cond_0
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 255
    :cond_3
    const/16 v0, 0x7f

    if-gt v7, v0, :cond_9

    .line 256
    packed-switch v7, :pswitch_data_0

    .line 267
    :pswitch_0
    add-int/lit8 v0, v5, -0x1

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 269
    :goto_2
    if-lt v0, v10, :cond_7

    const/16 v3, 0x37

    if-gt v0, v3, :cond_7

    move v0, v1

    .line 271
    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    const/4 v3, 0x6

    :goto_4
    if-ltz v3, :cond_8

    .line 273
    shr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    .line 274
    if-ne v8, v10, :cond_4

    if-eqz v0, :cond_5

    .line 275
    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 272
    :cond_5
    add-int/lit8 v3, v3, -0x3

    goto :goto_4

    .line 257
    :pswitch_1
    const-string v0, "\\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :pswitch_2
    const-string v0, "\\r"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :pswitch_3
    const-string v0, "\\t"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move v0, v2

    .line 267
    goto :goto_2

    :cond_7
    move v0, v2

    .line 269
    goto :goto_3

    .line 279
    :cond_8
    if-nez v0, :cond_2

    .line 281
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_9
    const-string v0, "\\u"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    shr-int/lit8 v0, v7, 0xc

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    shr-int/lit8 v0, v7, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    and-int/lit8 v0, v7, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final b(Lcrittercism/android/jl;)I
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    check-cast p1, Lcrittercism/android/kg;

    iget-object v1, p1, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/kl;
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcrittercism/android/kl;->q:Lcrittercism/android/kl;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "utf8"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 206
    instance-of v0, p1, Lcrittercism/android/kg;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    check-cast p1, Lcrittercism/android/kg;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 317
    invoke-virtual {p0}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 321
    const/16 v2, 0x62

    if-gt v0, v2, :cond_0

    .line 322
    const-string v0, ""

    .line 328
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x5f

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 325
    const-string v0, "..."

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lcrittercism/android/kq;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcrittercism/android/kg;->c:Lcrittercism/android/kq;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcrittercism/android/kg;->c:Lcrittercism/android/kq;

    iget v0, v0, Lcrittercism/android/kq;->c:I

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcrittercism/android/kg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string{\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
