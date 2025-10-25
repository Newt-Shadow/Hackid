.class public final Lo1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lo1/d$a;->c:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lo1/d$a;->a:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lo1/d$a;->b:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/d$a;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/d$a;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo1/d$a;->c:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo1/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/d$a;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo1/d$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/d$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lo1/d$b;

    .line 4
    .line 5
    const-string v2, "direct://"

    .line 6
    .line 7
    invoke-direct {v1, p1, v2}, Lo1/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lo1/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/d$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lo1/d$b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lo1/d$b;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lo1/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/d$a;->a:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lo1/d$b;

    .line 4
    .line 5
    invoke-direct {v1, p2, p1}, Lo1/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public e()Lo1/d;
    .locals 4

    .line 1
    new-instance v0, Lo1/d;

    .line 2
    .line 3
    invoke-direct {p0}, Lo1/d$a;->h()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0}, Lo1/d$a;->f()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {p0}, Lo1/d$a;->j()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lo1/d;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public g()Lo1/d$a;
    .locals 1

    .line 1
    const-string v0, "<local>"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo1/d$a;->a(Ljava/lang/String;)Lo1/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public i()Lo1/d$a;
    .locals 1

    .line 1
    const-string v0, "<-loopback>"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lo1/d$a;->a(Ljava/lang/String;)Lo1/d$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public k(Z)Lo1/d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lo1/d$a;->c:Z

    .line 2
    .line 3
    return-object p0
.end method
