.class final synthetic Lx8/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;
.implements Lkotlin/jvm/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/m$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx8/m$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lxc/Function;
    .locals 8

    .line 1
    new-instance v7, Lkotlin/jvm/internal/a;

    const/4 v1, 0x2

    iget-object v2, p0, Lx8/m$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v4, "set"

    const-string v5, "set(Ljava/lang/Object;)V"

    const/4 v6, 0x4

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/a;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final c(Lx8/h;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/m$a$a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lx8/m$a;->a(Ljava/util/concurrent/atomic/AtomicReference;Lx8/h;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lx8/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lx8/m$a$a;->c(Lx8/h;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lwd/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/h;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/internal/h;->a()Lxc/Function;

    move-result-object v0

    check-cast p1, Lkotlin/jvm/internal/h;

    invoke-interface {p1}, Lkotlin/jvm/internal/h;->a()Lxc/Function;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/internal/h;->a()Lxc/Function;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
