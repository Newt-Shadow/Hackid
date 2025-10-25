.class public final Landroidx/lifecycle/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/h$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/h;

    invoke-direct {v0}, Landroidx/lifecycle/h;-><init>()V

    sput-object v0, Landroidx/lifecycle/h;->a:Landroidx/lifecycle/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/lifecycle/j0;Lh1/d;Landroidx/lifecycle/i;)V
    .locals 1

    .line 1
    const-string v0, "viewModel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "registry"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "lifecycle"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/lifecycle/j0;->c(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroidx/lifecycle/c0;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/lifecycle/c0;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/c0;->b(Lh1/d;Landroidx/lifecycle/i;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Landroidx/lifecycle/h;->a:Landroidx/lifecycle/h;

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/h;->c(Lh1/d;Landroidx/lifecycle/i;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static final b(Lh1/d;Landroidx/lifecycle/i;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/c0;
    .locals 2

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycle"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lh1/d;->b(Ljava/lang/String;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Landroidx/lifecycle/a0;->f:Landroidx/lifecycle/a0$a;

    .line 19
    .line 20
    invoke-virtual {v1, v0, p3}, Landroidx/lifecycle/a0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/a0;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    new-instance v0, Landroidx/lifecycle/c0;

    .line 25
    .line 26
    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/String;Landroidx/lifecycle/a0;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/c0;->b(Lh1/d;Landroidx/lifecycle/i;)V

    .line 30
    .line 31
    .line 32
    sget-object p2, Landroidx/lifecycle/h;->a:Landroidx/lifecycle/h;

    .line 33
    .line 34
    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/h;->c(Lh1/d;Landroidx/lifecycle/i;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method private final c(Lh1/d;Landroidx/lifecycle/i;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/lifecycle/i$b;->b:Landroidx/lifecycle/i$b;

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    sget-object v1, Landroidx/lifecycle/i$b;->d:Landroidx/lifecycle/i$b;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/i$b;->b(Landroidx/lifecycle/i$b;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/lifecycle/h$b;

    .line 19
    .line 20
    invoke-direct {v0, p2, p1}, Landroidx/lifecycle/h$b;-><init>(Landroidx/lifecycle/i;Lh1/d;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/l;)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const-class p2, Landroidx/lifecycle/h$a;

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lh1/d;->i(Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method
