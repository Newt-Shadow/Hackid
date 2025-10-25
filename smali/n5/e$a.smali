.class public final Ln5/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/accounts/Account;

.field private b:Lr/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Lj6/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj6/a;->j:Lj6/a;

    iput-object v0, p0, Ln5/e$a;->e:Lj6/a;

    return-void
.end method


# virtual methods
.method public a()Ln5/e;
    .locals 11

    .line 1
    new-instance v10, Ln5/e;

    .line 2
    .line 3
    iget-object v1, p0, Ln5/e$a;->a:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v2, p0, Ln5/e$a;->b:Lr/b;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    iget-object v6, p0, Ln5/e$a;->c:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v7, p0, Ln5/e$a;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v8, p0, Ln5/e$a;->e:Lj6/a;

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    move-object v0, v10

    .line 18
    invoke-direct/range {v0 .. v9}, Ln5/e;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lj6/a;Z)V

    .line 19
    .line 20
    .line 21
    return-object v10
.end method

.method public b(Ljava/lang/String;)Ln5/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/e$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/util/Collection;)Ln5/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/e$a;->b:Lr/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lr/b;

    .line 6
    .line 7
    invoke-direct {v0}, Lr/b;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln5/e$a;->b:Lr/b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ln5/e$a;->b:Lr/b;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lr/b;->addAll(Ljava/util/Collection;)Z

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final d(Landroid/accounts/Account;)Ln5/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/e$a;->a:Landroid/accounts/Account;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Ln5/e$a;
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/e$a;->d:Ljava/lang/String;

    return-object p0
.end method
