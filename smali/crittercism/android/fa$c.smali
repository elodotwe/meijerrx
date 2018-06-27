.class public final Lcrittercism/android/fa$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/fa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;

.field b:I

.field c:Lcrittercism/android/je;

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    .line 481
    iput v1, p0, Lcrittercism/android/fa$c;->b:I

    .line 482
    iput-object v2, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    .line 483
    iput-object v2, p0, Lcrittercism/android/fa$c;->d:[I

    .line 484
    iput v1, p0, Lcrittercism/android/fa$c;->e:I

    .line 485
    return-void
.end method

.method static a(Lcrittercism/android/jc;)Lcrittercism/android/jc;
    .locals 2

    .prologue
    .line 834
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcrittercism/android/jc;->b()Lcrittercism/android/kl;

    move-result-object v0

    sget-object v1, Lcrittercism/android/kl;->j:Lcrittercism/android/kl;

    if-ne v0, v1, :cond_0

    .line 835
    sget-object v0, Lcrittercism/android/kl;->o:Lcrittercism/android/kl;

    invoke-virtual {p0, v0}, Lcrittercism/android/jc;->a(Lcrittercism/android/km;)Lcrittercism/android/jc;

    move-result-object p0

    .line 838
    :cond_0
    return-object p0
.end method

.method private a(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p3}, Lcrittercism/android/jc;->e()I

    move-result v0

    .line 853
    iget-object v1, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    new-instance v2, Lcrittercism/android/fa$b;

    invoke-direct {v2, p1, p2, p3}, Lcrittercism/android/fa$b;-><init>(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    sget-object v1, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    if-ne p2, v1, :cond_0

    .line 856
    iget-object v1, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v1, p3}, Lcrittercism/android/je;->c(Lcrittercism/android/jc;)V

    .line 857
    iget-object v1, p0, Lcrittercism/android/fa$c;->d:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 862
    :goto_0
    return-void

    .line 859
    :cond_0
    iget-object v1, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v1, p3}, Lcrittercism/android/je;->b(Lcrittercism/android/jc;)V

    .line 860
    iget-object v1, p0, Lcrittercism/android/fa$c;->d:[I

    iget-object v2, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_0
.end method

.method private a(ILcrittercism/android/jc;Lcrittercism/android/fa$a;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 713
    invoke-virtual {p2}, Lcrittercism/android/jc;->e()I

    move-result v0

    .line 715
    invoke-static {p2}, Lcrittercism/android/fa$c;->a(Lcrittercism/android/jc;)Lcrittercism/android/jc;

    move-result-object v5

    .line 716
    invoke-virtual {p0, p1, v0}, Lcrittercism/android/fa$c;->a(II)V

    .line 718
    iget-object v4, p0, Lcrittercism/android/fa$c;->d:[I

    aget v0, v4, v0

    .line 720
    if-ltz v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_4

    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v6

    if-eq v6, p1, :cond_2

    move v0, v1

    :goto_2
    if-nez v0, :cond_0

    .line 733
    invoke-direct {p0, p1, p3, v5}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v0, v5}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/jc;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v0, v5}, Lcrittercism/android/je;->b(Lcrittercism/android/jc;)V

    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcrittercism/android/fa$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/fa$c;->b:I

    invoke-virtual {v5}, Lcrittercism/android/jc;->e()I

    move-result v6

    add-int/lit8 v0, v4, -0x1

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :goto_3
    if-ltz v3, :cond_5

    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->h()Lcrittercism/android/jc;

    move-result-object v4

    invoke-virtual {v4}, Lcrittercism/android/jc;->e()I

    move-result v4

    if-ne v4, v6, :cond_7

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcrittercism/android/fa$c;->d:[I

    aput v3, v1, v6

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v1

    if-ne v1, p1, :cond_6

    iget-object v1, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    sget-object v4, Lcrittercism/android/fa$a;->b:Lcrittercism/android/fa$a;

    invoke-virtual {v0, v4}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/fa$a;)Lcrittercism/android/fa$b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3
.end method

.method private b(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V
    .locals 3

    .prologue
    .line 875
    sget-object v0, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    if-ne p2, v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_0
    invoke-virtual {p3}, Lcrittercism/android/jc;->e()I

    move-result v0

    .line 880
    iget-object v1, p0, Lcrittercism/android/fa$c;->d:[I

    aget v1, v1, v0

    .line 882
    if-ltz v1, :cond_1

    .line 884
    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    .line 885
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v0}, Lcrittercism/android/fa$b;->h()Lcrittercism/android/jc;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcrittercism/android/jc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    iget-object v2, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/fa$a;)Lcrittercism/android/fa$b;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v0, p3}, Lcrittercism/android/je;->b(Lcrittercism/android/jc;)V

    .line 898
    :goto_0
    return-void

    .line 897
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/jc;Lcrittercism/android/fa$a;)V

    goto :goto_0
.end method


