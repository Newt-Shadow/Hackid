.class public abstract Ldf/b;
.super Ldf/e;
.source "SourceFile"


# instance fields
.field private a:Ldf/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldf/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static c([B)Ldf/a$a;
    .locals 1

    .line 1
    new-instance v0, Ldf/a$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldf/a$a;-><init>([B)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method protected b()Ldf/a;
    .locals 2

    .line 1
    iget-object v0, p0, Ldf/b;->a:Ldf/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "origin == null"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public d([B)Ldf/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ldf/b;->c([B)Ldf/a$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ldf/b;->e(Ldf/a;)Ldf/b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected e(Ldf/a;)Ldf/b;
    .locals 0

    .line 1
    iput-object p1, p0, Ldf/b;->a:Ldf/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Ldf/e;->a()Ldf/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ldf/b;

    .line 8
    .line 9
    return-object p1
.end method
