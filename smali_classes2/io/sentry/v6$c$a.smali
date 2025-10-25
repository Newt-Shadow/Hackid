.class public final Lio/sentry/v6$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/v6$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/sentry/l2;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/v6$c$a;->b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/v6$c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lio/sentry/l2;Lio/sentry/ILogger;)Lio/sentry/v6$c;
    .locals 6

    .line 1
    invoke-interface {p1}, Lio/sentry/l2;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move-object v1, v0

    .line 6
    move-object v2, v1

    .line 7
    move-object v3, v2

    .line 8
    :goto_0
    invoke-interface {p1}, Lio/sentry/l2;->peek()Lio/sentry/vendor/gson/stream/b;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    sget-object v5, Lio/sentry/vendor/gson/stream/b;->NAME:Lio/sentry/vendor/gson/stream/b;

    .line 13
    .line 14
    if-ne v4, v5, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Lio/sentry/l2;->f0()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    const-string v5, "id"

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_2

    .line 30
    .line 31
    const-string v5, "segment"

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-interface {p1, p2, v3, v4}, Lio/sentry/l2;->b0(Lio/sentry/ILogger;Ljava/util/Map;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-interface {p1}, Lio/sentry/l2;->T()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    new-instance p2, Lio/sentry/v6$c;

    .line 61
    .line 62
    invoke-direct {p2, v1, v2, v0}, Lio/sentry/v6$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/sentry/v6$a;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3}, Lio/sentry/v6$c;->c(Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lio/sentry/l2;->r()V

    .line 69
    .line 70
    .line 71
    return-object p2
.end method
