.class final Ljp/espresso3389/content_resolver/a$c;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/espresso3389/content_resolver/a;->l(Ljava/lang/String;Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
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

.field final synthetic e:Ltd/v;


# direct methods
.method constructor <init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Ltd/v;Lad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp/espresso3389/content_resolver/a$c;->b:Ljp/espresso3389/content_resolver/a;

    iput-object p2, p0, Ljp/espresso3389/content_resolver/a$c;->c:Ljava/lang/String;

    iput-object p3, p0, Ljp/espresso3389/content_resolver/a$c;->d:Ljava/lang/Object;

    iput-object p4, p0, Ljp/espresso3389/content_resolver/a$c;->e:Ltd/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 6

    .line 1
    new-instance p1, Ljp/espresso3389/content_resolver/a$c;

    iget-object v1, p0, Ljp/espresso3389/content_resolver/a$c;->b:Ljp/espresso3389/content_resolver/a;

    iget-object v2, p0, Ljp/espresso3389/content_resolver/a$c;->c:Ljava/lang/String;

    iget-object v3, p0, Ljp/espresso3389/content_resolver/a$c;->d:Ljava/lang/Object;

    iget-object v4, p0, Ljp/espresso3389/content_resolver/a$c;->e:Ltd/v;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ljp/espresso3389/content_resolver/a$c;-><init>(Ljp/espresso3389/content_resolver/a;Ljava/lang/String;Ljava/lang/Object;Ltd/v;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$c;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljp/espresso3389/content_resolver/a$c;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Ljp/espresso3389/content_resolver/a$c;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Ljp/espresso3389/content_resolver/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Ljp/espresso3389/content_resolver/a$c;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Ljp/espresso3389/content_resolver/a$c;->b:Ljp/espresso3389/content_resolver/a;

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
    iget-object v0, p0, Ljp/espresso3389/content_resolver/a$c;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Ljp/espresso3389/content_resolver/a$c;->d:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v2, Ljp/espresso3389/content_resolver/a$c$a;

    .line 30
    .line 31
    iget-object v3, p0, Ljp/espresso3389/content_resolver/a$c;->e:Ltd/v;

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljp/espresso3389/content_resolver/a$c$a;-><init>(Ltd/v;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
