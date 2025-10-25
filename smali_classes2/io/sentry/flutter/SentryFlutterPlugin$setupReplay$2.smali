.class final Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutterPlugin;->setupReplay(Lio/sentry/android/core/SentryAndroidOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lid/a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/flutter/SentryFlutterPlugin;


# direct methods
.method constructor <init>(Lio/sentry/flutter/SentryFlutterPlugin;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/sentry/android/replay/f;
    .locals 4

    .line 2
    new-instance v0, Lio/sentry/flutter/SentryFlutterReplayRecorder;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {v1}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getChannel$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/flutter/plugin/common/MethodChannel;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "channel"

    invoke-static {v1}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {v3}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplay$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/ReplayIntegration;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "replay"

    invoke-static {v3}, Lkotlin/jvm/internal/m;->s(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-direct {v0, v1, v2}, Lio/sentry/flutter/SentryFlutterReplayRecorder;-><init>(Lio/flutter/plugin/common/MethodChannel;Lio/sentry/android/replay/ReplayIntegration;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$2;->invoke()Lio/sentry/android/replay/f;

    move-result-object v0

    return-object v0
.end method
