.class Landroidx/browser/customtabs/c$a;
.super Lb/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c;->b(Landroidx/browser/customtabs/b;)Lb/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic g:Landroidx/browser/customtabs/b;

.field final synthetic h:Landroidx/browser/customtabs/c;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/c;Landroidx/browser/customtabs/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/c$a;->h:Landroidx/browser/customtabs/c;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 4
    .line 5
    invoke-direct {p0}, Lb/a$a;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public E0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$h;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/c$a$h;-><init>(Landroidx/browser/customtabs/c$a;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public I0(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$b;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/c$a$b;-><init>(Landroidx/browser/customtabs/c$a;ILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public M(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/b;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public S0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$e;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/c$a$e;-><init>(Landroidx/browser/customtabs/c$a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public W0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$d;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/c$a$d;-><init>(Landroidx/browser/customtabs/c$a;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Y(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$j;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/c$a$j;-><init>(Landroidx/browser/customtabs/c$a;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Y0(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v7, Landroidx/browser/customtabs/c$a$f;

    .line 9
    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p0

    .line 12
    move v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move v5, p3

    .line 15
    move-object v6, p4

    .line 16
    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/c$a$f;-><init>(Landroidx/browser/customtabs/c$a;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$a;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/c$a$a;-><init>(Landroidx/browser/customtabs/c$a;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public n0(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$g;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/browser/customtabs/c$a$g;-><init>(Landroidx/browser/customtabs/c$a;IILandroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public z(IIIIILandroid/os/Bundle;)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    iget-object v0, v8, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v9, v8, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v10, Landroidx/browser/customtabs/c$a$i;

    .line 10
    .line 11
    move-object v0, v10

    .line 12
    move-object v1, p0

    .line 13
    move v2, p1

    .line 14
    move v3, p2

    .line 15
    move v4, p3

    .line 16
    move v5, p4

    .line 17
    move/from16 v6, p5

    .line 18
    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Landroidx/browser/customtabs/c$a$i;-><init>(Landroidx/browser/customtabs/c$a;IIIIILandroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public z0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->g:Landroidx/browser/customtabs/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/c$a;->a:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v1, Landroidx/browser/customtabs/c$a$c;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/c$a$c;-><init>(Landroidx/browser/customtabs/c$a;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
