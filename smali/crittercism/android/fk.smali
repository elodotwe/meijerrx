.class public final Lcrittercism/android/fk;
.super Lcrittercism/android/ew;


# instance fields
.field a:Lcrittercism/android/ep;


# direct methods
.method public constructor <init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/ew;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 45
    if-nez p4, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p4, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/eu;)Lcrittercism/android/es;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcrittercism/android/fk;

    iget-object v1, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v2, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    iget-object v3, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-direct {v0, p1, v1, v2, v3}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    return-object v0
.end method

.method public final a(Lcrittercism/android/jd;)Lcrittercism/android/es;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lcrittercism/android/fk;

    iget-object v1, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget-object v2, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v3, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-direct {v0, v1, v2, p1, v3}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    return-object v0
.end method

.method public final a(Lcrittercism/android/ep;)Lcrittercism/android/fk;
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcrittercism/android/es;->d:Lcrittercism/android/eu;

    iget v1, v0, Lcrittercism/android/eu;->a:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bogus opcode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lcrittercism/android/ev;->aa:Lcrittercism/android/eu;

    .line 77
    :goto_0
    new-instance v1, Lcrittercism/android/fk;

    iget-object v2, p0, Lcrittercism/android/es;->e:Lcrittercism/android/ji;

    iget-object v3, p0, Lcrittercism/android/es;->f:Lcrittercism/android/jd;

    invoke-direct {v1, v0, v2, v3, p1}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    return-object v1

    .line 75
    :pswitch_1
    sget-object v0, Lcrittercism/android/ev;->Z:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcrittercism/android/ev;->ac:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcrittercism/android/ev;->ab:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcrittercism/android/ev;->ae:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcrittercism/android/ev;->ad:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcrittercism/android/ev;->ag:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcrittercism/android/ev;->af:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcrittercism/android/ev;->ai:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcrittercism/android/ev;->ah:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcrittercism/android/ev;->ak:Lcrittercism/android/eu;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcrittercism/android/ev;->aj:Lcrittercism/android/eu;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
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
    .end packed-switch
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "????"

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-virtual {v0}, Lcrittercism/android/ep;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-virtual {v0}, Lcrittercism/android/ep;->d()I

    move-result v0

    invoke-virtual {p0}, Lcrittercism/android/fk;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcrittercism/android/fk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/fk;->a:Lcrittercism/android/ep;

    invoke-virtual {v0}, Lcrittercism/android/ep;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