# virtual methods
.method final a(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcrittercism/android/fa$c;->d:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 497
    :goto_0
    iget v2, p0, Lcrittercism/android/fa$c;->e:I

    if-ne p1, v2, :cond_2

    if-nez v0, :cond_2

    .line 526
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 495
    goto :goto_0

    .line 501
    :cond_2
    iget v2, p0, Lcrittercism/android/fa$c;->e:I

    if-ge p1, v2, :cond_3

    .line 502
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_3
    if-nez v0, :cond_4

    iget-object v2, p0, Lcrittercism/android/fa$c;->d:[I

    array-length v2, v2

    if-lt p2, v2, :cond_0

    .line 512
    :cond_4
    add-int/lit8 v2, p2, 0x1

    .line 513
    new-instance v3, Lcrittercism/android/je;

    invoke-direct {v3, v2}, Lcrittercism/android/je;-><init>(I)V

    .line 514
    new-array v2, v2, [I

    .line 515
    const/4 v4, -0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 517
    if-nez v0, :cond_5

    .line 518
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v3, v0}, Lcrittercism/android/je;->a(Lcrittercism/android/je;)V

    .line 519
    iget-object v0, p0, Lcrittercism/android/fa$c;->d:[I

    iget-object v4, p0, Lcrittercism/android/fa$c;->d:[I

    array-length v4, v4

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    :cond_5
    iput-object v3, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    .line 524
    iput-object v2, p0, Lcrittercism/android/fa$c;->d:[I

    goto :goto_1
.end method

.method public final a(ILcrittercism/android/jc;)V
    .locals 5

    .prologue
    .line 577
    invoke-virtual {p2}, Lcrittercism/android/jc;->e()I

    move-result v1

    .line 579
    invoke-static {p2}, Lcrittercism/android/fa$c;->a(Lcrittercism/android/jc;)Lcrittercism/android/jc;

    move-result-object v2

    .line 580
    invoke-virtual {p0, p1, v1}, Lcrittercism/android/fa$c;->a(II)V

    .line 582
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v0, v1}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 584
    invoke-virtual {v2, v0}, Lcrittercism/android/jc;->a(Lcrittercism/android/jc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 685
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v3, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v3, v2}, Lcrittercism/android/je;->a(Lcrittercism/android/jc;)Lcrittercism/android/jc;

    move-result-object v3

    .line 590
    if-eqz v3, :cond_1

    .line 595
    sget-object v4, Lcrittercism/android/fa$a;->d:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, v4, v3}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    .line 598
    :cond_1
    iget-object v3, p0, Lcrittercism/android/fa$c;->d:[I

    aget v3, v3, v1

    .line 600
    if-eqz v0, :cond_5

    .line 605
    sget-object v3, Lcrittercism/android/fa$a;->c:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, v3, v0}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    .line 655
    :cond_2
    :goto_1
    if-lez v1, :cond_3

    .line 656
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcrittercism/android/jc;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 658
    sget-object v3, Lcrittercism/android/fa$a;->f:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, v3, v0}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    .line 669
    :cond_3
    invoke-virtual {v2}, Lcrittercism/android/jc;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcrittercism/android/je;->a(I)Lcrittercism/android/jc;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_4

    .line 672
    sget-object v1, Lcrittercism/android/fa$a;->e:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, v1, v0}, Lcrittercism/android/fa$c;->b(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    .line 684
    :cond_4
    sget-object v0, Lcrittercism/android/fa$a;->a:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, v0, v2}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/fa$a;Lcrittercism/android/jc;)V

    goto :goto_0

    .line 606
    :cond_5
    if-ltz v3, :cond_2

    .line 613
    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/fa$b;

    .line 614
    invoke-virtual {v0}, Lcrittercism/android/fa$b;->a()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 615
    invoke-virtual {v0, v2}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/jc;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 626
    iget-object v0, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget v0, p0, Lcrittercism/android/fa$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/fa$c;->b:I

    .line 628
    iget-object v0, p0, Lcrittercism/android/fa$c;->c:Lcrittercism/android/je;

    invoke-virtual {v0, v2}, Lcrittercism/android/je;->c(Lcrittercism/android/jc;)V

    .line 629
    iget-object v0, p0, Lcrittercism/android/fa$c;->d:[I

    const/4 v2, -0x1

    aput v2, v0, v1

    goto :goto_0

    .line 638
    :cond_6
    sget-object v4, Lcrittercism/android/fa$a;->c:Lcrittercism/android/fa$a;

    invoke-virtual {v0, v4}, Lcrittercism/android/fa$b;->a(Lcrittercism/android/fa$a;)Lcrittercism/android/fa$b;

    move-result-object v0

    .line 640
    iget-object v4, p0, Lcrittercism/android/fa$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final b(ILcrittercism/android/jc;)V
    .locals 1

    .prologue
    .line 696
    sget-object v0, Lcrittercism/android/fa$a;->b:Lcrittercism/android/fa$a;

    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/fa$c;->a(ILcrittercism/android/jc;Lcrittercism/android/fa$a;)V

    .line 697
    return-void
.end method
