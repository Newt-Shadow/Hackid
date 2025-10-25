.class public abstract Landroidx/fragment/app/a0;
.super Landroidx/fragment/app/w;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:I

.field private final e:Landroidx/fragment/app/i0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/w;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/a0;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/a0;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/a0;->c:Landroid/os/Handler;

    .line 5
    iput p4, p0, Landroidx/fragment/app/a0;->d:I

    .line 6
    new-instance p1, Landroidx/fragment/app/j0;

    invoke-direct {p1}, Landroidx/fragment/app/j0;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/a0;->e:Landroidx/fragment/app/i0;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, p1, v0, v1}, Landroidx/fragment/app/a0;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method public final e()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Landroidx/fragment/app/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->e:Landroidx/fragment/app/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/a0;->c:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract i(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract j()Ljava/lang/Object;
.end method

.method public abstract k()Landroid/view/LayoutInflater;
.end method

.method public l(Landroidx/fragment/app/p;[Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p3, "fragment"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "permissions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract m(Ljava/lang/String;)Z
.end method

.method public n(Landroidx/fragment/app/p;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "intent"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    if-ne p3, p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/fragment/app/a0;->b:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p1, p2, p4}, Landroidx/core/content/a;->n(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public o(Landroidx/fragment/app/p;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "intent"

    .line 8
    .line 9
    move-object v2, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    move v3, p3

    .line 15
    if-ne v3, v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    const-string v1, "Starting intent sender with a requestCode requires a FragmentActivity host"

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    iget-object v4, v0, Landroidx/fragment/app/a0;->a:Landroid/app/Activity;

    .line 26
    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    move-object v1, v4

    .line 30
    move-object v2, p2

    .line 31
    move v3, p3

    .line 32
    move-object v4, p4

    .line 33
    move v5, p5

    .line 34
    move v6, p6

    .line 35
    move/from16 v7, p7

    .line 36
    .line 37
    move-object/from16 v8, p8

    .line 38
    .line 39
    invoke-static/range {v1 .. v8}, Landroidx/core/app/b;->A(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :cond_2
    move-object v0, p0

    .line 54
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v2
.end method

.method public abstract p()V
.end method
