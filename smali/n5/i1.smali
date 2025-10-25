.class public final Ln5/i1;
.super Ln5/s0;
.source "SourceFile"


# instance fields
.field final synthetic g:Ln5/c;


# direct methods
.method public constructor <init>(Ln5/c;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/i1;->g:Ln5/c;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Ln5/s0;-><init>(Ln5/c;ILandroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final f(Ll5/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln5/i1;->g:Ln5/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln5/c;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ln5/i1;->g:Ln5/c;

    .line 10
    .line 11
    invoke-static {v0}, Ln5/c;->h0(Ln5/c;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Ln5/i1;->g:Ln5/c;

    .line 18
    .line 19
    const/16 v0, 0x10

    .line 20
    .line 21
    invoke-static {p1, v0}, Ln5/c;->d0(Ln5/c;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Ln5/i1;->g:Ln5/c;

    .line 26
    .line 27
    iget-object v0, v0, Ln5/c;->p:Ln5/c$c;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ln5/c$c;->d(Ll5/b;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ln5/i1;->g:Ln5/c;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ln5/c;->L(Ll5/b;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ln5/i1;->g:Ln5/c;

    .line 2
    .line 3
    iget-object v0, v0, Ln5/c;->p:Ln5/c$c;

    .line 4
    .line 5
    sget-object v1, Ll5/b;->e:Ll5/b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ln5/c$c;->d(Ll5/b;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0
.end method
