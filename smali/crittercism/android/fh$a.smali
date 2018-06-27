.class final Lcrittercism/android/fh$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/iw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcrittercism/android/is;

.field b:Lcrittercism/android/ep;

.field final synthetic c:Lcrittercism/android/fh;

.field private final d:Lcrittercism/android/fd;


# direct methods
.method public constructor <init>(Lcrittercism/android/fh;Lcrittercism/android/fd;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcrittercism/android/fh$a;->d:Lcrittercism/android/fd;

    .line 515
    return-void
.end method

.method private a()Lcrittercism/android/jc;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 669
    iget-object v1, p0, Lcrittercism/android/fh$a;->a:Lcrittercism/android/is;

    iget v1, v1, Lcrittercism/android/is;->d:I

    .line 671
    if-gez v1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 675
    :cond_1
    iget-object v2, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    iget-object v2, v2, Lcrittercism/android/fh;->a:Lcrittercism/android/jg;

    iget-object v2, v2, Lcrittercism/android/jg;->a:Lcrittercism/android/it;

    invoke-virtual {v2, v1}, Lcrittercism/android/it;->b(I)Lcrittercism/android/is;

    move-result-object v1

    iget-object v1, v1, Lcrittercism/android/is;->b:Lcrittercism/android/ix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcrittercism/android/ix;->a(I)Lcrittercism/android/iw;

    move-result-object v1

    .line 678
    iget-object v2, v1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    iget v2, v2, Lcrittercism/android/jf;->a:I

    const/16 v3, 0x38

    if-ne v2, v3, :cond_0

    .line 681
    iget-object v0, v1, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    goto :goto_0
.end method

.method private a(Lcrittercism/android/es;)V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcrittercism/android/fh$a;->d:Lcrittercism/android/fd;

    invoke-virtual {v0, p1}, Lcrittercism/android/fd;->a(Lcrittercism/android/es;)V

    .line 797
    return-void
.end method


# virtual methods
.method public final a(Lcrittercism/android/ja;)V
    .locals 6

    .prologue
    .line 579
    iget-object v1, p1, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 580
    invoke-static {p1}, Lcrittercism/android/fg;->a(Lcrittercism/android/iw;)Lcrittercism/android/eu;

    move-result-object v2

    .line 581
    iget-object v0, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 582
    iget v3, v0, Lcrittercism/android/jf;->a:I

    .line 585
    iget v0, v0, Lcrittercism/android/jf;->c:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 586
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    .line 590
    iget-object v0, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    iget-boolean v0, v0, Lcrittercism/android/fh;->h:Z

    if-nez v0, :cond_1

    .line 596
    iget-object v3, p1, Lcrittercism/android/iw;->d:Lcrittercism/android/jc;

    .line 597
    iget-object v0, p1, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    check-cast v0, Lcrittercism/android/jw;

    invoke-virtual {v0}, Lcrittercism/android/jw;->d_()I

    move-result v0

    .line 599
    iget-object v4, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    iget v4, v4, Lcrittercism/android/fh;->e:I

    iget-object v5, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    iget v5, v5, Lcrittercism/android/fh;->g:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    invoke-virtual {v3}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v4

    invoke-static {v0, v4}, Lcrittercism/android/jc;->a(ILcrittercism/android/km;)Lcrittercism/android/jc;

    move-result-object v0

    .line 602
    new-instance v4, Lcrittercism/android/fi;

    invoke-static {v3, v0}, Lcrittercism/android/jd;->a(Lcrittercism/android/jc;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v0

    invoke-direct {v4, v2, v1, v0}, Lcrittercism/android/fi;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 604
    invoke-direct {p0, v4}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 608
    :cond_2
    invoke-static {p1}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;)Lcrittercism/android/jd;

    move-result-object v0

    .line 609
    new-instance v3, Lcrittercism/android/eq;

    iget-object v4, p1, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    invoke-direct {v3, v2, v1, v0, v4}, Lcrittercism/android/eq;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 610
    invoke-direct {p0, v3}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/jb;)V
    .locals 6

    .prologue
    .line 531
    iget-object v0, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 532
    iget v1, v0, Lcrittercism/android/jf;->a:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 539
    :cond_1
    iget v1, v0, Lcrittercism/android/jf;->a:I

    const/16 v2, 0x38

    if-eq v1, v2, :cond_0

    .line 544
    iget-object v1, p1, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 545
    invoke-static {p1}, Lcrittercism/android/fg;->a(Lcrittercism/android/iw;)Lcrittercism/android/eu;

    move-result-object v2

    .line 548
    iget v0, v0, Lcrittercism/android/jf;->c:I

    packed-switch v0, :pswitch_data_0

    .line 570
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_2
    new-instance v0, Lcrittercism/android/fi;

    invoke-static {p1}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;)Lcrittercism/android/jd;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcrittercism/android/fi;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 574
    :goto_1
    invoke-direct {p0, v0}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    goto :goto_0

    .line 564
    :pswitch_3
    iget-object v0, p0, Lcrittercism/android/fh$a;->a:Lcrittercism/android/is;

    iget-object v0, v0, Lcrittercism/android/is;->c:Lcrittercism/android/ky;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcrittercism/android/ky;->a(I)I

    move-result v3

    .line 565
    new-instance v0, Lcrittercism/android/fk;

    invoke-static {p1}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;)Lcrittercism/android/jd;

    move-result-object v4

    iget-object v5, p0, Lcrittercism/android/fh$a;->c:Lcrittercism/android/fh;

    iget-object v5, v5, Lcrittercism/android/fh;->c:Lcrittercism/android/el;

    iget-object v5, v5, Lcrittercism/android/el;->a:[Lcrittercism/android/ep;

    aget-object v3, v5, v3

    invoke-direct {v0, v2, v1, v4, v3}, Lcrittercism/android/fk;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/ep;)V

    goto :goto_1

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcrittercism/android/jj;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 687
    iget-object v3, p1, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 688
    invoke-static {p1}, Lcrittercism/android/fg;->a(Lcrittercism/android/iw;)Lcrittercism/android/eu;

    move-result-object v4

    .line 689
    iget-object v5, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 690
    iget-object v6, p1, Lcrittercism/android/iu;->a:Lcrittercism/android/jl;

    .line 692
    iget v2, v5, Lcrittercism/android/jf;->c:I

    const/4 v7, 0x6

    if-eq v2, v7, :cond_0

    .line 693
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iget-object v2, p0, Lcrittercism/android/fh$a;->b:Lcrittercism/android/ep;

    invoke-direct {p0, v2}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    .line 698
    iget-boolean v2, v5, Lcrittercism/android/jf;->d:Z

    if-eqz v2, :cond_1

    .line 699
    iget-object v0, p1, Lcrittercism/android/iw;->e:Lcrittercism/android/jd;

    .line 700
    new-instance v1, Lcrittercism/android/eq;

    invoke-direct {v1, v4, v3, v0, v6}, Lcrittercism/android/eq;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    .line 702
    invoke-direct {p0, v1}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    .line 736
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-direct {p0}, Lcrittercism/android/fh$a;->a()Lcrittercism/android/jc;

    move-result-object v7

    .line 706
    invoke-static {p1, v7}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v8

    .line 709
    iget-boolean v2, v4, Lcrittercism/android/eu;->e:Z

    if-nez v2, :cond_2

    iget v2, v5, Lcrittercism/android/jf;->a:I

    const/16 v9, 0x2b

    if-ne v2, v9, :cond_3

    :cond_2
    move v2, v0

    .line 712
    :goto_1
    if-eqz v7, :cond_4

    :goto_2
    if-eq v2, v0, :cond_5

    .line 713
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v1

    .line 709
    goto :goto_1

    :cond_4
    move v0, v1

    .line 712
    goto :goto_2

    .line 718
    :cond_5
    iget v0, v5, Lcrittercism/android/jf;->a:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_6

    iget v0, v4, Lcrittercism/android/eu;->a:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_6

    .line 725
    new-instance v0, Lcrittercism/android/fi;

    invoke-direct {v0, v4, v3, v8}, Lcrittercism/android/fi;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 734
    :goto_3
    invoke-direct {p0, v0}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    goto :goto_0

    .line 731
    :cond_6
    new-instance v0, Lcrittercism/android/eq;

    invoke-direct {v0, v4, v3, v8, v6}, Lcrittercism/android/eq;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;Lcrittercism/android/jl;)V

    goto :goto_3
