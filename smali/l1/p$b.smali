.class Ll1/p$b;
.super Ll1/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Ll1/p;


# direct methods
.method constructor <init>(Ll1/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll1/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ll1/p$b;->a:Ll1/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ll1/l;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ll1/p$b;->a:Ll1/p;

    .line 2
    .line 3
    iget-boolean v0, p1, Ll1/p;->L:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ll1/l;->d0()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ll1/p$b;->a:Ll1/p;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Ll1/p;->L:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public e(Ll1/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll1/p$b;->a:Ll1/p;

    .line 2
    .line 3
    iget v1, v0, Ll1/p;->K:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, -0x1

    .line 6
    .line 7
    iput v1, v0, Ll1/p;->K:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Ll1/p;->L:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Ll1/l;->r()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1, p0}, Ll1/l;->S(Ll1/l$f;)Ll1/l;

    .line 18
    .line 19
    .line 20
    return-void
.end method
