.class public Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;,
        Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;,
        Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    }
.end annotation


# static fields
.field private static final DIMEN_DP:F = 23.5f

.field private static final PATH_GEN_DENSITY:F = 3.0f

.field private static final STROKE_WIDTH_DP:F = 2.0f


# instance fields
.field private bottomLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

.field private final bounds:Landroid/graphics/Rect;

.field private final coordsA:[F

.field private final coordsB:[F

.field private flip:Z

.field private final halfStrokeWidthPixel:F

.field private final linePaint:Landroid/graphics/Paint;

.field private magnitude:F

.field private middleLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

.field private paramA:F

.field private paramB:F

.field private parameter:F

.field private final rounded:Z

.field private topLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

.field private vX:F

.field private vY:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;-><init>(Landroid/content/res/Resources;Z)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Z)V
    .locals 18
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "rounded"    # Z

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 147
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->coordsA:[F

    .line 148
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->coordsB:[F

    .line 155
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->rounded:Z

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v11, v4, Landroid/util/DisplayMetrics;->density:F

    .line 157
    .local v11, "density":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v17, v4, v11

    .line 158
    .local v17, "strokeWidthPixel":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v17, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->halfStrokeWidthPixel:F

    .line 160
    new-instance v4, Landroid/graphics/Paint;

    const/16 v5, 0x81

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    .line 161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    const/high16 v4, 0x41bc0000    # 23.5f

    mul-float/2addr v4, v11

    float-to-int v12, v4

    .line 168
    .local v12, "dimen":I
    const/high16 v4, 0x41440000    # 12.25f

    mul-float/2addr v4, v11

    float-to-int v15, v4

    .line 169
    .local v15, "paddingLeft":I
    const/high16 v4, 0x41440000    # 12.25f

    mul-float/2addr v4, v11

    float-to-int v0, v4

    move/from16 v16, v0

    .line 171
    .local v16, "paddingRight":I
    new-instance v4, Landroid/graphics/Rect;

    rsub-int/lit8 v5, v15, 0x0

    const/4 v6, 0x0

    add-int v7, v12, v16

    invoke-direct {v4, v5, v6, v7, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    .line 177
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 178
    .local v2, "first":Landroid/graphics/Path;
    const v4, 0x40a15810    # 5.042f

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    const/high16 v3, 0x41020000    # 8.125f

    const v4, -0x3e7d76c9    # -16.317f

    const v5, 0x421f0312

    const v6, -0x3e213127    # -27.851f

    const v7, 0x425df5c3    # 55.49f

    const v8, -0x3fcf0a3d    # -2.765f

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 180
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 181
    .local v3, "second":Landroid/graphics/Path;
    const v4, 0x42721fbe

    const v5, 0x4189e148    # 17.235f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 182
    const v4, 0x4134d0e5    # 11.301f

    const v5, 0x41901eb8    # 18.015f

    const v6, -0x3f934396    # -3.699f

    const v7, 0x423854fe    # 46.083f

    const v8, -0x3e423333    # -23.725f

    const v9, 0x422dd2f2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 183
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 184
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 185
    new-instance v13, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    const/4 v4, 0x0

    invoke-direct {v13, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 187
    .local v13, "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v2, Landroid/graphics/Path;

    .end local v2    # "first":Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 188
    .restart local v2    # "first":Landroid/graphics/Path;
    const v4, 0x4281eb02    # 64.959f

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 189
    const v5, 0x408e9fbe    # 4.457f

    const/high16 v6, 0x41860000    # 16.75f

    const v7, 0x3fc18937    # 1.512f

    const v8, 0x4217ed91

    const v9, -0x3e4b8b44    # -22.557f

    const v10, 0x422acbc7

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 190
    new-instance v3, Landroid/graphics/Path;

    .end local v3    # "second":Landroid/graphics/Path;
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 191
    .restart local v3    # "second":Landroid/graphics/Path;
    const v4, 0x42299ba6    # 42.402f

    const v5, 0x427acbc7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    const v4, 0x4192a9fc    # 18.333f

    const v5, 0x4286d604    # 67.418f

    const v6, 0x410ce979    # 8.807f

    const v7, 0x42369581    # 45.646f

    const v8, 0x410ce979    # 8.807f

    const v9, 0x42034ac1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 193
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 194
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 195
    new-instance v14, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    const/4 v4, 0x0

    invoke-direct {v14, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 196
    .local v14, "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v4, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v5}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;-><init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->topLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    .line 199
    new-instance v2, Landroid/graphics/Path;

    .end local v2    # "first":Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 200
    .restart local v2    # "first":Landroid/graphics/Path;
    const v4, 0x40a15810    # 5.042f

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    const v5, 0x40a15810    # 5.042f

    const v6, 0x41a2a9fc    # 20.333f

    const/high16 v7, 0x41950000    # 18.625f

    const v8, 0x40d94fdf    # 6.791f

    const/high16 v9, 0x420c0000    # 35.0f

    const v10, 0x40d94fdf    # 6.791f

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 202
    new-instance v3, Landroid/graphics/Path;

    .end local v3    # "second":Landroid/graphics/Path;
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 203
    .restart local v3    # "second":Landroid/graphics/Path;
    const/high16 v4, 0x420c0000    # 35.0f

    const v5, 0x40d94fdf    # 6.791f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 204
    const v4, 0x4180a9fc    # 16.083f

    const/4 v5, 0x0

    const v6, 0x41d6d2f2    # 26.853f

    const v7, 0x41859db2    # 16.702f

    const v8, 0x41d6d2f2    # 26.853f

    const v9, 0x41e1ac08    # 28.209f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 205
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 206
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 207
    new-instance v13, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .end local v13    # "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    const/4 v4, 0x0

    invoke-direct {v13, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 209
    .restart local v13    # "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v2, Landroid/graphics/Path;

    .end local v2    # "first":Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 210
    .restart local v2    # "first":Landroid/graphics/Path;
    const v4, 0x4281eb02    # 64.959f

    const/high16 v5, 0x420c0000    # 35.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 211
    const/4 v5, 0x0

    const v6, 0x412ed0e5    # 10.926f

    const v7, -0x3ef4a7f0    # -8.709f

    const v8, 0x41d353f8    # 26.416f

    const v9, -0x3e105604    # -29.958f

    const v10, 0x41d353f8    # 26.416f

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 212
    new-instance v3, Landroid/graphics/Path;

    .end local v3    # "second":Landroid/graphics/Path;
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 213
    .restart local v3    # "second":Landroid/graphics/Path;
    const/high16 v4, 0x420c0000    # 35.0f

    const v5, 0x4275a9fc    # 61.416f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 214
    const/high16 v4, -0x3f100000    # -7.5f

    const/4 v5, 0x0

    const v6, -0x3e406e98    # -23.946f

    const v7, -0x3efc9fbe    # -8.211f

    const v8, -0x3e406e98    # -23.946f

    const v9, -0x3e2cac08    # -26.416f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 215
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 216
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 217
    new-instance v14, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .end local v14    # "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    const/4 v4, 0x0

    invoke-direct {v14, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 218
    .restart local v14    # "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v4, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v5}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;-><init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->middleLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    .line 221
    new-instance v2, Landroid/graphics/Path;

    .end local v2    # "first":Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 222
    .restart local v2    # "first":Landroid/graphics/Path;
    const v4, 0x40a15810    # 5.042f

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    const/high16 v5, 0x40200000    # 2.5f

    const v6, 0x422d3f7d    # 43.312f

    const v7, 0x3c54fdf4    # 0.013f

    const v8, 0x41d45e35    # 26.546f

    const v9, 0x4117999a    # 9.475f

    const v10, 0x418ac49c    # 17.346f

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 224
    new-instance v3, Landroid/graphics/Path;

    .end local v3    # "second":Landroid/graphics/Path;
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 225
    .restart local v3    # "second":Landroid/graphics/Path;
    const v4, 0x4117999a    # 9.475f

    const v5, 0x418ac49c    # 17.346f

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    const v4, 0x4117645a    # 9.462f

    const v5, -0x3eeccccd    # -9.2f

    const v6, 0x41c18106    # 24.188f

    const v7, -0x3eda5a1d    # -10.353f

    const v8, 0x41da9ba6    # 27.326f

    const v9, -0x3efc147b    # -8.245f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 227
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 228
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 229
    new-instance v13, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .end local v13    # "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    const/4 v4, 0x0

    invoke-direct {v13, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 231
    .restart local v13    # "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v2, Landroid/graphics/Path;

    .end local v2    # "first":Landroid/graphics/Path;
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 232
    .restart local v2    # "first":Landroid/graphics/Path;
    const v4, 0x4281eb02    # 64.959f

    const/high16 v5, 0x42480000    # 50.0f

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 233
    const v5, -0x3f1f53f8    # -7.021f

    const v6, 0x412147ae    # 10.08f

    const v7, -0x3e5b53f8    # -20.584f

    const v8, 0x419d978d    # 19.699f

    const v9, -0x3dea8e56    # -37.361f

    const v10, 0x414bd70a    # 12.74f

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 234
    new-instance v3, Landroid/graphics/Path;

    .end local v3    # "second":Landroid/graphics/Path;
    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 235
    .restart local v3    # "second":Landroid/graphics/Path;
    const v4, 0x41dcc8b4    # 27.598f

    const v5, 0x427acbc7

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    const v4, -0x3e846e98    # -15.723f

    const v5, -0x3f2f53f8    # -6.521f

    const v6, -0x3e69999a    # -18.8f

    const v7, -0x3e43a7f0    # -23.543f

    const v8, -0x3e69999a    # -18.8f

    const v9, -0x3e32dd2f    # -25.642f

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 237
    invoke-static {v2, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 238
    invoke-static {v3, v11, v15}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->scalePath(Landroid/graphics/Path;FI)V

    .line 239
    new-instance v14, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;

    .end local v14    # "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    const/4 v4, 0x0

    invoke-direct {v14, v2, v3, v4}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    .line 240
    .restart local v14    # "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    new-instance v4, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14, v5}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;-><init>(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;Lcom/tripvi/drawerlayout/DrawerArrowDrawable$1;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->bottomLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    .line 241
    return-void

    .line 161
    .end local v2    # "first":Landroid/graphics/Path;
    .end local v3    # "second":Landroid/graphics/Path;
    .end local v12    # "dimen":I
    .end local v13    # "joinedA":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .end local v14    # "joinedB":Lcom/tripvi/drawerlayout/DrawerArrowDrawable$JoinedPath;
    .end local v15    # "paddingLeft":I
    .end local v16    # "paddingRight":I
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto/16 :goto_0

    .line 147
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 148
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->parameter:F

    return v0
.end method

.method static synthetic access$100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->coordsA:[F

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->halfStrokeWidthPixel:F

    return v0
.end method

.method static synthetic access$1100(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->paramB:F

    return v0
.end method

.method static synthetic access$1102(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->paramB:F

    return p1
.end method

.method static synthetic access$300(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)[F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->coordsB:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->rounded:Z

    return v0
.end method

.method static synthetic access$500(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->vX:F

    return v0
.end method

.method static synthetic access$602(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->vX:F

    return p1
.end method

.method static synthetic access$700(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->vY:F

    return v0
.end method

.method static synthetic access$702(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->vY:F

    return p1
.end method

.method static synthetic access$800(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->magnitude:F

    return v0
.end method

.method static synthetic access$802(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->magnitude:F

    return p1
.end method

.method static synthetic access$900(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;)F
    .locals 1
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;

    .prologue
    .line 41
    iget v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->paramA:F

    return v0
.end method

.method static synthetic access$902(Lcom/tripvi/drawerlayout/DrawerArrowDrawable;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tripvi/drawerlayout/DrawerArrowDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->paramA:F

    return p1
.end method

.method private static scalePath(Landroid/graphics/Path;FI)V
    .locals 4
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "density"    # F
    .param p2, "paddingLeft"    # I

    .prologue
    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x0

    .line 308
    int-to-float v1, p2

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Path;->offset(FF)V

    .line 309
    cmpl-float v1, p1, v2

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 311
    .local v0, "scaleMatrix":Landroid/graphics/Matrix;
    div-float v1, p1, v2

    div-float v2, p1, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 312
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->flip:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 254
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->topLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    invoke-static {v0, p1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->access$1400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 258
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->middleLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    invoke-static {v0, p1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->access$1400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 259
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->bottomLine:Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;

    invoke-static {v0, p1}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;->access$1400(Lcom/tripvi/drawerlayout/DrawerArrowDrawable$BridgingLine;Landroid/graphics/Canvas;)V

    .line 260
    iget-boolean v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->flip:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 261
    :cond_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 274
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->invalidateSelf()V

    .line 266
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 270
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->invalidateSelf()V

    .line 271
    return-void
.end method

.method public setFlip(Z)V
    .locals 0
    .param p1, "flip"    # Z

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->flip:Z

    .line 300
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->invalidateSelf()V

    .line 301
    return-void
.end method

.method public setParameter(F)V
    .locals 2
    .param p1, "parameter"    # F

    .prologue
    .line 287
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between 1 and zero inclusive!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_1
    iput p1, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->parameter:F

    .line 291
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->invalidateSelf()V

    .line 292
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    invoke-virtual {p0}, Lcom/tripvi/drawerlayout/DrawerArrowDrawable;->invalidateSelf()V

    .line 280
    return-void
.end method
