.class public abstract Lo1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/webkit/WebResourceRequest;)Landroidx/webkit/internal/j1;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/webkit/internal/m1;->c()Landroidx/webkit/internal/v1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/webkit/internal/v1;->k(Landroid/webkit/WebResourceRequest;)Landroidx/webkit/internal/j1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b(Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/webkit/internal/l1;->u:Landroidx/webkit/internal/a$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/a$c;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Landroidx/webkit/internal/c;->j(Landroid/webkit/WebResourceRequest;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroidx/webkit/internal/a;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {p0}, Lo1/p;->a(Landroid/webkit/WebResourceRequest;)Landroidx/webkit/internal/j1;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroidx/webkit/internal/j1;->a()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/l1;->a()Ljava/lang/UnsupportedOperationException;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    throw p0
.end method
