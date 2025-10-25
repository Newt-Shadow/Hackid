.class final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;
.super Lkotlin/coroutines/jvm/internal/k;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->setEncodedStringList(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPigeonOptions;)V
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
    c = "io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin$setEncodedStringList$1"
    f = "SharedPreferencesPlugin.kt"
    l = {
        0x75
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $value:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lad/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lad/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$value:Ljava/lang/String;

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
    new-instance p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$key:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$value:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;-><init>(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lad/e;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ltd/l0;

    check-cast p2, Lad/e;

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->invoke(Ltd/l0;Lad/e;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->create(Ljava/lang/Object;Lad/e;)Lad/e;

    move-result-object p1

    check-cast p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;

    sget-object p2, Lxc/t;->a:Lxc/t;

    invoke-virtual {p1, p2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->label:I

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
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 28
    .line 29
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$key:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->$value:Ljava/lang/String;

    .line 32
    .line 33
    iput v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$setEncodedStringList$1;->label:I

    .line 34
    .line 35
    invoke-static {p1, v1, v3, p0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->access$dataStoreSetString(Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;Ljava/lang/String;Ljava/lang/String;Lad/e;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 43
    .line 44
    return-object p1
.end method
