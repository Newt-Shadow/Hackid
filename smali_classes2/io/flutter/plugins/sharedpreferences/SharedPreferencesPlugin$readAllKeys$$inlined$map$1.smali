.class public final Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;->readAllKeys(Lad/e;)Ljava/lang/Object;
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
.field final synthetic $this_unsafeTransform$inlined:Lwd/d;


# direct methods
.method public constructor <init>(Lwd/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1;->$this_unsafeTransform$inlined:Lwd/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1;->$this_unsafeTransform$inlined:Lwd/d;

    .line 2
    .line 3
    new-instance v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin$readAllKeys$$inlined$map$1$2;-><init>(Lwd/e;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, p2}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 20
    .line 21
    return-object p1
.end method
