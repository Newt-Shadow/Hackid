.class final Ljp/espresso3389/content_resolver/a$a;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/espresso3389/content_resolver/a;->j(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljp/espresso3389/content_resolver/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/espresso3389/content_resolver/a$a;->b:Ljp/espresso3389/content_resolver/a;

    iput-object p2, p0, Ljp/espresso3389/content_resolver/a$a;->c:Ljava/lang/String;

    iput-object p3, p0, Ljp/espresso3389/content_resolver/a$a;->d:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3

    .line 1
    new-instance p1, Ljp/espresso3389/content_resolver/a$a;

    iget-object v0, p0, Ljp/espresso3389/content_resolver/a$a;->b:Ljp/espresso3389/content_resolver/a;

    iget-object v1, p0, Ljp/espresso3389/content_resolver/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Ljp/espresso3389/content_resolver/a$a;->d:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v2, p2}, Ljp/espresso3389/content_resolver/a$a;-><init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$a;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$a;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Ljp/espresso3389/content_resolver/a$a;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Ljp/espresso3389/content_resolver/a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Ljp/espresso3389/content_resolver/a$a;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ljp/espresso3389/content_resolver/a$a;->b:Ljp/espresso3389/content_resolver/a;

    .line 12
    .line 13
    invoke-static {p1}, Ljp/espresso3389/content_resolver/a;->a(Ljp/espresso3389/content_resolver/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-string p1, "channel"

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    :cond_0
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a$a;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Ljp/espresso3389/content_resolver/a$a;->d:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
