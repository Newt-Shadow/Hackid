.class final Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutter$updateOptions$24;->invoke(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lid/l;"
    }
.end annotation


# instance fields
.field final synthetic $sdkVersion:Lkotlin/jvm/internal/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/c0;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/c0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;->$sdkVersion:Lkotlin/jvm/internal/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;->$sdkVersion:Lkotlin/jvm/internal/c0;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lkotlin/jvm/internal/c0;->a:Ljava/lang/Object;

    check-cast v2, Lio/sentry/protocol/p;

    invoke-virtual {v2, v1}, Lio/sentry/protocol/p;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
