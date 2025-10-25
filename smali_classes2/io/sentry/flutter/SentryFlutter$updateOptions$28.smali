.class final Lio/sentry/flutter/SentryFlutter$updateOptions$28;
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
.field final synthetic $data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $options:Lio/sentry/android/core/SentryAndroidOptions;

.field final synthetic this$0:Lio/sentry/flutter/SentryFlutter;


# direct methods
.method constructor <init>(Lio/sentry/flutter/SentryFlutter;Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/flutter/SentryFlutter;",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->this$0:Lio/sentry/flutter/SentryFlutter;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p3, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->$data:Ljava/util/Map;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->invoke(Ljava/util/Map;)V

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

    const-string v0, "replayArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->this$0:Lio/sentry/flutter/SentryFlutter;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1, p1}, Lio/sentry/flutter/SentryFlutter;->access$updateReplayOptions(Lio/sentry/flutter/SentryFlutter;Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->$data:Ljava/util/Map;

    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$28$1;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$28;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutter$updateOptions$28$1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    const-string v1, "sdk"

    invoke-static {p1, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    return-void
.end method
