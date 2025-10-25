.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->getString(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/k;",
        "Lid/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$getString$1"
    f = "SharedPreferencesPlugin.kt"
    l = {
        0xc9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $value:Lkotlin/jvm/internal/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/c0;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/jvm/internal/c0;Lad/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;",
            "Lkotlin/jvm/internal/c0;",
            "Lad/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$key:Ljava/lang/String;

    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$value:Lkotlin/jvm/internal/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lad/e;",
            ")",
            "Lad/e;"
        }
    .end annotation

    .line 1
    new-instance p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$key:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$value:Lkotlin/jvm/internal/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Lkotlin/jvm/internal/c0;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltd/l0;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlin/jvm/internal/c0;

    .line 15
    .line 16
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$key:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1}, Lo0/h;->g(Ljava/lang/String;)Lo0/f$a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 38
    .line 39
    invoke-static {v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->access$getContext$p(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string v1, "context"

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    :cond_2
    invoke-static {v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPluginKt;->getSharedPreferencesDataStore(Landroid/content/Context;)Lj0/i;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lj0/i;->getData()Lwd/d;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v3, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1;

    .line 60
    .line 61
    invoke-direct {v3, v1, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1$invokeSuspend$$inlined$map$1;-><init>(Lwd/d;Lo0/f$a;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->$value:Lkotlin/jvm/internal/c0;

    .line 65
    .line 66
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    iput v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getString$1;->label:I

    .line 69
    .line 70
    invoke-static {v3, p0}, Lwd/f;->n(Lwd/d;Lad/e;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-ne v1, v0, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    move-object v0, p1

    .line 78
    move-object p1, v1

    .line 79
    :goto_0
    iput-object p1, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    .line 80
    .line 81
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 82
    .line 83
    return-object p1
.end method
