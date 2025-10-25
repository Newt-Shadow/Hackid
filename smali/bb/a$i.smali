.class final Lbb/a$i;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/a;->k(ILjava/util/zip/ZipEntry;DLad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lbb/a;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ltd/v;


# direct methods
.method constructor <init>(Lbb/a;Ljava/util/Map;Ltd/v;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbb/a$i;->b:Lbb/a;

    iput-object p2, p0, Lbb/a$i;->c:Ljava/util/Map;

    iput-object p3, p0, Lbb/a$i;->d:Ltd/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Lbb/a$i;

    iget-object v0, p0, Lbb/a$i;->b:Lbb/a;

    iget-object v1, p0, Lbb/a$i;->c:Ljava/util/Map;

    iget-object v2, p0, Lbb/a$i;->d:Ltd/v;

    invoke-direct {p1, v0, v1, v2, p2}, Lbb/a$i;-><init>(Lbb/a;Ljava/util/Map;Ltd/v;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lbb/a$i;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lbb/a$i;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lbb/a$i;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lbb/a$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lbb/a$i;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lbb/a$i;->b:Lbb/a;

    .line 12
    .line 13
    invoke-static {p1}, Lbb/a;->b(Lbb/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lbb/a$i;->c:Ljava/util/Map;

    .line 20
    .line 21
    new-instance v1, Lbb/a$i$a;

    .line 22
    .line 23
    iget-object v2, p0, Lbb/a$i;->d:Ltd/v;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Lbb/a$i$a;-><init>(Ltd/v;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "progress"

    .line 29
    .line 30
    invoke-virtual {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
