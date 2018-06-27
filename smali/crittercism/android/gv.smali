.class public final Lcrittercism/android/gv;
.super Lcrittercism/android/hl;


# instance fields
.field final a:Lcrittercism/android/kh;

.field final b:Lcrittercism/android/kh;

.field c:Lcrittercism/android/if;

.field public final d:Lcrittercism/android/gu;

.field private final f:I

.field private final g:Lcrittercism/android/kg;

.field private h:Lcrittercism/android/hb;

.field private i:Lcrittercism/android/gs;


# direct methods
.method public constructor <init>(Lcrittercism/android/kh;ILcrittercism/android/kh;Lcrittercism/android/kn;Lcrittercism/android/kg;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcrittercism/android/hl;-><init>()V

    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "thisClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-nez p4, :cond_1

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "interfaces == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-object p1, p0, Lcrittercism/android/gv;->a:Lcrittercism/android/kh;

    .line 104
    iput p2, p0, Lcrittercism/android/gv;->f:I

    .line 105
    iput-object p3, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    .line 106
    invoke-interface {p4}, Lcrittercism/android/kn;->a()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    .line 108
    iput-object p5, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    .line 109
    new-instance v0, Lcrittercism/android/gu;

    invoke-direct {v0, p1}, Lcrittercism/android/gu;-><init>(Lcrittercism/android/kh;)V

    iput-object v0, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    .line 110
    iput-object v1, p0, Lcrittercism/android/gv;->h:Lcrittercism/android/hb;

    .line 111
    new-instance v0, Lcrittercism/android/gs;

    invoke-direct {v0}, Lcrittercism/android/gs;-><init>()V

    iput-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    .line 112
    return-void

    .line 106
    :cond_2
    new-instance v0, Lcrittercism/android/if;

    invoke-direct {v0, p4}, Lcrittercism/android/if;-><init>(Lcrittercism/android/kn;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcrittercism/android/hn;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcrittercism/android/hn;->g:Lcrittercism/android/hn;

    return-object v0
.end method

.method public final a(Lcrittercism/android/ha;)V
    .locals 7

    .prologue
    .line 129
    iget-object v1, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 130
    iget-object v0, p1, Lcrittercism/android/ha;->m:Lcrittercism/android/hu;

    .line 131
    iget-object v2, p1, Lcrittercism/android/ha;->b:Lcrittercism/android/hu;

    .line 132
    iget-object v3, p1, Lcrittercism/android/ha;->c:Lcrittercism/android/hu;

    .line 133
    iget-object v4, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    .line 135
    iget-object v5, p0, Lcrittercism/android/gv;->a:Lcrittercism/android/kh;

    invoke-virtual {v1, v5}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    .line 137
    iget-object v5, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v5}, Lcrittercism/android/gu;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    iget-object v5, p1, Lcrittercism/android/ha;->l:Lcrittercism/android/hu;

    .line 139
    iget-object v6, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v5, v6}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    .line 141
    iget-object v5, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v5}, Lcrittercism/android/gu;->c()Lcrittercism/android/jn;

    move-result-object v5

    .line 142
    if-eqz v5, :cond_0

    .line 143
    new-instance v6, Lcrittercism/android/hb;

    invoke-direct {v6, v5}, Lcrittercism/android/hb;-><init>(Lcrittercism/android/jn;)V

    invoke-virtual {v0, v6}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/hb;

    iput-object v0, p0, Lcrittercism/android/gv;->h:Lcrittercism/android/hb;

    .line 148
    :cond_0
    iget-object v0, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    invoke-virtual {v1, v0}, Lcrittercism/android/ie;->a(Lcrittercism/android/kh;)Lcrittercism/android/id;

    .line 152
    :cond_1
    iget-object v0, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    invoke-virtual {v3, v0}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/if;

    iput-object v0, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    .line 156
    :cond_2
    iget-object v0, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    invoke-virtual {v4, v0}, Lcrittercism/android/ic;->a(Lcrittercism/android/kg;)Lcrittercism/android/ib;

    .line 160
    :cond_3
    iget-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v0}, Lcrittercism/android/gs;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    iget-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v0}, Lcrittercism/android/gs;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v2, v0}, Lcrittercism/android/hu;->b(Lcrittercism/android/hv;)Lcrittercism/android/hv;

    move-result-object v0

    check-cast v0, Lcrittercism/android/gs;

    iput-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    .line 167
    :cond_4
    :goto_0
    return-void

    .line 164
    :cond_5
    iget-object v0, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v2, v0}, Lcrittercism/android/hu;->a(Lcrittercism/android/hv;)V

    goto :goto_0
.end method

