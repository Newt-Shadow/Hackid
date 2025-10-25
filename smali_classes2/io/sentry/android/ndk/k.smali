.class abstract Lio/sentry/android/ndk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lio/sentry/protocol/p;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "maven:io.sentry:sentry-android-ndk"

    .line 5
    .line 6
    const-string v1, "7.22.4"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
