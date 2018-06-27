.class public final Lcrittercism/android/jf;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcrittercism/android/kn;

.field public final c:I

.field public final d:Z

.field final e:Ljava/lang/String;

.field private final f:Lcrittercism/android/kl;

.field private final g:Lcrittercism/android/kn;


# direct methods
.method public constructor <init>(ILcrittercism/android/kl;Lcrittercism/android/kn;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 161
    sget-object v4, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/jf;-><init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;IZLjava/lang/String;)V

    .line 163
    return-void
.end method

.method private constructor <init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;IZLjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    if-nez p3, :cond_1

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    if-nez p4, :cond_2

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptions == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2
    if-lez p5, :cond_3

    if-le p5, v1, :cond_4

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus branchingness"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4
    invoke-interface {p4}, Lcrittercism/android/kn;->a()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq p5, v1, :cond_5

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "exceptions / branchingness mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    iput p1, p0, Lcrittercism/android/jf;->a:I

    .line 119
    iput-object p2, p0, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    .line 120
    iput-object p3, p0, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    .line 121
    iput-object p4, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    .line 122
    iput p5, p0, Lcrittercism/android/jf;->c:I

    .line 123
    iput-boolean p6, p0, Lcrittercism/android/jf;->d:Z

    .line 124
    iput-object p7, p0, Lcrittercism/android/jf;->e:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 196
    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/jf;-><init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;IZLjava/lang/String;)V

    .line 198
    return-void
.end method

.method public constructor <init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 177
    sget-object v4, Lcrittercism/android/kk;->a:Lcrittercism/android/kk;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/jf;-><init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;IZLjava/lang/String;)V

    .line 179
    return-void
.end method

