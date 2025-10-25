.class final Ld1/b$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/b;->b(Ltd/s0;Ljava/lang/Object;)Lr6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/concurrent/futures/c$a;

.field final synthetic f:Ltd/s0;


# direct methods
.method constructor <init>(Landroidx/concurrent/futures/c$a;Ltd/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/b$a;->e:Landroidx/concurrent/futures/c$a;

    iput-object p2, p0, Ld1/b$a;->f:Ltd/s0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ld1/b$a;->e:Landroidx/concurrent/futures/c$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/concurrent/futures/c$a;->c()Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Ld1/b$a;->e:Landroidx/concurrent/futures/c$a;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/c$a;->e(Ljava/lang/Throwable;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Ld1/b$a;->e:Landroidx/concurrent/futures/c$a;

    .line 20
    .line 21
    iget-object v0, p0, Ld1/b$a;->f:Ltd/s0;

    .line 22
    .line 23
    invoke-interface {v0}, Ltd/s0;->c()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/concurrent/futures/c$a;->b(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ld1/b$a;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
