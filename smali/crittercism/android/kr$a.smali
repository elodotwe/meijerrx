.class final Lcrittercism/android/kr$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field b:I

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p1, p0, Lcrittercism/android/kr$a;->a:I

    .line 570
    iput p2, p0, Lcrittercism/android/kr$a;->b:I

    .line 571
    iput-object p3, p0, Lcrittercism/android/kr$a;->c:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 581
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, Lcrittercism/android/kr$a;-><init>(IILjava/lang/String;)V

    .line 582
    return-void
.end method
