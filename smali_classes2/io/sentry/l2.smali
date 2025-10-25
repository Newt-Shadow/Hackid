.class public interface abstract Lio/sentry/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public static I0(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/util/Date;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Lio/sentry/j;->e(Ljava/lang/String;)Ljava/util/Date;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    :try_start_1
    invoke-static {p0}, Lio/sentry/j;->f(Ljava/lang/String;)Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    return-object p0

    .line 15
    :catch_1
    move-exception p0

    .line 16
    sget-object v1, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 17
    .line 18
    const-string v2, "Error when deserializing millis timestamp format."

    .line 19
    .line 20
    invoke-interface {p1, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public abstract B0()Ljava/lang/Object;
.end method

.method public abstract C()Ljava/lang/String;
.end method

.method public abstract E0()J
.end method

.method public abstract G()V
.end method

.method public abstract J()Ljava/lang/Integer;
.end method

.method public abstract L(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/util/Map;
.end method

.method public abstract M()Ljava/lang/Long;
.end method

.method public abstract M0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/util/List;
.end method

.method public abstract Q(Lio/sentry/ILogger;)Ljava/util/TimeZone;
.end method

.method public abstract R()F
.end method

.method public abstract S()D
.end method

.method public abstract T()Ljava/lang/String;
.end method

.method public abstract Z(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/util/Map;
.end method

.method public abstract b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V
.end method

.method public abstract e0()Ljava/lang/Double;
.end method

.method public abstract f0()Ljava/lang/String;
.end method

.method public abstract i0(Lio/sentry/ILogger;)Ljava/util/Date;
.end method

.method public abstract j0()I
.end method

.method public abstract m0()Ljava/lang/Boolean;
.end method

.method public abstract p(Z)V
.end method

.method public abstract peek()Lio/sentry/vendor/gson/stream/b;
.end method

.method public abstract r()V
.end method

.method public abstract r0()Ljava/lang/Float;
.end method

.method public abstract t()V
.end method

.method public abstract u0(Lio/sentry/ILogger;Lio/sentry/g1;)Ljava/lang/Object;
.end method
