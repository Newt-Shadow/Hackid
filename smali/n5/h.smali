.class public abstract Ln5/h;
.super Ln5/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;


# instance fields
.field private final F:Ln5/e;

.field private final G:Ljava/util/Set;

.field private final H:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lcom/google/android/gms/common/api/f$a;Lcom/google/android/gms/common/api/f$b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Ln5/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lm5/d;Lm5/m;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILn5/e;Lm5/d;Lm5/m;)V
    .locals 9

    .line 2
    invoke-static {p1}, Ln5/i;->b(Landroid/content/Context;)Ln5/i;

    move-result-object v3

    .line 3
    invoke-static {}, Ll5/f;->m()Ll5/f;

    move-result-object v4

    .line 4
    invoke-static {p5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lm5/d;

    .line 5
    invoke-static {p6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lm5/m;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Ln5/h;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln5/i;Ll5/f;ILn5/e;Lm5/d;Lm5/m;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ln5/i;Ll5/f;ILn5/e;Lm5/d;Lm5/m;)V
    .locals 10

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v6, v2

    goto :goto_0

    .line 7
    :cond_0
    new-instance v3, Ln5/g0;

    invoke-direct {v3, v0}, Ln5/g0;-><init>(Lm5/d;)V

    move-object v6, v3

    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ln5/h0;

    invoke-direct {v0, v1}, Ln5/h0;-><init>(Lm5/m;)V

    move-object v7, v0

    .line 9
    :goto_1
    invoke-virtual/range {p6 .. p6}, Ln5/e;->j()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v8}, Ln5/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Ln5/i;Ll5/g;ILn5/c$a;Ln5/c$b;Ljava/lang/String;)V

    move-object/from16 v0, p6

    iput-object v0, v9, Ln5/h;->F:Ln5/e;

    .line 11
    invoke-virtual/range {p6 .. p6}, Ln5/e;->a()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Ln5/h;->H:Landroid/accounts/Account;

    .line 12
    invoke-virtual/range {p6 .. p6}, Ln5/e;->d()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Ln5/h;->l0(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Ln5/h;->G:Ljava/util/Set;

    return-void
.end method

.method private final l0(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ln5/h;->k0(Ljava/util/Set;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    .line 20
    .line 21
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected final C()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/h;->G:Ljava/util/Set;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln5/c;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Ln5/h;->G:Ljava/util/Set;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    return-object v0
.end method

.method protected final j0()Ln5/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/h;->F:Ln5/e;

    return-object v0
.end method

.method protected k0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final u()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/h;->H:Landroid/accounts/Account;

    return-object v0
.end method

.method protected w()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method