.method public constructor <init>(ILcrittercism/android/kn;Lcrittercism/android/kn;)V
    .locals 8

    .prologue
    .line 211
    sget-object v2, Lcrittercism/android/kl;->i:Lcrittercism/android/kl;

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcrittercism/android/jf;-><init>(ILcrittercism/android/kl;Lcrittercism/android/kn;Lcrittercism/android/kn;IZLjava/lang/String;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    if-ne p0, p1, :cond_1

    .line 229
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 223
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcrittercism/android/jf;

    if-nez v2, :cond_2

    move v0, v1

    .line 224
    goto :goto_0

    .line 227
    :cond_2
    check-cast p1, Lcrittercism/android/jf;

    .line 229
    .end local p1    # "other":Ljava/lang/Object;
    iget v2, p0, Lcrittercism/android/jf;->a:I

    iget v3, p1, Lcrittercism/android/jf;->a:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcrittercism/android/jf;->c:I

    iget v3, p1, Lcrittercism/android/jf;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    iget-object v3, p1, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    iget-object v3, p1, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    iget-object v3, p1, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcrittercism/android/jf;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcrittercism/android/jf;->c:I

    add-int/2addr v0, v1

    .line 240
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    invoke-virtual {v1}, Lcrittercism/android/kl;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x0

    .line 250
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x28

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 252
    const-string v0, "Rop{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    iget v0, p0, Lcrittercism/android/jf;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    iget-object v0, p0, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    sget-object v3, Lcrittercism/android/kl;->i:Lcrittercism/android/kl;

    if-eq v0, v3, :cond_2

    .line 257
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    iget-object v0, p0, Lcrittercism/android/jf;->f:Lcrittercism/android/kl;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 263
    :goto_1
    const-string v0, " <-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    iget-object v0, p0, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    invoke-interface {v0}, Lcrittercism/android/kn;->a()I

    move-result v3

    .line 266
    if-nez v3, :cond_3

    .line 267
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcrittercism/android/jf;->d:Z

    if-eqz v0, :cond_1

    .line 276
    const-string v0, " call"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_1
    iget-object v0, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-interface {v0}, Lcrittercism/android/kn;->a()I

    move-result v3

    .line 280
    if-eqz v3, :cond_5

    .line 281
    const-string v0, " throws"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 282
    :goto_2
    if-ge v0, v3, :cond_6

    .line 283
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 284
    iget-object v1, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-interface {v1, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v1

    .line 285
    sget-object v4, Lcrittercism/android/kl;->r:Lcrittercism/android/kl;

    if-ne v1, v4, :cond_4

    .line 286
    const-string v1, "<any>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 254
    :pswitch_1
    const-string v0, "nop"

    goto :goto_0

    :pswitch_2
    const-string v0, "move"

    goto :goto_0

    :pswitch_3
    const-string v0, "move-param"

    goto :goto_0

    :pswitch_4
    const-string v0, "move-exception"

    goto :goto_0

    :pswitch_5
    const-string v0, "const"

    goto :goto_0

    :pswitch_6
    const-string v0, "goto"

    goto :goto_0

    :pswitch_7
    const-string v0, "if-eq"

    goto :goto_0

    :pswitch_8
    const-string v0, "if-ne"

    goto :goto_0

    :pswitch_9
    const-string v0, "if-lt"

    goto :goto_0

    :pswitch_a
    const-string v0, "if-ge"

    goto :goto_0

    :pswitch_b
    const-string v0, "if-le"

    goto :goto_0

    :pswitch_c
    const-string v0, "if-gt"

    goto :goto_0

    :pswitch_d
    const-string v0, "switch"

    goto :goto_0

    :pswitch_e
    const-string v0, "add"

    goto :goto_0

    :pswitch_f
    const-string v0, "sub"

    goto :goto_0

    :pswitch_10
    const-string v0, "mul"

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "div"

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "rem"

    goto/16 :goto_0

    :pswitch_13
    const-string v0, "neg"

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "and"

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "or"

    goto/16 :goto_0

    :pswitch_16
    const-string v0, "xor"

    goto/16 :goto_0

    :pswitch_17
    const-string v0, "shl"

    goto/16 :goto_0

    :pswitch_18
    const-string v0, "shr"

    goto/16 :goto_0

    :pswitch_19
    const-string v0, "ushr"

    goto/16 :goto_0

    :pswitch_1a
    const-string v0, "not"

    goto/16 :goto_0

    :pswitch_1b
    const-string v0, "cmpl"

    goto/16 :goto_0

    :pswitch_1c
    const-string v0, "cmpg"

    goto/16 :goto_0

    :pswitch_1d
    const-string v0, "conv"

    goto/16 :goto_0

    :pswitch_1e
    const-string v0, "to-byte"

    goto/16 :goto_0

    :pswitch_1f
    const-string v0, "to-char"

    goto/16 :goto_0

    :pswitch_20
    const-string v0, "to-short"

    goto/16 :goto_0

    :pswitch_21
    const-string v0, "return"

    goto/16 :goto_0

    :pswitch_22
    const-string v0, "array-length"

    goto/16 :goto_0

    :pswitch_23
    const-string v0, "throw"

    goto/16 :goto_0

    :pswitch_24
    const-string v0, "monitor-enter"

    goto/16 :goto_0

    :pswitch_25
    const-string v0, "monitor-exit"

    goto/16 :goto_0

    :pswitch_26
    const-string v0, "aget"

    goto/16 :goto_0

    :pswitch_27
    const-string v0, "aput"

    goto/16 :goto_0

    :pswitch_28
    const-string v0, "new-instance"

    goto/16 :goto_0

    :pswitch_29
    const-string v0, "new-array"

    goto/16 :goto_0

    :pswitch_2a
    const-string v0, "filled-new-array"

    goto/16 :goto_0

    :pswitch_2b
    const-string v0, "check-cast"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "instance-of"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "get-field"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "get-static"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "put-field"

    goto/16 :goto_0

    :pswitch_30
    const-string v0, "put-static"

    goto/16 :goto_0

    :pswitch_31
    const-string v0, "invoke-static"

    goto/16 :goto_0

    :pswitch_32
    const-string v0, "invoke-virtual"

    goto/16 :goto_0

    :pswitch_33
    const-string v0, "invoke-super"

    goto/16 :goto_0

    :pswitch_34
    const-string v0, "invoke-direct"

    goto/16 :goto_0

    :pswitch_35
    const-string v0, "invoke-interface"

    goto/16 :goto_0

    :pswitch_36
    const-string v0, "move-result"

    goto/16 :goto_0

    :pswitch_37
    const-string v0, "move-result-pseudo"

    goto/16 :goto_0

    :pswitch_38
    const-string v0, "fill-array-data"

    goto/16 :goto_0

    .line 260
    :cond_2
    const-string v0, " ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 269
    :goto_4
    if-ge v0, v3, :cond_0

    .line 270
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    iget-object v4, p0, Lcrittercism/android/jf;->g:Lcrittercism/android/kn;

    invoke-interface {v4, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 288
    :cond_4
    iget-object v1, p0, Lcrittercism/android/jf;->b:Lcrittercism/android/kn;

    invoke-interface {v1, v0}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 292
    :cond_5
    iget v0, p0, Lcrittercism/android/jf;->c:I

    packed-switch v0, :pswitch_data_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcrittercism/android/jf;->c:I

    invoke-static {v1}, Lcrittercism/android/kw;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :cond_6
    :goto_5
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 304
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :pswitch_39
    const-string v0, " flows"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 294
    :pswitch_3a
    const-string v0, " returns"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 295
    :pswitch_3b
    const-string v0, " gotos"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 296
    :pswitch_3c
    const-string v0, " ifs"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 297
    :pswitch_3d
    const-string v0, " switches"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_0
        :pswitch_36
        :pswitch_37
        :pswitch_38
    .end packed-switch

    .line 292
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
    .end packed-switch
.end method
