.class public abstract synthetic Lgb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a()Ljava/time/Clock;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v0

    return-object v0
.end method
