.class final Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


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
        "Lid/l;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/flutter/SentryFlutterPlugin;


# direct methods
.method constructor <init>(Lio/sentry/flutter/SentryFlutterPlugin;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Lio/sentry/android/replay/u;
    .locals 3

    .line 2
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {p1}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/android/replay/u;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {v0}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/replay/u;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {v1}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/replay/u;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {v2}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/replay/u;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    .line 6
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Replay configuration requested. Returning: %dx%d at %d FPS, %d BPS"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(this, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Sentry"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-static {p1}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getReplayConfig$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/android/replay/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$setupReplay$3;->invoke(Z)Lio/sentry/android/replay/u;

    move-result-object p1

    return-object p1
.end method
