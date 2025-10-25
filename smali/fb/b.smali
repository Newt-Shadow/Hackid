.class public Lfb/b;
.super Leb/d;
.source "SourceFile"


# instance fields
.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Lhb/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLhb/n;)V
    .locals 24

    move-object/from16 v15, p0

    move-object/from16 v14, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "apiKey"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "host"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "sessionReplayConfig"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0x1ffffc

    const/16 v23, 0x0

    .line 3
    invoke-direct/range {v0 .. v23}, Leb/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZIIIILeb/e;Leb/i;ZLeb/j;Lid/l;ZLeb/a;ZLjava/net/Proxy;Lcom/posthog/surveys/PostHogSurveysConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move/from16 v1, p3

    .line 4
    iput-boolean v1, v0, Lfb/b;->K:Z

    move/from16 v1, p4

    .line 5
    iput-boolean v1, v0, Lfb/b;->L:Z

    move/from16 v1, p5

    .line 6
    iput-boolean v1, v0, Lfb/b;->M:Z

    move-object/from16 v1, p6

    .line 7
    iput-object v1, v0, Lfb/b;->N:Lhb/n;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZLhb/n;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    const-string v0, "https://us.i.posthog.com"

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    :goto_0
    and-int/lit8 v1, p7, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move/from16 v1, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move/from16 v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v2, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    .line 1
    new-instance v4, Lhb/n;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/16 v15, 0x7f

    const/16 v16, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v16}, Lhb/n;-><init>(ZZZLhb/a;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v4, p6

    :goto_4
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v0

    move/from16 p5, v1

    move/from16 p6, v3

    move/from16 p7, v2

    move-object/from16 p8, v4

    .line 2
    invoke-direct/range {p2 .. p8}, Lfb/b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLhb/n;)V

    return-void
.end method


# virtual methods
.method public final g0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfb/b;->K:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfb/b;->L:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfb/b;->M:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j0()Lhb/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lfb/b;->N:Lhb/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfb/b;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public final l0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfb/b;->L:Z

    .line 2
    .line 3
    return-void
.end method

.method public final m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfb/b;->M:Z

    .line 2
    .line 3
    return-void
.end method
