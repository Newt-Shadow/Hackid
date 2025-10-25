.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwd/d;"
    }
.end annotation


# instance fields
.field final synthetic $preferencesKey$inlined:Lo0/f$a;

.field final synthetic $this_unsafeTransform$inlined:Lwd/d;

.field final synthetic this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;


# direct methods
.method public constructor <init>(Lwd/d;Lo0/f$a;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->$this_unsafeTransform$inlined:Lwd/d;

    .line 2
    .line 3
    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->$preferencesKey$inlined:Lo0/f$a;

    .line 4
    .line 5
    iput-object p3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->$this_unsafeTransform$inlined:Lwd/d;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->$preferencesKey$inlined:Lo0/f$a;

    .line 6
    .line 7
    iget-object v3, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1;->this$0:Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    .line 8
    .line 9
    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$getDouble$1$invokeSuspend$$inlined$map$1$2;-><init>(Lwd/e;Lo0/f$a;Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p2}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-ne p1, p2, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 24
    .line 25
    return-object p1
.end method
