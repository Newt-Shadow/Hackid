.class public final Lm5/v1;
.super Landroidx/fragment/app/p;
.source "SourceFile"

# interfaces
.implements Lm5/i;


# static fields
.field private static final b:Ljava/util/WeakHashMap;


# instance fields
.field private final a:Lm5/u1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm5/v1;->b:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/p;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lm5/u1;

    .line 5
    .line 6
    invoke-direct {v0}, Lm5/u1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 10
    .line 11
    return-void
.end method

.method public static m(Landroidx/fragment/app/u;)Lm5/v1;
    .locals 4

    .line 1
    const-string v0, "SLifecycleFragmentImpl"

    .line 2
    .line 3
    sget-object v1, Lm5/v1;->b:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lm5/v1;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v2

    .line 23
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Landroidx/fragment/app/i0;->j0(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lm5/v1;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/fragment/app/p;->isRemoving()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    :cond_2
    new-instance v2, Lm5/v1;

    .line 42
    .line 43
    invoke-direct {v2}, Lm5/v1;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/u;->getSupportFragmentManager()Landroidx/fragment/app/i0;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Landroidx/fragment/app/i0;->o()Landroidx/fragment/app/q0;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v2, v0}, Landroidx/fragment/app/q0;->d(Landroidx/fragment/app/p;Ljava/lang/String;)Landroidx/fragment/app/q0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/q0;->g()I

    .line 59
    .line 60
    .line 61
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v1, "Fragment with tag SLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    .line 74
    .line 75
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lm5/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm5/u1;->c(Ljava/lang/String;Ljava/lang/Class;)Lm5/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/p;->getActivity()Landroidx/fragment/app/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c(Ljava/lang/String;Lm5/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lm5/u1;->d(Ljava/lang/String;Lm5/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/p;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lm5/u1;->e(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/p;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lm5/u1;->f(IILandroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lm5/u1;->g(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm5/u1;->h()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm5/u1;->i()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lm5/u1;->j(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm5/u1;->k()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/p;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lm5/v1;->a:Lm5/u1;

    .line 5
    .line 6
    invoke-virtual {v0}, Lm5/u1;->l()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
