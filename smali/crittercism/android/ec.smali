.class final Lcrittercism/android/ec;
.super Ljava/lang/Object;


# direct methods
.method static a(Ljava/lang/Object;)Lcrittercism/android/ki;
    .locals 3

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    sget-object v0, Lcrittercism/android/jx;->a:Lcrittercism/android/jx;

    .line 67
    :goto_0
    return-object v0

    .line 46
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 47
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jp;->a(Z)Lcrittercism/android/jp;

    move-result-object v0

    goto :goto_0

    .line 48
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2

    .line 49
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jq;->a(B)Lcrittercism/android/jq;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 51
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jr;->a(C)Lcrittercism/android/jr;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 53
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcrittercism/android/js;->a(J)Lcrittercism/android/js;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_4
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 55
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jv;->a(I)Lcrittercism/android/jv;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 57
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcrittercism/android/jw;->a(I)Lcrittercism/android/jw;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 59
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcrittercism/android/kb;->a(J)Lcrittercism/android/kb;

    move-result-object v0

    goto :goto_0

    .line 60
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_8

    .line 61
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcrittercism/android/kf;->a(S)Lcrittercism/android/kf;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 63
    new-instance v0, Lcrittercism/android/kg;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcrittercism/android/kg;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_9
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 65
    new-instance v0, Lcrittercism/android/kh;

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lcrittercism/android/ei;->a(Ljava/lang/Class;)Lcrittercism/android/ei;

    move-result-object v1

    iget-object v1, v1, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-direct {v0, v1}, Lcrittercism/android/kh;-><init>(Lcrittercism/android/kl;)V

    goto/16 :goto_0

    .line 66
    :cond_a
    instance-of v0, p0, Lcrittercism/android/ei;

    if-eqz v0, :cond_b

    .line 67
    new-instance v0, Lcrittercism/android/kh;

    check-cast p0, Lcrittercism/android/ei;

    iget-object v1, p0, Lcrittercism/android/ei;->m:Lcrittercism/android/kl;

    invoke-direct {v0, v1}, Lcrittercism/android/kh;-><init>(Lcrittercism/android/kl;)V

    goto/16 :goto_0

    .line 69
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a constant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
