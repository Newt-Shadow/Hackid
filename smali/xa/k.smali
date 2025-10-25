.class public Lxa/k;
.super Lxa/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ld9/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxa/f;-><init>(Ld9/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected e(Ld9/h;)Ld9/c;
    .locals 2

    .line 1
    new-instance v0, Ld9/c;

    .line 2
    .line 3
    new-instance v1, Lj9/k;

    .line 4
    .line 5
    invoke-virtual {p1}, Ld9/h;->e()Ld9/h;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v1, p1}, Lj9/k;-><init>(Ld9/h;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ld9/c;-><init>(Ld9/b;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