.end method

.method public final a(Lcrittercism/android/jk;)V
    .locals 5

    .prologue
    .line 740
    iget-object v1, p1, Lcrittercism/android/iw;->c:Lcrittercism/android/ji;

    .line 741
    invoke-static {p1}, Lcrittercism/android/fg;->a(Lcrittercism/android/iw;)Lcrittercism/android/eu;

    move-result-object v2

    .line 742
    iget-object v0, p1, Lcrittercism/android/iw;->b:Lcrittercism/android/jf;

    .line 745
    iget v0, v0, Lcrittercism/android/jf;->c:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    .line 746
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_0
    invoke-direct {p0}, Lcrittercism/android/fh$a;->a()Lcrittercism/android/jc;

    move-result-object v3

    .line 751
    iget-boolean v4, v2, Lcrittercism/android/eu;->e:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq v4, v0, :cond_2

    .line 752
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Insn with result/move-result-pseudo mismatch"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 756
    :cond_2
    iget-object v0, p0, Lcrittercism/android/fh$a;->b:Lcrittercism/android/ep;

    invoke-direct {p0, v0}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    .line 758
    new-instance v0, Lcrittercism/android/fi;

    invoke-static {p1, v3}, Lcrittercism/android/fh;->a(Lcrittercism/android/iw;Lcrittercism/android/jc;)Lcrittercism/android/jd;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcrittercism/android/fi;-><init>(Lcrittercism/android/eu;Lcrittercism/android/ji;Lcrittercism/android/jd;)V

    .line 761
    invoke-direct {p0, v0}, Lcrittercism/android/fh$a;->a(Lcrittercism/android/es;)V

    .line 762
    return-void
.end method
