.class final Lio/sentry/flutter/SentryFlutter$updateOptions$21;
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
.field final synthetic this$0:Lio/sentry/flutter/SentryFlutter;


# direct methods
.method constructor <init>(Lio/sentry/flutter/SentryFlutter;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$21;->this$0:Lio/sentry/flutter/SentryFlutter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$21;->invoke(Z)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$21;->this$0:Lio/sentry/flutter/SentryFlutter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lio/sentry/flutter/SentryFlutter;->setAutoPerformanceTracingEnabled(Z)V

    :cond_0
    return-void
.end method
