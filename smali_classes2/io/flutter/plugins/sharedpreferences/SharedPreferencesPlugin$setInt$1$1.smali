.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setInt$1$1"
    f = "SharedPreferencesPlugin.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $intKey:Lo0/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo0/f$a;"
        }
    .end annotation
.end field

.field final synthetic $value:J

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lo0/f$a;JLad/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo0/f$a;",
            "J",
            "Lad/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$intKey:Lo0/f$a;

    iput-wide p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$value:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/k;-><init>(ILad/e;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lad/e;)Lad/e;
    .locals 4
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
    new-instance v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$intKey:Lo0/f$a;

    iget-wide v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$value:J

    invoke-direct {v0, v1, v2, v3, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;-><init>(Lo0/f$a;JLad/e;)V

    iput-object p1, v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lo0/c;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->invoke(Lo0/c;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lo0/c;Lad/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo0/c;",
            "Lad/e;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->L$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lo0/c;

    .line 14
    .line 15
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$intKey:Lo0/f$a;

    .line 16
    .line 17
    iget-wide v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setInt$1$1;->$value:J

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/b;->d(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v0, v1}, Lo0/c;->j(Lo0/f$a;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 32
    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
