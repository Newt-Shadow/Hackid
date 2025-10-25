.class final synthetic Lv1/d$a;
.super Lkotlin/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/d;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lc0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    const-class v3, Lv1/g;

    const-string v4, "accept"

    const-string v5, "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/k;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/jvm/internal/d;->receiver:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lv1/g;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lv1/g;->a(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv1/d$a;->f(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