.method public final a(Lcrittercism/android/ha;Lcrittercism/android/ko;)V
    .locals 13

    .prologue
    .line 172
    invoke-interface {p2}, Lcrittercism/android/ko;->a()Z

    move-result v4

    .line 173
    iget-object v0, p1, Lcrittercism/android/ha;->g:Lcrittercism/android/ie;

    .line 174
    iget-object v1, p0, Lcrittercism/android/gv;->a:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v5

    .line 175
    iget-object v1, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 177
    :goto_0
    iget-object v1, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    invoke-static {v1}, Lcrittercism/android/hv;->b(Lcrittercism/android/hv;)I

    move-result v6

    .line 178
    iget-object v1, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v1}, Lcrittercism/android/gs;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 180
    :goto_1
    iget-object v2, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    if-nez v2, :cond_2

    const/4 v2, -0x1

    .line 182
    :goto_2
    iget-object v3, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v3}, Lcrittercism/android/gu;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 183
    :goto_3
    iget-object v7, p0, Lcrittercism/android/gv;->h:Lcrittercism/android/hb;

    invoke-static {v7}, Lcrittercism/android/hv;->b(Lcrittercism/android/hv;)I

    move-result v7

    .line 186
    if-eqz v4, :cond_6

    .line 187
    const/4 v4, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcrittercism/android/gv;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcrittercism/android/gv;->a:Lcrittercism/android/kh;

    invoke-virtual {v9}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 188
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  class_idx:           "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 189
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  access_flags:        "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcrittercism/android/gv;->f:I

    const/16 v10, 0x7631

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcrittercism/android/ir;->a(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 191
    const/4 v8, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "  superclass_idx:      "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " // "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    if-nez v4, :cond_4

    const-string v4, "<none>"

    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 194
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  interfaces_off:      "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 195
    if-eqz v6, :cond_5

    .line 196
    iget-object v4, p0, Lcrittercism/android/gv;->c:Lcrittercism/android/if;

    invoke-virtual {v4}, Lcrittercism/android/if;->c()Lcrittercism/android/kn;

    move-result-object v8

    .line 197
    invoke-interface {v8}, Lcrittercism/android/kn;->a()I

    move-result v9

    .line 198
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v9, :cond_5

    .line 199
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v4}, Lcrittercism/android/kn;->a(I)Lcrittercism/android/kl;

    move-result-object v12

    invoke-virtual {v12}, Lcrittercism/android/kl;->a_()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p2, v10, v11}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 175
    :cond_0
    iget-object v1, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    invoke-virtual {v0, v1}, Lcrittercism/android/ie;->b(Lcrittercism/android/kh;)I

    move-result v0

    goto/16 :goto_0

    .line 178
    :cond_1
    iget-object v1, p0, Lcrittercism/android/gv;->i:Lcrittercism/android/gs;

    invoke-virtual {v1}, Lcrittercism/android/gs;->d()I

    move-result v1

    goto/16 :goto_1

    .line 180
    :cond_2
    iget-object v2, p1, Lcrittercism/android/ha;->f:Lcrittercism/android/ic;

    iget-object v3, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    invoke-virtual {v2, v3}, Lcrittercism/android/ic;->b(Lcrittercism/android/kg;)I

    move-result v2

    goto/16 :goto_2

    .line 182
    :cond_3
    iget-object v3, p0, Lcrittercism/android/gv;->d:Lcrittercism/android/gu;

    invoke-virtual {v3}, Lcrittercism/android/gu;->d()I

    move-result v3

    goto/16 :goto_3

    .line 191
    :cond_4
    iget-object v4, p0, Lcrittercism/android/gv;->b:Lcrittercism/android/kh;

    invoke-virtual {v4}, Lcrittercism/android/kh;->a_()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 202
    :cond_5
    const/4 v8, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "  source_file_idx:     "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " // "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v4, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    if-nez v4, :cond_7

    const-string v4, "<none>"

    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v8, v4}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 205
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  annotations_off:     "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 206
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  class_data_off:      "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 207
    const/4 v4, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "  static_values_off:   "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcrittercism/android/kw;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v4, v8}, Lcrittercism/android/ko;->a(ILjava/lang/String;)V

    .line 211
    :cond_6
    invoke-interface {p2, v5}, Lcrittercism/android/ko;->d(I)V

    .line 212
    iget v4, p0, Lcrittercism/android/gv;->f:I

    invoke-interface {p2, v4}, Lcrittercism/android/ko;->d(I)V

    .line 213
    invoke-interface {p2, v0}, Lcrittercism/android/ko;->d(I)V

    .line 214
    invoke-interface {p2, v6}, Lcrittercism/android/ko;->d(I)V

    .line 215
    invoke-interface {p2, v2}, Lcrittercism/android/ko;->d(I)V

    .line 216
    invoke-interface {p2, v1}, Lcrittercism/android/ko;->d(I)V

    .line 217
    invoke-interface {p2, v3}, Lcrittercism/android/ko;->d(I)V

    .line 218
    invoke-interface {p2, v7}, Lcrittercism/android/ko;->d(I)V

    .line 219
    return-void

    .line 202
    :cond_7
    iget-object v4, p0, Lcrittercism/android/gv;->g:Lcrittercism/android/kg;

    invoke-virtual {v4}, Lcrittercism/android/kg;->a_()Ljava/lang/String;

    move-result-object v4

    goto :goto_6
.end method

.method public final b_()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x20

    return v0
.end method
