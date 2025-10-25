.class final Lio/sentry/flutter/SentryFlutter$updateOptions$11;
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
.field final synthetic $options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

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

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->invoke(Z)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    .line 3
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    .line 4
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 5
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 6
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p1}, Lio/sentry/s5;->setEnableUserInteractionBreadcrumbs(Z)V

    return-void
.end method
