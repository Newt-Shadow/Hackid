.class final Lio/sentry/flutter/SentryFlutter$updateOptions$24;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutter;->updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
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

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$24;->$sdkVersion:Lkotlin/jvm/internal/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$24;->invoke(Ljava/util/Map;)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "flutterSdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$24;->$sdkVersion:Lkotlin/jvm/internal/c0;

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutter$updateOptions$24$1;-><init>(Lkotlin/jvm/internal/c0;)V

    const-string v1, "integrations"

    invoke-static {p1, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 3
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$24$2;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$24;->$sdkVersion:Lkotlin/jvm/internal/c0;

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutter$updateOptions$24$2;-><init>(Lkotlin/jvm/internal/c0;)V

    const-string v1, "packages"

    invoke-static {p1, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    return-void
.end method
